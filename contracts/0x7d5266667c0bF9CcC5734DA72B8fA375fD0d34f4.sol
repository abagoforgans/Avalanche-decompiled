contract main {




// =====================  Runtime code  =====================


#
#  - sub_63c03173(?)
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

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
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
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xdd62ed3e with:
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
            _101 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * s) + cd[36] + 36)])
            mem[mem[64] + 68] = -1
            _102 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_102 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_102 + 36 len 28]
            mem[64] = _101 + 164
            mem[_101 + 100] = 32
            mem[_101 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])):
                revert with 0, 'Address: call to non-contract'
            _108 = mem[_102]
            u = _102 + 32
            v = mem[64]
            t = mem[_102]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_102])] = mem[_102 + floor32(mem[_102]) + -(mem[_102] % 32) + 64 len mem[_102] % 32] or Mask(8 * -(mem[_102] % 32) + 32, -(8 * -(mem[_102] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_102])])
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _108 + _101 + -mem[64] + 160]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    s = s + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _151 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_101 + 100]
                _153 = mem[_101 + 100]
                idx = 0
                while idx < _153:
                    mem[idx + _151 + 68] = mem[idx + _101 + 132]
                    idx = idx + 32
                    continue 
                if not _153 % 32:
                    revert with memory
                      from mem[64]
                       len _153 + _151 + -mem[64] + 68
                mem[floor32(_153) + _151 + 68] = mem[floor32(_153) + _151 + -(_153 % 32) + 100 len _153 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_153) + _151 + -mem[64] + 100
            _148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_148] = return_data.size
            mem[_148 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_148 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                s = s + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _155 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_101 + 100]
            _157 = mem[_101 + 100]
            idx = 0
            while idx < _157:
                mem[idx + _155 + 68] = mem[idx + _101 + 132]
                idx = idx + 32
                continue 
            if not _157 % 32:
                revert with memory
                  from mem[64]
                   len _157 + _155 + -mem[64] + 68
            mem[floor32(_157) + _155 + 68] = mem[floor32(_157) + _155 + -(_157 % 32) + 100 len _157 % 32]
            revert with memory
              from mem[64]
               len floor32(_157) + _155 + -mem[64] + 100
        idx = idx + 1
        continue 
}

function sub_81279c7e(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'wrong sender'
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length >= 192
    _5 = mem[128]
    _6 = mem[160]
    _7 = mem[192]
    _8 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 64 <= arg2.length + 32
    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= arg2.length + 32
    mem[ceil32(arg2.length) + 128] = mem[mem[224] + 128]
    _11 = mem[_8 + 128]
    mem[ceil32(arg2.length) + 160 len floor32(mem[_8 + 128])] = mem[_8 + 160 len floor32(mem[_8 + 128])]
    _677 = mem[256]
    if not mem[288]:
        mem[(32 * _11) + ceil32(arg2.length) + 196] = address(_7)
        require ext_code.size(address(_6))
        staticcall address(_6).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg2.length) + 164] = address(_5)
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            mem[(32 * _11) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg2.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg2.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg2.length) + 160 len 28]
            mem[(32 * _11) + ceil32(arg2.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg2.length) + 160 len 28]) << 256, mem[(32 * _11) + ceil32(arg2.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg2.length:
                    require arg2.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg2.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg2.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg2.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_6))
            staticcall address(_6).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg2.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg2.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg2.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg2.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg2.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg2.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg2.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg2.length:
                    require arg2.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg2.length) + 434 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg2.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg2.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg2.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 160], mem[(32 * _11) + ceil32(arg2.length) + 424 len 28], mem[(32 * _11) + ceil32(arg2.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg2.length:
                            revert with arg2[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg2.length:
                        require arg2.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg2.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg2.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg2.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg2.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg2.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 435 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg2.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg2.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 160], mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg2.length:
                            revert with arg2[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg2.length:
                        require arg2.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        require ext_code.size(address(_5))
        staticcall address(_5).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        mem[(32 * _11) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require 0 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            _693 = mem[ceil32(arg2.length) + 160]
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg2.length) + 164] = uint8(ext_call.return_data[0])
            mem[(32 * _11) + ceil32(arg2.length) + 196] = uint8(ext_call.return_data[0])
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * _693 / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg2.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg2.length) + 192 len 28]
            mem[(32 * _11) + ceil32(arg2.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg2.length) + 192 len 28]) << 256, mem[(32 * _11) + ceil32(arg2.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg2.length:
                    require arg2.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg2.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg2.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg2.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_5))
            staticcall address(_5).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg2.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg2.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg2.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg2.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg2.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg2.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg2.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg2.length:
                    require arg2.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg2.length) + 434 len 22]
                require 0 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg2.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg2.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg2.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 192], mem[(32 * _11) + ceil32(arg2.length) + 424 len 28], mem[(32 * _11) + ceil32(arg2.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg2.length:
                            revert with arg2[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg2.length:
                        require arg2.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg2.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg2.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg2.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg2.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg2.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 435 len 22]
                require 0 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg2.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg2.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 192], mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg2.length:
                            revert with arg2[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg2.length:
                        require arg2.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg2.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'wrong sender'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 192
    _5 = mem[128]
    _6 = mem[160]
    _7 = mem[192]
    _8 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 64 <= arg4.length + 32
    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[224] + 128]
    _11 = mem[_8 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_8 + 128])] = mem[_8 + 160 len floor32(mem[_8 + 128])]
    _677 = mem[256]
    if not mem[288]:
        mem[(32 * _11) + ceil32(arg4.length) + 196] = address(_7)
        require ext_code.size(address(_6))
        staticcall address(_6).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = address(_5)
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 160 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 160 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_6))
            staticcall address(_6).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        require ext_code.size(address(_5))
        staticcall address(_5).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            _693 = mem[ceil32(arg4.length) + 160]
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = uint8(ext_call.return_data[0])
            mem[(32 * _11) + ceil32(arg4.length) + 196] = uint8(ext_call.return_data[0])
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * _693 / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 192 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 192 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_5))
            staticcall address(_5).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'wrong sender'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 192
    _5 = mem[128]
    _6 = mem[160]
    _7 = mem[192]
    _8 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 64 <= arg4.length + 32
    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[224] + 128]
    _11 = mem[_8 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_8 + 128])] = mem[_8 + 160 len floor32(mem[_8 + 128])]
    _677 = mem[256]
    if not mem[288]:
        mem[(32 * _11) + ceil32(arg4.length) + 196] = address(_7)
        require ext_code.size(address(_6))
        staticcall address(_6).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = address(_5)
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 160 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 160 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_6))
            staticcall address(_6).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        require ext_code.size(address(_5))
        staticcall address(_5).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            _693 = mem[ceil32(arg4.length) + 160]
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = uint8(ext_call.return_data[0])
            mem[(32 * _11) + ceil32(arg4.length) + 196] = uint8(ext_call.return_data[0])
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * _693 / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 192 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 192 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_5))
            staticcall address(_5).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'wrong sender'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 192
    _5 = mem[128]
    _6 = mem[160]
    _7 = mem[192]
    _8 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 64 <= arg4.length + 32
    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[224] + 128]
    _11 = mem[_8 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_8 + 128])] = mem[_8 + 160 len floor32(mem[_8 + 128])]
    _677 = mem[256]
    if not mem[288]:
        mem[(32 * _11) + ceil32(arg4.length) + 196] = address(_7)
        require ext_code.size(address(_6))
        staticcall address(_6).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = address(_5)
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 160 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 160 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_6))
            staticcall address(_6).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        require ext_code.size(address(_5))
        staticcall address(_5).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            _693 = mem[ceil32(arg4.length) + 160]
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = uint8(ext_call.return_data[0])
            mem[(32 * _11) + ceil32(arg4.length) + 196] = uint8(ext_call.return_data[0])
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * _693 / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 192 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 192 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_5))
            staticcall address(_5).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'wrong sender'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 192
    _5 = mem[128]
    _6 = mem[160]
    _7 = mem[192]
    _8 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 64 <= arg4.length + 32
    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[224] + 128]
    _11 = mem[_8 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_8 + 128])] = mem[_8 + 160 len floor32(mem[_8 + 128])]
    _677 = mem[256]
    if not mem[288]:
        mem[(32 * _11) + ceil32(arg4.length) + 196] = address(_7)
        require ext_code.size(address(_6))
        staticcall address(_6).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = address(_5)
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 160 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 160 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_6))
            staticcall address(_6).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        require ext_code.size(address(_5))
        staticcall address(_5).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            _693 = mem[ceil32(arg4.length) + 160]
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = uint8(ext_call.return_data[0])
            mem[(32 * _11) + ceil32(arg4.length) + 196] = uint8(ext_call.return_data[0])
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * _693 / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 192 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 192 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_5))
            staticcall address(_5).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'wrong sender'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 192
    _5 = mem[128]
    _6 = mem[160]
    _7 = mem[192]
    _8 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 64 <= arg4.length + 32
    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[224] + 128]
    _11 = mem[_8 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_8 + 128])] = mem[_8 + 160 len floor32(mem[_8 + 128])]
    _677 = mem[256]
    if not mem[288]:
        mem[(32 * _11) + ceil32(arg4.length) + 196] = address(_7)
        require ext_code.size(address(_6))
        staticcall address(_6).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = address(_5)
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 160 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 160 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_6))
            staticcall address(_6).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        require ext_code.size(address(_5))
        staticcall address(_5).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            _693 = mem[ceil32(arg4.length) + 160]
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = uint8(ext_call.return_data[0])
            mem[(32 * _11) + ceil32(arg4.length) + 196] = uint8(ext_call.return_data[0])
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * _693 / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 192 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 192 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_5))
            staticcall address(_5).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'wrong sender'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 192
    _5 = mem[128]
    _6 = mem[160]
    _7 = mem[192]
    _8 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 64 <= arg4.length + 32
    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[224] + 128]
    _11 = mem[_8 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_8 + 128])] = mem[_8 + 160 len floor32(mem[_8 + 128])]
    _677 = mem[256]
    if not mem[288]:
        mem[(32 * _11) + ceil32(arg4.length) + 196] = address(_7)
        require ext_code.size(address(_6))
        staticcall address(_6).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = address(_5)
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 160 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 160 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_6))
            staticcall address(_6).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[ceil32(arg4.length) + 192], 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 160 len 28]
                call address(_5) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 160], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        require ext_code.size(address(_5))
        staticcall address(_5).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_7)
        mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            _693 = mem[ceil32(arg4.length) + 160]
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_5)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_7))
            staticcall address(_7).getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args address(_6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _11) + ceil32(arg4.length) + 164] = uint8(ext_call.return_data[0])
            mem[(32 * _11) + ceil32(arg4.length) + 196] = uint8(ext_call.return_data[0])
            require ext_code.size(address(_7))
            call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * _693 / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _11) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not ext_code.size(address(_6)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = unknown_0xa9059cbb(?????), address(_677) << 64, 0, mem[ceil32(arg4.length) + 192 len 28]
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_6) with:
                 gas gas_remaining wei
                args Mask(480, -256, mem[ceil32(arg4.length) + 192 len 28]) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(address(_5))
            staticcall address(_5).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _11) + ceil32(arg4.length) + 282 len 10]
            mem[(32 * _11) + ceil32(arg4.length) + 160] = 68
            mem[(32 * _11) + ceil32(arg4.length) + 196 len 28] = address(_7) << 64
            mem[(32 * _11) + ceil32(arg4.length) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.size(address(_5)):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _11) + ceil32(arg4.length) + 324 len 64] = approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _11) + ceil32(arg4.length) + 388 len 0] = 0
            call address(_5) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(_7) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _11) + ceil32(arg4.length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + 434 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + 488 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + 424 len 28], mem[(32 * _11) + ceil32(arg4.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + 598 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
            else:
                mem[(32 * _11) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _11) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 435 len 22]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                staticcall address(_7).getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args address(_6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_7))
                call address(_7).swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10001 * mem[ceil32(arg4.length) + 160] / 10000, 0, 0x8000000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                if not ext_code.size(address(_6)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, address(_677), mem[ceil32(arg4.length) + 192 len 28]
                call address(_6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 192], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 425 len 28], mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 599 len 22]
                else:
                    mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _11) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _11) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function sub_8dce36a3(?) {
    require calldata.size - 4 >= 256
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'only operator'
    mem[96] = 3
    mem[128 len 96] = call.data[calldata.size len 96]
    mem[128] = arg2
    mem[224] = 2
    if not arg8:
        mem[288] = arg4
        mem[256] = arg3
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = arg2
        mem[356] = 64
        mem[388] = 2
        mem[420 len 0] = None
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[420 len 64])
        if not ext_call.success:
            if not arg5:
                require ext_code.size(arg6)
                staticcall arg6.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[576 len 0] = None
                mem[836 len 320] = address(arg3), address(arg4), address(arg7), Array(len=3, data=mem[576 len 96]), address(ext_call.return_data[0]), arg8
                require ext_code.size(address(ext_call.return_data[0]))
                if not arg8:
                    if arg3 >= arg4:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args call.data[calldata.size + 32], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, call.data[calldata.size + 32], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                else:
                    if arg3 >= arg4:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, call.data[calldata.size + 64], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args call.data[calldata.size + 64], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg3)
                staticcall arg3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(arg3):
                    revert with 0, 'Address: call to non-contract'
                mem[836 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                call arg3 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
            else:
                if call.data[calldata.size + 64] < arg5 + arg2:
                    revert with 0, 'low return'
                require ext_code.size(arg6)
                staticcall arg6.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[576 len 0] = None
                mem[836 len 320] = address(arg3), address(arg4), address(arg7), Array(len=3, data=mem[576 len 96]), address(ext_call.return_data[0]), arg8
                require ext_code.size(address(ext_call.return_data[0]))
                if not arg8:
                    if arg3 >= arg4:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args call.data[calldata.size + 32], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(arg3):
                            revert with 0, 'Address: call to non-contract'
                        mem[836 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                        call arg3 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, unknown_0xa9059cbb(?????)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, call.data[calldata.size + 32], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(arg3):
                            revert with 0, 'Address: call to non-contract'
                        mem[836 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                        call arg3 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
                else:
                    if arg3 >= arg4:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, call.data[calldata.size + 64], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args call.data[calldata.size + 64], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call arg3 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
            if not return_data.size:
                require not ext_call.success
                revert with (Mask(24, 232, arg2) >> 232)
            mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[868]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 947 len 22]
        else:
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _5017 = mem[320 len 4], Mask(224, 32, arg2) >> 32
            require mem[320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320]
            _5026 = mem[_5017 + 320]
            mem[ceil32(return_data.size) + 352 len floor32(mem[_5017 + 320])] = mem[_5017 + 352 len floor32(mem[_5017 + 320])]
            require mem[ceil32(return_data.size) + 320] - 1 < mem[ceil32(return_data.size) + 320]
            mem[160] = mem[(32 * mem[ceil32(return_data.size) + 320] - 1) + ceil32(return_data.size) + 352]
            require ext_code.size(arg7)
            staticcall arg7.getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg7)
            staticcall arg7.getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg7)
            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * mem[ceil32(return_data.size) + 320] - 1) + ceil32(return_data.size) + 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg2:
                if not arg5:
                    require ext_code.size(arg6)
                    staticcall arg6.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _5026) + ceil32(return_data.size) + 608 len 0] = None
                    mem[(32 * _5026) + ceil32(return_data.size) + 868 len 320] = address(arg3), address(arg4), address(arg7), Array(len=3, data=mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]), address(ext_call.return_data[0]), arg8
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not arg8:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[160], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _5026) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, mem[160], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _5026) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, unknown_0xa9059cbb(?????)
                    else:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _5026) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, unknown_0xa9059cbb(?????)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _5026) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
                else:
                    if ext_call.return_data[0] < arg5 + arg2:
                        revert with 0, 'low return'
                    require ext_code.size(arg6)
                    staticcall arg6.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _5026) + ceil32(return_data.size) + 608 len 0] = None
                    mem[(32 * _5026) + ceil32(return_data.size) + 868 len 320] = address(arg3), address(arg4), address(arg7), Array(len=3, data=mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]), address(ext_call.return_data[0]), arg8
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not arg8:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[160], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, mem[160], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                    else:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _5026) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call arg3 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
            else:
                if not arg5:
                    require ext_code.size(arg6)
                    staticcall arg6.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _5026) + ceil32(return_data.size) + 608 len 0] = None
                    mem[(32 * _5026) + ceil32(return_data.size) + 868 len 320] = address(arg3), address(arg4), address(arg7), Array(len=3, data=mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]), address(ext_call.return_data[0]), arg8
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not arg8:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[160], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, mem[160], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                    else:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _5026) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call arg3 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
                else:
                    if ext_call.return_data[0] < arg5 + arg2:
                        revert with 0, 'low return'
                    require ext_code.size(arg6)
                    staticcall arg6.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _5026) + ceil32(return_data.size) + 608 len 0] = None
                    mem[(32 * _5026) + ceil32(return_data.size) + 868 len 320] = address(arg3), address(arg4), address(arg7), Array(len=3, data=mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]), address(ext_call.return_data[0]), arg8
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not arg8:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[160], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, mem[160], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(arg3):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _5026) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                        call arg3 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
                    else:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _5026) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5026) + ceil32(return_data.size) + 608 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _5026) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, unknown_0xa9059cbb(?????)
            if not return_data.size:
                require not ext_call.success
                revert with (Mask(24, 232, arg2) >> 232)
            mem[(32 * _5026) + ceil32(return_data.size) + 900 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _5026) + ceil32(return_data.size) + 900]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _5026) + ceil32(return_data.size) + ceil32(return_data.size) + 979 len 22]
    else:
        require ext_code.size(arg7)
        staticcall arg7.getTokenIndex(address rg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg7)
        staticcall arg7.getTokenIndex(address rg1) with:
                gas gas_remaining wei
               args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg7)
        staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[160] = ext_call.return_data[0]
        mem[288] = arg3
        mem[256] = arg4
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = ext_call.return_data[0]
        mem[356] = 64
        mem[388] = 2
        mem[420 len 0] = None
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[420 len 64])
        if not ext_call.success:
            if not arg5:
                require ext_code.size(arg6)
                staticcall arg6.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[576 len 0] = None
                mem[836 len 320] = address(arg3), address(arg4), address(arg7), Array(len=3, data=mem[576 len 96]), address(ext_call.return_data[0]), arg8
                require ext_code.size(address(ext_call.return_data[0]))
                if not arg8:
                    if arg3 >= arg4:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call arg3 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
                else:
                    if arg3 >= arg4:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, call.data[calldata.size + 64], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args call.data[calldata.size + 64], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call arg3 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, unknown_0xa9059cbb(?????)
            else:
                if call.data[calldata.size + 64] < arg5 + arg2:
                    revert with 0, 'low return'
                require ext_code.size(arg6)
                staticcall arg6.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[576 len 0] = None
                mem[836 len 320] = address(arg3), address(arg4), address(arg7), Array(len=3, data=mem[576 len 96]), address(ext_call.return_data[0]), arg8
                require ext_code.size(address(ext_call.return_data[0]))
                if not arg8:
                    if arg3 >= arg4:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(arg3):
                            revert with 0, 'Address: call to non-contract'
                        mem[836 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                        call arg3 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, unknown_0xa9059cbb(?????)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(arg3):
                            revert with 0, 'Address: call to non-contract'
                        mem[836 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                        call arg3 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
                else:
                    if arg3 >= arg4:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, call.data[calldata.size + 64], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args call.data[calldata.size + 64], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[576 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call arg3 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
            if not return_data.size:
                require not ext_call.success
                revert with (Mask(24, 232, arg2) >> 232)
            mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[868]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 947 len 22]
        else:
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _5019 = mem[320 len 4], ext_call.return_data[0 len 28]
            require mem[320 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[320 len 4], ext_call.return_data[0 len 28] + 320] <= 4294967296 and mem[320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], ext_call.return_data[0 len 28] + 320]
            _5030 = mem[_5019 + 320]
            mem[ceil32(return_data.size) + 352 len floor32(mem[_5019 + 320])] = mem[_5019 + 352 len floor32(mem[_5019 + 320])]
            require mem[ceil32(return_data.size) + 320] - 1 < mem[ceil32(return_data.size) + 320]
            mem[192] = mem[(32 * mem[ceil32(return_data.size) + 320] - 1) + ceil32(return_data.size) + 352]
            if mem[(32 * mem[ceil32(return_data.size) + 320] - 1) + ceil32(return_data.size) + 352] <= arg2:
                if not arg5:
                    require ext_code.size(arg6)
                    staticcall arg6.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _5030) + ceil32(return_data.size) + 608 len 0] = None
                    mem[(32 * _5030) + ceil32(return_data.size) + 868 len 320] = address(arg3), address(arg4), address(arg7), Array(len=3, data=mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]), address(ext_call.return_data[0]), arg8
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not arg8:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _5030) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _5030) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, unknown_0xa9059cbb(?????)
                    else:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, mem[192], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _5030) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[192], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(arg3):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _5030) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            call arg3 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, unknown_0xa9059cbb(?????)
                else:
                    if mem[(32 * mem[ceil32(return_data.size) + 320] - 1) + ceil32(return_data.size) + 352] < arg5 + arg2:
                        revert with 0, 'low return'
                    require ext_code.size(arg6)
                    staticcall arg6.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _5030) + ceil32(return_data.size) + 608 len 0] = None
                    mem[(32 * _5030) + ceil32(return_data.size) + 868 len 320] = address(arg3), address(arg4), address(arg7), Array(len=3, data=mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]), address(ext_call.return_data[0]), arg8
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not arg8:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                    else:
                        if arg3 >= arg4:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, mem[192], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args mem[192], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(arg3):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _5030) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call arg3 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
            else:
                if arg5:
                    if mem[(32 * mem[ceil32(return_data.size) + 320] - 1) + ceil32(return_data.size) + 352] < arg5 + arg2:
                        revert with 0, 'low return'
                require ext_code.size(arg6)
                staticcall arg6.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _5030) + ceil32(return_data.size) + 608 len 0] = None
                mem[(32 * _5030) + ceil32(return_data.size) + 868 len 320] = address(arg3), address(arg4), address(arg7), Array(len=3, data=mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]), address(ext_call.return_data[0]), arg8
                require ext_code.size(address(ext_call.return_data[0]))
                if not arg8:
                    if arg3 >= arg4:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                else:
                    if arg3 >= arg4:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, mem[192], address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[192], 0, address(this.address), 128, 320, address(arg3), address(arg4), address(arg7), 192, address(ext_call.return_data[0]), arg8, 3, mem[(32 * _5030) + ceil32(return_data.size) + 608 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg3)
                staticcall arg3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(arg3):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _5030) + ceil32(return_data.size) + 868 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                call arg3 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, 0
            if not return_data.size:
                require not ext_call.success
                revert with (Mask(24, 232, arg2) >> 232)
            mem[(32 * _5030) + ceil32(return_data.size) + 900 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _5030) + ceil32(return_data.size) + 900]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _5030) + ceil32(return_data.size) + ceil32(return_data.size) + 979 len 22]
}

function sub_ba36d3bd(?) {
    require calldata.size - 4 >= 224
    mem[96] = 3
    mem[128 len 96] = call.data[calldata.size len 96]
    mem[128] = arg1 * arg3
    mem[224] = 2
    require ext_code.size(arg7)
    staticcall arg7.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg7)
    staticcall arg7.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg7)
    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg1 * arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[0]
    mem[288] = arg5
    mem[256] = arg6
    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[324] = ext_call.return_data[0]
    mem[356] = 64
    mem[388] = 2
    mem[420 len 0] = None
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[420 len 64])
    if not ext_call.success:
        mem[320] = 3
        mem[352] = arg1 * arg3
        mem[448] = 2
        mem[512] = arg6
        mem[480] = arg5
        mem[544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[548] = arg1 * arg3
        mem[580] = 64
        mem[612] = 2
        mem[644 len 0] = None
        require ext_code.size(arg4)
        staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg1 * arg3, Array(len=2, data=mem[644 len 64])
        if not ext_call.success:
            return 0
        mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 544
        require return_data.size >= 32
        _4144 = mem[544 len 4], Mask(224, 32, arg1 * arg3) >> 32
        require mem[544 len 4], Mask(224, 32, arg1 * arg3) >> 32 <= 4294967296
        require mem[544 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 32 <= return_data.size
        require mem[mem[544 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 544] <= 4294967296 and mem[544 len 4], Mask(224, 32, arg1 * arg3) >> 32 + (32 * mem[mem[544 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 544]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 544] = mem[mem[544 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 544]
        _4150 = mem[_4144 + 544]
        mem[ceil32(return_data.size) + 576 len floor32(mem[_4144 + 544])] = mem[_4144 + 576 len floor32(mem[_4144 + 544])]
        mem[64] = (32 * _4150) + ceil32(return_data.size) + 576
        require mem[ceil32(return_data.size) + 544] - 1 < mem[ceil32(return_data.size) + 544]
        mem[384] = mem[(32 * mem[ceil32(return_data.size) + 544] - 1) + ceil32(return_data.size) + 576]
        require ext_code.size(arg7)
        staticcall arg7.getTokenIndex(address rg1) with:
                gas gas_remaining wei
               args arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg7)
        staticcall arg7.getTokenIndex(address rg1) with:
                gas gas_remaining wei
               args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _4150) + ceil32(return_data.size) + 580] = uint8(ext_call.return_data[0])
        mem[(32 * _4150) + ceil32(return_data.size) + 612] = uint8(ext_call.return_data[0])
        mem[(32 * _4150) + ceil32(return_data.size) + 644] = mem[384]
        require ext_code.size(arg7)
        staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[384]
        mem[(32 * _4150) + ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[416] = ext_call.return_data[0]
        if ext_call.return_data[0] <= arg1 * arg3:
            return 0
        if 0 <= ext_call.return_data[0] - (arg1 * arg3):
            if not ext_call.return_data[0] - (arg1 * arg3):
                return 0
            s = mem[416] - (arg1 * arg3)
            s = 0
            s = 0
            t = 0
            idx = arg1
            while idx + 1 < arg2:
                _8190 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[_8190 + 32 len 96] = call.data[calldata.size len 96]
                require 0 < mem[_8190]
                mem[_8190 + 32] = idx + arg2 / 2 * arg3
                mem[_8190 + 128] = 2
                mem[_8190 + 192] = arg6
                mem[_8190 + 160] = arg5
                mem[_8190 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_8190 + 228] = idx + arg2 / 2 * arg3
                mem[_8190 + 260] = 64
                mem[_8190 + 292] = 2
                u = 0
                while u < 64:
                    mem[u + _8190 + 324] = mem[u + _8190 + 160]
                    u = u + 32
                    continue 
                require ext_code.size(arg4)
                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args idx + arg2 / 2 * arg3, Array(len=2, data=mem[_8190 + 324 len 64])
                if not ext_call.success:
                    mem[_8190 + 224] = 3
                    mem[_8190 + 256 len 96] = call.data[calldata.size len 96]
                    mem[_8190 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[_8190 + 352] = 2
                    mem[64] = _8190 + 448
                    mem[_8190 + 416] = arg6
                    mem[_8190 + 384] = arg5
                    mem[_8190 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_8190 + 452] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[_8190 + 484] = 64
                    mem[_8190 + 516] = 2
                    u = 0
                    while u < 64:
                        mem[u + _8190 + 548] = mem[u + _8190 + 384]
                        u = u + 32
                        continue 
                    require ext_code.size(arg4)
                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[_8190 + 548 len 64])
                    if not ext_call.success:
                        if t >= 0:
                            s = 0
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    mem[_8190 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _8190 + ceil32(return_data.size) + 448
                    require return_data.size >= 32
                    _12020 = mem[_8190 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                    require mem[_8190 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                    require mem[_8190 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                    require mem[_8190 + mem[_8190 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448] <= 4294967296 and mem[_8190 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[_8190 + mem[_8190 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]) + 32 <= return_data.size
                    mem[_8190 + ceil32(return_data.size) + 448] = mem[_8190 + mem[_8190 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]
                    _12070 = mem[_8190 + _12020 + 448]
                    u = 0
                    while u < 32 * _12070:
                        mem[u + _8190 + ceil32(return_data.size) + 480] = mem[u + _8190 + _12020 + 480]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _12070) + _8190 + ceil32(return_data.size) + 480
                    require mem[_8190 + ceil32(return_data.size) + 448] - 1 < mem[_8190 + ceil32(return_data.size) + 448]
                    mem[_8190 + 288] = mem[(32 * mem[_8190 + ceil32(return_data.size) + 448] - 1) + _8190 + ceil32(return_data.size) + 480]
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _12070) + _8190 + ceil32(return_data.size) + 484] = uint8(ext_call.return_data[0])
                    mem[(32 * _12070) + _8190 + ceil32(return_data.size) + 516] = uint8(ext_call.return_data[0])
                    mem[(32 * _12070) + _8190 + ceil32(return_data.size) + 548] = mem[_8190 + 288]
                    require ext_code.size(arg7)
                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[_8190 + 288]
                    mem[(32 * _12070) + _8190 + ceil32(return_data.size) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_8190 + 320] = ext_call.return_data[0]
                    if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                        if t >= 0:
                            s = 0
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                        if t >= 0:
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = s
                        t = t
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                    s = 0
                    s = arg3 + (idx + arg2 / 2 * arg3)
                    t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                    idx = (idx + arg2 / 2) + 1
                    continue 
                mem[_8190 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _8190 + ceil32(return_data.size) + 224
                require return_data.size >= 32
                _10198 = mem[_8190 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32
                require mem[_8190 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 <= 4294967296
                require mem[_8190 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 32 <= return_data.size
                require mem[_8190 + mem[_8190 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224] <= 4294967296 and mem[_8190 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + (32 * mem[_8190 + mem[_8190 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[_8190 + ceil32(return_data.size) + 224] = mem[_8190 + mem[_8190 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]
                _10244 = mem[_8190 + _10198 + 224]
                u = 0
                while u < 32 * _10244:
                    mem[u + _8190 + ceil32(return_data.size) + 256] = mem[u + _8190 + _10198 + 256]
                    u = u + 32
                    continue 
                mem[64] = (32 * _10244) + _8190 + ceil32(return_data.size) + 256
                require mem[_8190 + ceil32(return_data.size) + 224] - 1 < mem[_8190 + ceil32(return_data.size) + 224]
                require 1 < mem[_8190]
                mem[_8190 + 64] = mem[(32 * mem[_8190 + ceil32(return_data.size) + 224] - 1) + _8190 + ceil32(return_data.size) + 256]
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[_8190]
                require ext_code.size(arg7)
                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * mem[_8190 + ceil32(return_data.size) + 224] - 1) + _8190 + ceil32(return_data.size) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < mem[_8190]
                mem[_8190 + 96] = ext_call.return_data[0]
                require 2 < mem[_8190]
                if ext_call.return_data[0] <= idx + arg2 / 2 * arg3:
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256] = 3
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 384] = 2
                    mem[64] = (32 * _10244) + _8190 + ceil32(return_data.size) + 480
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 448] = arg6
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 416] = arg5
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 516] = 64
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 548] = 2
                    u = 0
                    while u < 64:
                        mem[u + (32 * _10244) + _8190 + ceil32(return_data.size) + 580] = mem[u + (32 * _10244) + _8190 + ceil32(return_data.size) + 416]
                        u = u + 32
                        continue 
                    require ext_code.size(arg4)
                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 580 len 64])
                    if not ext_call.success:
                        if t >= 0:
                            s = 0
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 480
                    require return_data.size >= 32
                    _13654 = mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                    require mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                    require mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                    require mem[(32 * _10244) + _8190 + ceil32(return_data.size) + mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _10244) + _8190 + ceil32(return_data.size) + mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                    mem[(32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _10244) + _8190 + ceil32(return_data.size) + mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                    _13743 = mem[(32 * _10244) + _8190 + ceil32(return_data.size) + _13654 + 480]
                    u = 0
                    while u < 32 * _13743:
                        mem[u + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _10244) + _8190 + ceil32(return_data.size) + _13654 + 512]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _13743) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512
                    require mem[(32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 480]
                    require 1 < mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256]
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512]
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _13743) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 516] = arg5
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg5
                    mem[(32 * _13743) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256]
                    mem[(32 * _13743) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _13743) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                    mem[(32 * _13743) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                    mem[(32 * _13743) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 320]
                    require ext_code.size(arg7)
                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 320]
                    mem[(32 * _13743) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256]
                    mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                    require 2 < mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256]
                    if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                        if t >= 0:
                            s = 0
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    require 2 < mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256]
                    if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                        if t >= 0:
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = s
                        t = t
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                    s = 0
                    s = arg3 + (idx + arg2 / 2 * arg3)
                    t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                    idx = (idx + arg2 / 2) + 1
                    continue 
                require 2 < mem[_8190]
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256] = 3
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 384] = 2
                mem[64] = (32 * _10244) + _8190 + ceil32(return_data.size) + 480
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 448] = arg6
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 416] = arg5
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 516] = 64
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 548] = 2
                u = 0
                while u < 64:
                    mem[u + (32 * _10244) + _8190 + ceil32(return_data.size) + 580] = mem[u + (32 * _10244) + _8190 + ceil32(return_data.size) + 416]
                    u = u + 32
                    continue 
                require ext_code.size(arg4)
                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 580 len 64])
                if not ext_call.success:
                    if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                        if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                            s = 0
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        s = idx + arg2 / 2 * arg3
                        t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        idx = idx
                        continue 
                    if t >= 0:
                        s = 0
                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        s = s
                        t = t
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = 0
                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                    s = arg3 + (idx + arg2 / 2 * arg3)
                    t = 0
                    idx = (idx + arg2 / 2) + 1
                    continue 
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _13656 = mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                require mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                require mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                require mem[(32 * _10244) + _8190 + ceil32(return_data.size) + mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _10244) + _8190 + ceil32(return_data.size) + mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _10244) + _8190 + ceil32(return_data.size) + mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                _13744 = mem[(32 * _10244) + _8190 + ceil32(return_data.size) + _13656 + 480]
                u = 0
                while u < 32 * _13744:
                    mem[u + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _10244) + _8190 + ceil32(return_data.size) + _13656 + 512]
                    u = u + 32
                    continue 
                mem[64] = (32 * _13744) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512
                require mem[(32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 480]
                require 1 < mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256]
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512]
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _13744) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 516] = arg5
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg5
                mem[(32 * _13744) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256]
                mem[(32 * _13744) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _13744) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                mem[(32 * _13744) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                mem[(32 * _13744) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 320]
                require ext_code.size(arg7)
                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 320]
                mem[(32 * _13744) + (32 * _10244) + _8190 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256]
                mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                require 2 < mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256]
                if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                    if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                        if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                            s = 0
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        s = idx + arg2 / 2 * arg3
                        t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        idx = idx
                        continue 
                    if t >= 0:
                        s = 0
                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        s = s
                        t = t
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = 0
                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                    s = arg3 + (idx + arg2 / 2 * arg3)
                    t = 0
                    idx = (idx + arg2 / 2) + 1
                    continue 
                require 2 < mem[(32 * _10244) + _8190 + ceil32(return_data.size) + 256]
                if ext_call.return_data[0] >= ext_call.return_data[0] - arg3:
                    if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        s = s
                        t = t
                        idx = idx
                        continue 
                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                    s = idx + arg2 / 2 * arg3
                    t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                    idx = idx
                    continue 
                if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                    s = s
                    t = t
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                s = arg3 + (idx + arg2 / 2 * arg3)
                t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                idx = (idx + arg2 / 2) + 1
                continue 
            return t, s, 0
        if not ext_call.return_data[0] - (arg1 * arg3):
            return 0, 0, 1
        s = mem[416] - (arg1 * arg3)
        s = 0
        s = 0
        t = 0
        idx = arg1
        while idx + 1 < arg2:
            _8192 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            mem[_8192 + 32 len 96] = call.data[calldata.size len 96]
            require 0 < mem[_8192]
            mem[_8192 + 32] = idx + arg2 / 2 * arg3
            mem[_8192 + 128] = 2
            mem[64] = _8192 + 224
            require ext_code.size(arg7)
            staticcall arg7.getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg7)
            staticcall arg7.getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args arg6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg7)
            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, idx + arg2 / 2 * arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < mem[_8192]
            mem[_8192 + 64] = ext_call.return_data[0]
            mem[_8192 + 192] = arg5
            mem[_8192 + 160] = arg6
            require 1 < mem[_8192]
            mem[_8192 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_8192 + 228] = ext_call.return_data[0]
            mem[_8192 + 260] = 64
            mem[_8192 + 292] = 2
            u = 0
            while u < 64:
                mem[u + _8192 + 324] = mem[u + _8192 + 160]
                u = u + 32
                continue 
            require ext_code.size(arg4)
            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[_8192 + 324 len 64])
            if not ext_call.success:
                mem[_8192 + 224] = 3
                mem[_8192 + 256 len 96] = call.data[calldata.size len 96]
                mem[_8192 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                mem[_8192 + 352] = 2
                mem[64] = _8192 + 448
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_8192 + 288] = ext_call.return_data[0]
                mem[_8192 + 416] = arg5
                mem[_8192 + 384] = arg6
                mem[_8192 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_8192 + 452] = ext_call.return_data[0]
                mem[_8192 + 484] = 64
                mem[_8192 + 516] = 2
                u = 0
                while u < 64:
                    mem[u + _8192 + 548] = mem[u + _8192 + 384]
                    u = u + 32
                    continue 
                require ext_code.size(arg4)
                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[_8192 + 548 len 64])
                if not ext_call.success:
                    if t >= 0:
                        s = 0
                        s = 0
                        s = s
                        t = t
                        idx = idx
                        continue 
                    s = 0
                    s = 0
                    s = idx + arg2 / 2 * arg3
                    t = 0
                    idx = idx
                    continue 
                mem[_8192 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _8192 + ceil32(return_data.size) + 448
                require return_data.size >= 32
                _12024 = mem[_8192 + 448 len 4], ext_call.return_data[0 len 28]
                require mem[_8192 + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_8192 + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[_8192 + mem[_8192 + 448 len 4], ext_call.return_data[0 len 28] + 448] <= 4294967296 and mem[_8192 + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[_8192 + mem[_8192 + 448 len 4], ext_call.return_data[0 len 28] + 448]) + 32 <= return_data.size
                mem[_8192 + ceil32(return_data.size) + 448] = mem[_8192 + mem[_8192 + 448 len 4], ext_call.return_data[0 len 28] + 448]
                _12072 = mem[_8192 + _12024 + 448]
                u = 0
                while u < 32 * _12072:
                    mem[u + _8192 + ceil32(return_data.size) + 480] = mem[u + _8192 + _12024 + 480]
                    u = u + 32
                    continue 
                mem[64] = (32 * _12072) + _8192 + ceil32(return_data.size) + 480
                require mem[_8192 + ceil32(return_data.size) + 448] - 1 < mem[_8192 + ceil32(return_data.size) + 448]
                mem[_8192 + 320] = mem[(32 * mem[_8192 + ceil32(return_data.size) + 448] - 1) + _8192 + ceil32(return_data.size) + 480]
                if mem[(32 * mem[_8192 + ceil32(return_data.size) + 448] - 1) + _8192 + ceil32(return_data.size) + 480] <= arg3 + (idx + arg2 / 2 * arg3):
                    if t >= 0:
                        s = 0
                        s = 0
                        s = s
                        t = t
                        idx = idx
                        continue 
                    s = 0
                    s = 0
                    s = idx + arg2 / 2 * arg3
                    t = 0
                    idx = idx
                    continue 
                if 0 >= mem[(32 * mem[_8192 + ceil32(return_data.size) + 448] - 1) + _8192 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3):
                    if t >= 0:
                        s = mem[(32 * mem[_8192 + ceil32(return_data.size) + 448] - 1) + _8192 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = s
                        t = t
                        idx = idx
                        continue 
                    s = mem[(32 * mem[_8192 + ceil32(return_data.size) + 448] - 1) + _8192 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                    s = 0
                    s = idx + arg2 / 2 * arg3
                    t = 0
                    idx = idx
                    continue 
                if t >= mem[(32 * mem[_8192 + ceil32(return_data.size) + 448] - 1) + _8192 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3):
                    s = mem[(32 * mem[_8192 + ceil32(return_data.size) + 448] - 1) + _8192 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                    s = 0
                    s = s
                    t = t
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = mem[(32 * mem[_8192 + ceil32(return_data.size) + 448] - 1) + _8192 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                s = 0
                s = arg3 + (idx + arg2 / 2 * arg3)
                t = mem[(32 * mem[_8192 + ceil32(return_data.size) + 448] - 1) + _8192 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                idx = (idx + arg2 / 2) + 1
                continue 
            mem[_8192 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _8192 + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _10200 = mem[_8192 + 224 len 4], ext_call.return_data[0 len 28]
            require mem[_8192 + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[_8192 + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[_8192 + mem[_8192 + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[_8192 + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[_8192 + mem[_8192 + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[_8192 + ceil32(return_data.size) + 224] = mem[_8192 + mem[_8192 + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _10247 = mem[_8192 + _10200 + 224]
            u = 0
            while u < 32 * _10247:
                mem[u + _8192 + ceil32(return_data.size) + 256] = mem[u + _8192 + _10200 + 256]
                u = u + 32
                continue 
            mem[64] = (32 * _10247) + _8192 + ceil32(return_data.size) + 256
            require mem[_8192 + ceil32(return_data.size) + 224] - 1 < mem[_8192 + ceil32(return_data.size) + 224]
            require 2 < mem[_8192]
            mem[_8192 + 96] = mem[(32 * mem[_8192 + ceil32(return_data.size) + 224] - 1) + _8192 + ceil32(return_data.size) + 256]
            require 2 < mem[_8192]
            if mem[(32 * mem[_8192 + ceil32(return_data.size) + 224] - 1) + _8192 + ceil32(return_data.size) + 256] <= idx + arg2 / 2 * arg3:
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 256] = 3
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 384] = 2
                mem[64] = (32 * _10247) + _8192 + ceil32(return_data.size) + 480
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 448] = arg5
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 416] = arg6
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 516] = 64
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 548] = 2
                u = 0
                while u < 64:
                    mem[u + (32 * _10247) + _8192 + ceil32(return_data.size) + 580] = mem[u + (32 * _10247) + _8192 + ceil32(return_data.size) + 416]
                    u = u + 32
                    continue 
                require ext_code.size(arg4)
                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 580 len 64])
                if not ext_call.success:
                    if t >= 0:
                        s = 0
                        s = 0
                        s = s
                        t = t
                        idx = idx
                        continue 
                    s = 0
                    s = 0
                    s = idx + arg2 / 2 * arg3
                    t = 0
                    idx = idx
                    continue 
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _13660 = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _10247) + _8192 + ceil32(return_data.size) + mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _10247) + _8192 + ceil32(return_data.size) + mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
                mem[(32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
                _13746 = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + _13660 + 480]
                u = 0
                while u < 32 * _13746:
                    mem[u + (32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _10247) + _8192 + ceil32(return_data.size) + _13660 + 512]
                    u = u + 32
                    continue 
                mem[64] = (32 * _13746) + (32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 512
                require mem[(32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 480]
                require 2 < mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 256]
                mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 512]
                require 2 < mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 256]
                if mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                    if t >= 0:
                        s = 0
                        s = 0
                        s = s
                        t = t
                        idx = idx
                        continue 
                    s = 0
                    s = 0
                    s = idx + arg2 / 2 * arg3
                    t = 0
                    idx = idx
                    continue 
                require 2 < mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 256]
                if 0 >= mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                    if t >= 0:
                        s = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = s
                        t = t
                        idx = idx
                        continue 
                    s = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                    s = 0
                    s = idx + arg2 / 2 * arg3
                    t = 0
                    idx = idx
                    continue 
                if t >= mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                    s = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                    s = 0
                    s = s
                    t = t
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                s = 0
                s = arg3 + (idx + arg2 / 2 * arg3)
                t = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                idx = (idx + arg2 / 2) + 1
                continue 
            require 2 < mem[_8192]
            _12120 = mem[(32 * mem[_8192 + ceil32(return_data.size) + 224] - 1) + _8192 + ceil32(return_data.size) + 256]
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 256] = 3
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 384] = 2
            mem[64] = (32 * _10247) + _8192 + ceil32(return_data.size) + 480
            require ext_code.size(arg7)
            staticcall arg7.getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg7)
            staticcall arg7.getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args arg6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg7)
            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 448] = arg5
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 416] = arg6
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 516] = 64
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 548] = 2
            u = 0
            while u < 64:
                mem[u + (32 * _10247) + _8192 + ceil32(return_data.size) + 580] = mem[u + (32 * _10247) + _8192 + ceil32(return_data.size) + 416]
                u = u + 32
                continue 
            require ext_code.size(arg4)
            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 580 len 64])
            if not ext_call.success:
                if _12120 - (idx + arg2 / 2 * arg3) >= 0:
                    if t >= _12120 - (idx + arg2 / 2 * arg3):
                        s = 0
                        s = _12120 - (idx + arg2 / 2 * arg3)
                        s = s
                        t = t
                        idx = idx
                        continue 
                    s = 0
                    s = _12120 - (idx + arg2 / 2 * arg3)
                    s = idx + arg2 / 2 * arg3
                    t = _12120 - (idx + arg2 / 2 * arg3)
                    idx = idx
                    continue 
                if t >= 0:
                    s = 0
                    s = _12120 - (idx + arg2 / 2 * arg3)
                    s = s
                    t = t
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = 0
                s = _12120 - (idx + arg2 / 2 * arg3)
                s = arg3 + (idx + arg2 / 2 * arg3)
                t = 0
                idx = (idx + arg2 / 2) + 1
                continue 
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            _13662 = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _10247) + _8192 + ceil32(return_data.size) + mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _10247) + _8192 + ceil32(return_data.size) + mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
            mem[(32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
            _13747 = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + _13662 + 480]
            u = 0
            while u < 32 * _13747:
                mem[u + (32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _10247) + _8192 + ceil32(return_data.size) + _13662 + 512]
                u = u + 32
                continue 
            mem[64] = (32 * _13747) + (32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 512
            require mem[(32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 480]
            require 2 < mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 256]
            mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _10247) + _8192 + (2 * ceil32(return_data.size)) + 512]
            require 2 < mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 256]
            if mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                if _12120 - (idx + arg2 / 2 * arg3) >= 0:
                    if t >= _12120 - (idx + arg2 / 2 * arg3):
                        s = 0
                        s = _12120 - (idx + arg2 / 2 * arg3)
                        s = s
                        t = t
                        idx = idx
                        continue 
                    s = 0
                    s = _12120 - (idx + arg2 / 2 * arg3)
                    s = idx + arg2 / 2 * arg3
                    t = _12120 - (idx + arg2 / 2 * arg3)
                    idx = idx
                    continue 
                if t >= 0:
                    s = 0
                    s = _12120 - (idx + arg2 / 2 * arg3)
                    s = s
                    t = t
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = 0
                s = _12120 - (idx + arg2 / 2 * arg3)
                s = arg3 + (idx + arg2 / 2 * arg3)
                t = 0
                idx = (idx + arg2 / 2) + 1
                continue 
            require 2 < mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 256]
            if _12120 >= mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3:
                if t >= _12120 - (idx + arg2 / 2 * arg3):
                    s = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                    s = _12120 - (idx + arg2 / 2 * arg3)
                    s = s
                    t = t
                    idx = idx
                    continue 
                s = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                s = _12120 - (idx + arg2 / 2 * arg3)
                s = idx + arg2 / 2 * arg3
                t = _12120 - (idx + arg2 / 2 * arg3)
                idx = idx
                continue 
            if t >= mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                s = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                s = _12120 - (idx + arg2 / 2 * arg3)
                s = s
                t = t
                idx = (idx + arg2 / 2) + 1
                continue 
            s = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
            s = _12120 - (idx + arg2 / 2 * arg3)
            s = arg3 + (idx + arg2 / 2 * arg3)
            t = mem[(32 * _10247) + _8192 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
            idx = (idx + arg2 / 2) + 1
            continue 
    else:
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _2084 = mem[320 len 4], ext_call.return_data[0 len 28]
        require mem[320 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[320 len 4], ext_call.return_data[0 len 28] + 320] <= 4294967296 and mem[320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], ext_call.return_data[0 len 28] + 320]
        _2089 = mem[_2084 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_2084 + 320])] = mem[_2084 + 352 len floor32(mem[_2084 + 320])]
        require mem[ceil32(return_data.size) + 320] - 1 < mem[ceil32(return_data.size) + 320]
        mem[192] = mem[(32 * mem[ceil32(return_data.size) + 320] - 1) + ceil32(return_data.size) + 352]
        mem[(32 * _2089) + ceil32(return_data.size) + 352] = 3
        mem[(32 * _2089) + ceil32(return_data.size) + 384 len 96] = call.data[calldata.size len 96]
        mem[(32 * _2089) + ceil32(return_data.size) + 384] = arg1 * arg3
        mem[(32 * _2089) + ceil32(return_data.size) + 480] = 2
        if mem[(32 * mem[ceil32(return_data.size) + 320] - 1) + ceil32(return_data.size) + 352] <= arg1 * arg3:
            mem[(32 * _2089) + ceil32(return_data.size) + 544] = arg6
            mem[(32 * _2089) + ceil32(return_data.size) + 512] = arg5
            mem[(32 * _2089) + ceil32(return_data.size) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2089) + ceil32(return_data.size) + 580] = arg1 * arg3
            mem[(32 * _2089) + ceil32(return_data.size) + 612] = 64
            mem[(32 * _2089) + ceil32(return_data.size) + 644] = 2
            mem[(32 * _2089) + ceil32(return_data.size) + 676 len 0] = None
            require ext_code.size(arg4)
            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1 * arg3, Array(len=2, data=mem[(32 * _2089) + ceil32(return_data.size) + 676 len 64])
            if not ext_call.success:
                return 0
            mem[(32 * _2089) + ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2089) + (2 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            _6191 = mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32
            require mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 <= 4294967296
            require mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2089) + ceil32(return_data.size) + mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 576] <= 4294967296 and mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 + (32 * mem[(32 * _2089) + ceil32(return_data.size) + mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 576]) + 32 <= return_data.size
            mem[(32 * _2089) + (2 * ceil32(return_data.size)) + 576] = mem[(32 * _2089) + ceil32(return_data.size) + mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 576]
            _6200 = mem[(32 * _2089) + ceil32(return_data.size) + _6191 + 576]
            mem[(32 * _2089) + (2 * ceil32(return_data.size)) + 608 len floor32(mem[(32 * _2089) + ceil32(return_data.size) + _6191 + 576])] = mem[(32 * _2089) + ceil32(return_data.size) + _6191 + 608 len floor32(mem[(32 * _2089) + ceil32(return_data.size) + _6191 + 576])]
            mem[64] = (32 * _6200) + (32 * _2089) + (2 * ceil32(return_data.size)) + 608
            require mem[(32 * _2089) + (2 * ceil32(return_data.size)) + 576] - 1 < mem[(32 * _2089) + (2 * ceil32(return_data.size)) + 576]
            mem[(32 * _2089) + ceil32(return_data.size) + 416] = mem[(32 * mem[(32 * _2089) + (2 * ceil32(return_data.size)) + 576] - 1) + (32 * _2089) + (2 * ceil32(return_data.size)) + 608]
            require ext_code.size(arg7)
            staticcall arg7.getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args arg6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg7)
            staticcall arg7.getTokenIndex(address rg1) with:
                    gas gas_remaining wei
                   args arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _6200) + (32 * _2089) + (2 * ceil32(return_data.size)) + 608] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _6200) + (32 * _2089) + (2 * ceil32(return_data.size)) + 612] = uint8(ext_call.return_data[0])
            mem[(32 * _6200) + (32 * _2089) + (2 * ceil32(return_data.size)) + 644] = uint8(ext_call.return_data[0])
            mem[(32 * _6200) + (32 * _2089) + (2 * ceil32(return_data.size)) + 676] = mem[(32 * _2089) + ceil32(return_data.size) + 416]
            require ext_code.size(arg7)
            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _2089) + ceil32(return_data.size) + 416]
            mem[(32 * _6200) + (32 * _2089) + (2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _2089) + ceil32(return_data.size) + 448] = ext_call.return_data[0]
            if ext_call.return_data[0] <= arg1 * arg3:
                return 0
            if 0 <= ext_call.return_data[0] - (arg1 * arg3):
                if not ext_call.return_data[0] - (arg1 * arg3):
                    return 0
                s = mem[(32 * _2089) + ceil32(return_data.size) + 448] - (arg1 * arg3)
                s = 0
                s = 0
                t = 0
                idx = arg1
                while idx + 1 < arg2:
                    _10154 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_10154 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[_10154]
                    mem[_10154 + 32] = idx + arg2 / 2 * arg3
                    mem[_10154 + 128] = 2
                    mem[_10154 + 192] = arg6
                    mem[_10154 + 160] = arg5
                    mem[_10154 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_10154 + 228] = idx + arg2 / 2 * arg3
                    mem[_10154 + 260] = 64
                    mem[_10154 + 292] = 2
                    u = 0
                    while u < 64:
                        mem[u + _10154 + 324] = mem[u + _10154 + 160]
                        u = u + 32
                        continue 
                    require ext_code.size(arg4)
                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args idx + arg2 / 2 * arg3, Array(len=2, data=mem[_10154 + 324 len 64])
                    if not ext_call.success:
                        mem[_10154 + 224] = 3
                        mem[_10154 + 256 len 96] = call.data[calldata.size len 96]
                        mem[_10154 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[_10154 + 352] = 2
                        mem[64] = _10154 + 448
                        mem[_10154 + 416] = arg6
                        mem[_10154 + 384] = arg5
                        mem[_10154 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_10154 + 452] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[_10154 + 484] = 64
                        mem[_10154 + 516] = 2
                        u = 0
                        while u < 64:
                            mem[u + _10154 + 548] = mem[u + _10154 + 384]
                            u = u + 32
                            continue 
                        require ext_code.size(arg4)
                        staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[_10154 + 548 len 64])
                        if not ext_call.success:
                            if t >= 0:
                                s = 0
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        mem[_10154 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _10154 + ceil32(return_data.size) + 448
                        require return_data.size >= 32
                        _13664 = mem[_10154 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                        require mem[_10154 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                        require mem[_10154 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                        require mem[_10154 + mem[_10154 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448] <= 4294967296 and mem[_10154 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[_10154 + mem[_10154 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]) + 32 <= return_data.size
                        mem[_10154 + ceil32(return_data.size) + 448] = mem[_10154 + mem[_10154 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]
                        _13748 = mem[_10154 + _13664 + 448]
                        u = 0
                        while u < 32 * _13748:
                            mem[u + _10154 + ceil32(return_data.size) + 480] = mem[u + _10154 + _13664 + 480]
                            u = u + 32
                            continue 
                        mem[64] = (32 * _13748) + _10154 + ceil32(return_data.size) + 480
                        require mem[_10154 + ceil32(return_data.size) + 448] - 1 < mem[_10154 + ceil32(return_data.size) + 448]
                        mem[_10154 + 288] = mem[(32 * mem[_10154 + ceil32(return_data.size) + 448] - 1) + _10154 + ceil32(return_data.size) + 480]
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _13748) + _10154 + ceil32(return_data.size) + 484] = uint8(ext_call.return_data[0])
                        mem[(32 * _13748) + _10154 + ceil32(return_data.size) + 516] = uint8(ext_call.return_data[0])
                        mem[(32 * _13748) + _10154 + ceil32(return_data.size) + 548] = mem[_10154 + 288]
                        require ext_code.size(arg7)
                        staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[_10154 + 288]
                        mem[(32 * _13748) + _10154 + ceil32(return_data.size) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_10154 + 320] = ext_call.return_data[0]
                        if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                            if t >= 0:
                                s = 0
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                            if t >= 0:
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = s
                            t = t
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = arg3 + (idx + arg2 / 2 * arg3)
                        t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    mem[_10154 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _10154 + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _12028 = mem[_10154 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32
                    require mem[_10154 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 <= 4294967296
                    require mem[_10154 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 32 <= return_data.size
                    require mem[_10154 + mem[_10154 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224] <= 4294967296 and mem[_10154 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + (32 * mem[_10154 + mem[_10154 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[_10154 + ceil32(return_data.size) + 224] = mem[_10154 + mem[_10154 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]
                    _12076 = mem[_10154 + _12028 + 224]
                    u = 0
                    while u < 32 * _12076:
                        mem[u + _10154 + ceil32(return_data.size) + 256] = mem[u + _10154 + _12028 + 256]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _12076) + _10154 + ceil32(return_data.size) + 256
                    require mem[_10154 + ceil32(return_data.size) + 224] - 1 < mem[_10154 + ceil32(return_data.size) + 224]
                    require 1 < mem[_10154]
                    mem[_10154 + 64] = mem[(32 * mem[_10154 + ceil32(return_data.size) + 224] - 1) + _10154 + ceil32(return_data.size) + 256]
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < mem[_10154]
                    require ext_code.size(arg7)
                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[_10154 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[_10154]
                    mem[_10154 + 96] = ext_call.return_data[0]
                    require 2 < mem[_10154]
                    if ext_call.return_data[0] <= idx + arg2 / 2 * arg3:
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256] = 3
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 384] = 2
                        mem[64] = (32 * _12076) + _10154 + ceil32(return_data.size) + 480
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 448] = arg6
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 416] = arg5
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 516] = 64
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 548] = 2
                        u = 0
                        while u < 64:
                            mem[u + (32 * _12076) + _10154 + ceil32(return_data.size) + 580] = mem[u + (32 * _12076) + _10154 + ceil32(return_data.size) + 416]
                            u = u + 32
                            continue 
                        require ext_code.size(arg4)
                        staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 580 len 64])
                        if not ext_call.success:
                            if t >= 0:
                                s = 0
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 480
                        require return_data.size >= 32
                        _14872 = mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                        require mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                        require mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                        require mem[(32 * _12076) + _10154 + ceil32(return_data.size) + mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _12076) + _10154 + ceil32(return_data.size) + mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                        mem[(32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12076) + _10154 + ceil32(return_data.size) + mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                        _14971 = mem[(32 * _12076) + _10154 + ceil32(return_data.size) + _14872 + 480]
                        u = 0
                        while u < 32 * _14971:
                            mem[u + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12076) + _10154 + ceil32(return_data.size) + _14872 + 512]
                            u = u + 32
                            continue 
                        mem[64] = (32 * _14971) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512
                        require mem[(32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 480]
                        require 1 < mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256]
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512]
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _14971) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 516] = arg5
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg5
                        mem[(32 * _14971) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256]
                        mem[(32 * _14971) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14971) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                        mem[(32 * _14971) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                        mem[(32 * _14971) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 320]
                        require ext_code.size(arg7)
                        staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 320]
                        mem[(32 * _14971) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256]
                        mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                        require 2 < mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256]
                        if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                            if t >= 0:
                                s = 0
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        require 2 < mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256]
                        if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                            if t >= 0:
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = s
                            t = t
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = arg3 + (idx + arg2 / 2 * arg3)
                        t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    require 2 < mem[_10154]
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256] = 3
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 384] = 2
                    mem[64] = (32 * _12076) + _10154 + ceil32(return_data.size) + 480
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 448] = arg6
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 416] = arg5
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 516] = 64
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 548] = 2
                    u = 0
                    while u < 64:
                        mem[u + (32 * _12076) + _10154 + ceil32(return_data.size) + 580] = mem[u + (32 * _12076) + _10154 + ceil32(return_data.size) + 416]
                        u = u + 32
                        continue 
                    require ext_code.size(arg4)
                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 580 len 64])
                    if not ext_call.success:
                        if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                            if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                s = 0
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = idx + arg2 / 2 * arg3
                            t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            idx = idx
                            continue 
                        if t >= 0:
                            s = 0
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        s = 0
                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        s = arg3 + (idx + arg2 / 2 * arg3)
                        t = 0
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 480
                    require return_data.size >= 32
                    _14874 = mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                    require mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                    require mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                    require mem[(32 * _12076) + _10154 + ceil32(return_data.size) + mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _12076) + _10154 + ceil32(return_data.size) + mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                    mem[(32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12076) + _10154 + ceil32(return_data.size) + mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                    _14972 = mem[(32 * _12076) + _10154 + ceil32(return_data.size) + _14874 + 480]
                    u = 0
                    while u < 32 * _14972:
                        mem[u + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12076) + _10154 + ceil32(return_data.size) + _14874 + 512]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _14972) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512
                    require mem[(32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 480]
                    require 1 < mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256]
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512]
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _14972) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 516] = arg5
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg5
                    mem[(32 * _14972) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256]
                    mem[(32 * _14972) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14972) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                    mem[(32 * _14972) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                    mem[(32 * _14972) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 320]
                    require ext_code.size(arg7)
                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 320]
                    mem[(32 * _14972) + (32 * _12076) + _10154 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256]
                    mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                    require 2 < mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256]
                    if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                        if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                            if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                s = 0
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = idx + arg2 / 2 * arg3
                            t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            idx = idx
                            continue 
                        if t >= 0:
                            s = 0
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        s = 0
                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        s = arg3 + (idx + arg2 / 2 * arg3)
                        t = 0
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    require 2 < mem[(32 * _12076) + _10154 + ceil32(return_data.size) + 256]
                    if ext_call.return_data[0] >= ext_call.return_data[0] - arg3:
                        if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        s = idx + arg2 / 2 * arg3
                        t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        idx = idx
                        continue 
                    if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        s = s
                        t = t
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                    s = arg3 + (idx + arg2 / 2 * arg3)
                    t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                    idx = (idx + arg2 / 2) + 1
                    continue 
                return t, s, 0
            if not ext_call.return_data[0] - (arg1 * arg3):
                return 0, 0, 1
            s = mem[(32 * _2089) + ceil32(return_data.size) + 448] - (arg1 * arg3)
            s = 0
            s = 0
            t = 0
            idx = arg1
            while idx + 1 < arg2:
                _10156 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[_10156 + 32 len 96] = call.data[calldata.size len 96]
                require 0 < mem[_10156]
                mem[_10156 + 32] = idx + arg2 / 2 * arg3
                mem[_10156 + 128] = 2
                mem[64] = _10156 + 224
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, idx + arg2 / 2 * arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[_10156]
                mem[_10156 + 64] = ext_call.return_data[0]
                mem[_10156 + 192] = arg5
                mem[_10156 + 160] = arg6
                require 1 < mem[_10156]
                mem[_10156 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_10156 + 228] = ext_call.return_data[0]
                mem[_10156 + 260] = 64
                mem[_10156 + 292] = 2
                u = 0
                while u < 64:
                    mem[u + _10156 + 324] = mem[u + _10156 + 160]
                    u = u + 32
                    continue 
                require ext_code.size(arg4)
                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[_10156 + 324 len 64])
                if not ext_call.success:
                    mem[_10156 + 224] = 3
                    mem[_10156 + 256 len 96] = call.data[calldata.size len 96]
                    mem[_10156 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[_10156 + 352] = 2
                    mem[64] = _10156 + 448
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg7)
                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_10156 + 288] = ext_call.return_data[0]
                    mem[_10156 + 416] = arg5
                    mem[_10156 + 384] = arg6
                    mem[_10156 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_10156 + 452] = ext_call.return_data[0]
                    mem[_10156 + 484] = 64
                    mem[_10156 + 516] = 2
                    u = 0
                    while u < 64:
                        mem[u + _10156 + 548] = mem[u + _10156 + 384]
                        u = u + 32
                        continue 
                    require ext_code.size(arg4)
                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[_10156 + 548 len 64])
                    if not ext_call.success:
                        if t >= 0:
                            s = 0
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    mem[_10156 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _10156 + ceil32(return_data.size) + 448
                    require return_data.size >= 32
                    _13668 = mem[_10156 + 448 len 4], ext_call.return_data[0 len 28]
                    require mem[_10156 + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[_10156 + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[_10156 + mem[_10156 + 448 len 4], ext_call.return_data[0 len 28] + 448] <= 4294967296 and mem[_10156 + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[_10156 + mem[_10156 + 448 len 4], ext_call.return_data[0 len 28] + 448]) + 32 <= return_data.size
                    mem[_10156 + ceil32(return_data.size) + 448] = mem[_10156 + mem[_10156 + 448 len 4], ext_call.return_data[0 len 28] + 448]
                    _13750 = mem[_10156 + _13668 + 448]
                    u = 0
                    while u < 32 * _13750:
                        mem[u + _10156 + ceil32(return_data.size) + 480] = mem[u + _10156 + _13668 + 480]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _13750) + _10156 + ceil32(return_data.size) + 480
                    require mem[_10156 + ceil32(return_data.size) + 448] - 1 < mem[_10156 + ceil32(return_data.size) + 448]
                    mem[_10156 + 320] = mem[(32 * mem[_10156 + ceil32(return_data.size) + 448] - 1) + _10156 + ceil32(return_data.size) + 480]
                    if mem[_10156 + 320] <= arg3 + (idx + arg2 / 2 * arg3):
                        if t >= 0:
                            s = 0
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    if 0 >= mem[_10156 + 320] - arg3 - (idx + arg2 / 2 * arg3):
                        if t >= 0:
                            s = mem[_10156 + 320] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = mem[_10156 + 320] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    if t >= mem[_10156 + 320] - arg3 - (idx + arg2 / 2 * arg3):
                        s = mem[_10156 + 320] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = s
                        t = t
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = mem[_10156 + 320] - arg3 - (idx + arg2 / 2 * arg3)
                    s = 0
                    s = arg3 + (idx + arg2 / 2 * arg3)
                    t = mem[_10156 + 320] - arg3 - (idx + arg2 / 2 * arg3)
                    idx = (idx + arg2 / 2) + 1
                    continue 
                mem[_10156 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _10156 + ceil32(return_data.size) + 224
                require return_data.size >= 32
                _12030 = mem[_10156 + 224 len 4], ext_call.return_data[0 len 28]
                require mem[_10156 + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_10156 + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[_10156 + mem[_10156 + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[_10156 + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[_10156 + mem[_10156 + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[_10156 + ceil32(return_data.size) + 224] = mem[_10156 + mem[_10156 + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _12079 = mem[_10156 + _12030 + 224]
                u = 0
                while u < 32 * _12079:
                    mem[u + _10156 + ceil32(return_data.size) + 256] = mem[u + _10156 + _12030 + 256]
                    u = u + 32
                    continue 
                mem[64] = (32 * _12079) + _10156 + ceil32(return_data.size) + 256
                require mem[_10156 + ceil32(return_data.size) + 224] - 1 < mem[_10156 + ceil32(return_data.size) + 224]
                require 2 < mem[_10156]
                mem[_10156 + 96] = mem[(32 * mem[_10156 + ceil32(return_data.size) + 224] - 1) + _10156 + ceil32(return_data.size) + 256]
                require 2 < mem[_10156]
                if mem[(32 * mem[_10156 + ceil32(return_data.size) + 224] - 1) + _10156 + ceil32(return_data.size) + 256] <= idx + arg2 / 2 * arg3:
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 256] = 3
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 384] = 2
                    mem[64] = (32 * _12079) + _10156 + ceil32(return_data.size) + 480
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg7)
                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 448] = arg5
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 416] = arg6
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 516] = 64
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 548] = 2
                    u = 0
                    while u < 64:
                        mem[u + (32 * _12079) + _10156 + ceil32(return_data.size) + 580] = mem[u + (32 * _12079) + _10156 + ceil32(return_data.size) + 416]
                        u = u + 32
                        continue 
                    require ext_code.size(arg4)
                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 580 len 64])
                    if not ext_call.success:
                        if t >= 0:
                            s = 0
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 480
                    require return_data.size >= 32
                    _14878 = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _12079) + _10156 + ceil32(return_data.size) + mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _12079) + _10156 + ceil32(return_data.size) + mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
                    mem[(32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
                    _14974 = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + _14878 + 480]
                    u = 0
                    while u < 32 * _14974:
                        mem[u + (32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12079) + _10156 + ceil32(return_data.size) + _14878 + 512]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _14974) + (32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 512
                    require mem[(32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 480]
                    require 2 < mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 256]
                    mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 512]
                    require 2 < mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 256]
                    if mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                        if t >= 0:
                            s = 0
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    require 2 < mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 256]
                    if 0 >= mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                        if t >= 0:
                            s = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = idx + arg2 / 2 * arg3
                        t = 0
                        idx = idx
                        continue 
                    if t >= mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                        s = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = s
                        t = t
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                    s = 0
                    s = arg3 + (idx + arg2 / 2 * arg3)
                    t = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                    idx = (idx + arg2 / 2) + 1
                    continue 
                require 2 < mem[_10156]
                _13801 = mem[(32 * mem[_10156 + ceil32(return_data.size) + 224] - 1) + _10156 + ceil32(return_data.size) + 256]
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 256] = 3
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 384] = 2
                mem[64] = (32 * _12079) + _10156 + ceil32(return_data.size) + 480
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 448] = arg5
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 416] = arg6
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 516] = 64
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 548] = 2
                u = 0
                while u < 64:
                    mem[u + (32 * _12079) + _10156 + ceil32(return_data.size) + 580] = mem[u + (32 * _12079) + _10156 + ceil32(return_data.size) + 416]
                    u = u + 32
                    continue 
                require ext_code.size(arg4)
                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 580 len 64])
                if not ext_call.success:
                    if _13801 - (idx + arg2 / 2 * arg3) >= 0:
                        if t >= _13801 - (idx + arg2 / 2 * arg3):
                            s = 0
                            s = _13801 - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = _13801 - (idx + arg2 / 2 * arg3)
                        s = idx + arg2 / 2 * arg3
                        t = _13801 - (idx + arg2 / 2 * arg3)
                        idx = idx
                        continue 
                    if t >= 0:
                        s = 0
                        s = _13801 - (idx + arg2 / 2 * arg3)
                        s = s
                        t = t
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = 0
                    s = _13801 - (idx + arg2 / 2 * arg3)
                    s = arg3 + (idx + arg2 / 2 * arg3)
                    t = 0
                    idx = (idx + arg2 / 2) + 1
                    continue 
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _14880 = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _12079) + _10156 + ceil32(return_data.size) + mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _12079) + _10156 + ceil32(return_data.size) + mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
                mem[(32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
                _14975 = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + _14880 + 480]
                u = 0
                while u < 32 * _14975:
                    mem[u + (32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12079) + _10156 + ceil32(return_data.size) + _14880 + 512]
                    u = u + 32
                    continue 
                mem[64] = (32 * _14975) + (32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 512
                require mem[(32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 480]
                require 2 < mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 256]
                mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12079) + _10156 + (2 * ceil32(return_data.size)) + 512]
                require 2 < mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 256]
                if mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                    if _13801 - (idx + arg2 / 2 * arg3) >= 0:
                        if t >= _13801 - (idx + arg2 / 2 * arg3):
                            s = 0
                            s = _13801 - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = 0
                        s = _13801 - (idx + arg2 / 2 * arg3)
                        s = idx + arg2 / 2 * arg3
                        t = _13801 - (idx + arg2 / 2 * arg3)
                        idx = idx
                        continue 
                    if t >= 0:
                        s = 0
                        s = _13801 - (idx + arg2 / 2 * arg3)
                        s = s
                        t = t
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = 0
                    s = _13801 - (idx + arg2 / 2 * arg3)
                    s = arg3 + (idx + arg2 / 2 * arg3)
                    t = 0
                    idx = (idx + arg2 / 2) + 1
                    continue 
                require 2 < mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 256]
                if _13801 >= mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3:
                    if t >= _13801 - (idx + arg2 / 2 * arg3):
                        s = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                        s = _13801 - (idx + arg2 / 2 * arg3)
                        s = s
                        t = t
                        idx = idx
                        continue 
                    s = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                    s = _13801 - (idx + arg2 / 2 * arg3)
                    s = idx + arg2 / 2 * arg3
                    t = _13801 - (idx + arg2 / 2 * arg3)
                    idx = idx
                    continue 
                if t >= mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                    s = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                    s = _13801 - (idx + arg2 / 2 * arg3)
                    s = s
                    t = t
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                s = _13801 - (idx + arg2 / 2 * arg3)
                s = arg3 + (idx + arg2 / 2 * arg3)
                t = mem[(32 * _12079) + _10156 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                idx = (idx + arg2 / 2) + 1
                continue 
        else:
            mem[64] = (32 * _2089) + ceil32(return_data.size) + 576
            mem[(32 * _2089) + ceil32(return_data.size) + 544] = arg6
            mem[(32 * _2089) + ceil32(return_data.size) + 512] = arg5
            mem[(32 * _2089) + ceil32(return_data.size) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2089) + ceil32(return_data.size) + 580] = arg1 * arg3
            mem[(32 * _2089) + ceil32(return_data.size) + 612] = 64
            mem[(32 * _2089) + ceil32(return_data.size) + 644] = 2
            mem[(32 * _2089) + ceil32(return_data.size) + 676 len 0] = None
            require ext_code.size(arg4)
            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1 * arg3, Array(len=2, data=mem[(32 * _2089) + ceil32(return_data.size) + 676 len 64])
            if not ext_call.success:
                if mem[192] - (arg1 * arg3) <= 0:
                    if not mem[192] - (arg1 * arg3):
                        return 0
                    s = 0
                    s = mem[192] - (arg1 * arg3)
                    s = 0
                    t = 0
                    idx = arg1
                    while idx + 1 < arg2:
                        _8194 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_8194 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[_8194]
                        mem[_8194 + 32] = idx + arg2 / 2 * arg3
                        mem[_8194 + 128] = 2
                        mem[_8194 + 192] = arg6
                        mem[_8194 + 160] = arg5
                        mem[_8194 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_8194 + 228] = idx + arg2 / 2 * arg3
                        mem[_8194 + 260] = 64
                        mem[_8194 + 292] = 2
                        u = 0
                        while u < 64:
                            mem[u + _8194 + 324] = mem[u + _8194 + 160]
                            u = u + 32
                            continue 
                        require ext_code.size(arg4)
                        staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args idx + arg2 / 2 * arg3, Array(len=2, data=mem[_8194 + 324 len 64])
                        if not ext_call.success:
                            mem[_8194 + 224] = 3
                            mem[_8194 + 256 len 96] = call.data[calldata.size len 96]
                            mem[_8194 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                            mem[_8194 + 352] = 2
                            mem[64] = _8194 + 448
                            mem[_8194 + 416] = arg6
                            mem[_8194 + 384] = arg5
                            mem[_8194 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_8194 + 452] = arg3 + (idx + arg2 / 2 * arg3)
                            mem[_8194 + 484] = 64
                            mem[_8194 + 516] = 2
                            u = 0
                            while u < 64:
                                mem[u + _8194 + 548] = mem[u + _8194 + 384]
                                u = u + 32
                                continue 
                            require ext_code.size(arg4)
                            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[_8194 + 548 len 64])
                            if not ext_call.success:
                                if t >= 0:
                                    s = 0
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            mem[_8194 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _8194 + ceil32(return_data.size) + 448
                            require return_data.size >= 32
                            _12032 = mem[_8194 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                            require mem[_8194 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                            require mem[_8194 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                            require mem[_8194 + mem[_8194 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448] <= 4294967296 and mem[_8194 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[_8194 + mem[_8194 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]) + 32 <= return_data.size
                            mem[_8194 + ceil32(return_data.size) + 448] = mem[_8194 + mem[_8194 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]
                            _12080 = mem[_8194 + _12032 + 448]
                            u = 0
                            while u < 32 * _12080:
                                mem[u + _8194 + ceil32(return_data.size) + 480] = mem[u + _8194 + _12032 + 480]
                                u = u + 32
                                continue 
                            mem[64] = (32 * _12080) + _8194 + ceil32(return_data.size) + 480
                            require mem[_8194 + ceil32(return_data.size) + 448] - 1 < mem[_8194 + ceil32(return_data.size) + 448]
                            mem[_8194 + 288] = mem[(32 * mem[_8194 + ceil32(return_data.size) + 448] - 1) + _8194 + ceil32(return_data.size) + 480]
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _12080) + _8194 + ceil32(return_data.size) + 484] = uint8(ext_call.return_data[0])
                            mem[(32 * _12080) + _8194 + ceil32(return_data.size) + 516] = uint8(ext_call.return_data[0])
                            mem[(32 * _12080) + _8194 + ceil32(return_data.size) + 548] = mem[_8194 + 288]
                            require ext_code.size(arg7)
                            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[_8194 + 288]
                            mem[(32 * _12080) + _8194 + ceil32(return_data.size) + 480] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_8194 + 320] = ext_call.return_data[0]
                            if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                                if t >= 0:
                                    s = 0
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                if t >= 0:
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = s
                                t = t
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = arg3 + (idx + arg2 / 2 * arg3)
                            t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        mem[_8194 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _8194 + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _10205 = mem[_8194 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32
                        require mem[_8194 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 <= 4294967296
                        require mem[_8194 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 32 <= return_data.size
                        require mem[_8194 + mem[_8194 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224] <= 4294967296 and mem[_8194 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + (32 * mem[_8194 + mem[_8194 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[_8194 + ceil32(return_data.size) + 224] = mem[_8194 + mem[_8194 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]
                        _10253 = mem[_8194 + _10205 + 224]
                        u = 0
                        while u < 32 * _10253:
                            mem[u + _8194 + ceil32(return_data.size) + 256] = mem[u + _8194 + _10205 + 256]
                            u = u + 32
                            continue 
                        mem[64] = (32 * _10253) + _8194 + ceil32(return_data.size) + 256
                        require mem[_8194 + ceil32(return_data.size) + 224] - 1 < mem[_8194 + ceil32(return_data.size) + 224]
                        require 1 < mem[_8194]
                        mem[_8194 + 64] = mem[(32 * mem[_8194 + ceil32(return_data.size) + 224] - 1) + _8194 + ceil32(return_data.size) + 256]
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[_8194]
                        require ext_code.size(arg7)
                        staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[_8194 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[_8194]
                        mem[_8194 + 96] = ext_call.return_data[0]
                        require 2 < mem[_8194]
                        if ext_call.return_data[0] <= idx + arg2 / 2 * arg3:
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256] = 3
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 384] = 2
                            mem[64] = (32 * _10253) + _8194 + ceil32(return_data.size) + 480
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 448] = arg6
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 416] = arg5
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 516] = 64
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 548] = 2
                            u = 0
                            while u < 64:
                                mem[u + (32 * _10253) + _8194 + ceil32(return_data.size) + 580] = mem[u + (32 * _10253) + _8194 + ceil32(return_data.size) + 416]
                                u = u + 32
                                continue 
                            require ext_code.size(arg4)
                            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 580 len 64])
                            if not ext_call.success:
                                if t >= 0:
                                    s = 0
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 480
                            require return_data.size >= 32
                            _13674 = mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                            require mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                            require mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                            require mem[(32 * _10253) + _8194 + ceil32(return_data.size) + mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _10253) + _8194 + ceil32(return_data.size) + mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                            mem[(32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _10253) + _8194 + ceil32(return_data.size) + mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                            _13753 = mem[(32 * _10253) + _8194 + ceil32(return_data.size) + _13674 + 480]
                            u = 0
                            while u < 32 * _13753:
                                mem[u + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _10253) + _8194 + ceil32(return_data.size) + _13674 + 512]
                                u = u + 32
                                continue 
                            mem[64] = (32 * _13753) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512
                            require mem[(32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 480]
                            require 1 < mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256]
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512]
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _13753) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 516] = arg5
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg5
                            mem[(32 * _13753) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 1 < mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256]
                            mem[(32 * _13753) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _13753) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                            mem[(32 * _13753) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                            mem[(32 * _13753) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 320]
                            require ext_code.size(arg7)
                            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 320]
                            mem[(32 * _13753) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 2 < mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256]
                            mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                            require 2 < mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256]
                            if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                                if t >= 0:
                                    s = 0
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            require 2 < mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256]
                            if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                if t >= 0:
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = s
                                t = t
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = arg3 + (idx + arg2 / 2 * arg3)
                            t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        require 2 < mem[_8194]
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256] = 3
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 384] = 2
                        mem[64] = (32 * _10253) + _8194 + ceil32(return_data.size) + 480
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 448] = arg6
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 416] = arg5
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 516] = 64
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 548] = 2
                        u = 0
                        while u < 64:
                            mem[u + (32 * _10253) + _8194 + ceil32(return_data.size) + 580] = mem[u + (32 * _10253) + _8194 + ceil32(return_data.size) + 416]
                            u = u + 32
                            continue 
                        require ext_code.size(arg4)
                        staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 580 len 64])
                        if not ext_call.success:
                            if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                                if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                    s = 0
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = idx + arg2 / 2 * arg3
                                t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                idx = idx
                                continue 
                            if t >= 0:
                                s = 0
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            s = 0
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = arg3 + (idx + arg2 / 2 * arg3)
                            t = 0
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 480
                        require return_data.size >= 32
                        _13676 = mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                        require mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                        require mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                        require mem[(32 * _10253) + _8194 + ceil32(return_data.size) + mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _10253) + _8194 + ceil32(return_data.size) + mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                        mem[(32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _10253) + _8194 + ceil32(return_data.size) + mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                        _13754 = mem[(32 * _10253) + _8194 + ceil32(return_data.size) + _13676 + 480]
                        u = 0
                        while u < 32 * _13754:
                            mem[u + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _10253) + _8194 + ceil32(return_data.size) + _13676 + 512]
                            u = u + 32
                            continue 
                        mem[64] = (32 * _13754) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512
                        require mem[(32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 480]
                        require 1 < mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256]
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512]
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _13754) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 516] = arg5
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg5
                        mem[(32 * _13754) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256]
                        mem[(32 * _13754) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _13754) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                        mem[(32 * _13754) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                        mem[(32 * _13754) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 320]
                        require ext_code.size(arg7)
                        staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 320]
                        mem[(32 * _13754) + (32 * _10253) + _8194 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256]
                        mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                        require 2 < mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256]
                        if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                            if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                                if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                    s = 0
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = idx + arg2 / 2 * arg3
                                t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                idx = idx
                                continue 
                            if t >= 0:
                                s = 0
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            s = 0
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = arg3 + (idx + arg2 / 2 * arg3)
                            t = 0
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        require 2 < mem[(32 * _10253) + _8194 + ceil32(return_data.size) + 256]
                        if ext_call.return_data[0] >= ext_call.return_data[0] - arg3:
                            if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = idx + arg2 / 2 * arg3
                            t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            idx = idx
                            continue 
                        if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                        s = arg3 + (idx + arg2 / 2 * arg3)
                        t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    return t, s, 0
                if not mem[192] - (arg1 * arg3):
                    return 0, 0, 1
                s = 0
                s = mem[192] - (arg1 * arg3)
                s = 0
                t = 0
                idx = arg1
                while idx + 1 < arg2:
                    _8196 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_8196 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[_8196]
                    mem[_8196 + 32] = idx + arg2 / 2 * arg3
                    mem[_8196 + 128] = 2
                    mem[64] = _8196 + 224
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg7)
                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, idx + arg2 / 2 * arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < mem[_8196]
                    mem[_8196 + 64] = ext_call.return_data[0]
                    mem[_8196 + 192] = arg5
                    mem[_8196 + 160] = arg6
                    require 1 < mem[_8196]
                    mem[_8196 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_8196 + 228] = ext_call.return_data[0]
                    mem[_8196 + 260] = 64
                    mem[_8196 + 292] = 2
                    u = 0
                    while u < 64:
                        mem[u + _8196 + 324] = mem[u + _8196 + 160]
                        u = u + 32
                        continue 
                    require ext_code.size(arg4)
                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[_8196 + 324 len 64])
                    if not ext_call.success:
                        mem[_8196 + 224] = 3
                        mem[_8196 + 256 len 96] = call.data[calldata.size len 96]
                        mem[_8196 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[_8196 + 352] = 2
                        mem[64] = _8196 + 448
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg7)
                        staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_8196 + 288] = ext_call.return_data[0]
                        mem[_8196 + 416] = arg5
                        mem[_8196 + 384] = arg6
                        mem[_8196 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_8196 + 452] = ext_call.return_data[0]
                        mem[_8196 + 484] = 64
                        mem[_8196 + 516] = 2
                        u = 0
                        while u < 64:
                            mem[u + _8196 + 548] = mem[u + _8196 + 384]
                            u = u + 32
                            continue 
                        require ext_code.size(arg4)
                        staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[_8196 + 548 len 64])
                        if not ext_call.success:
                            if t >= 0:
                                s = 0
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        mem[_8196 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _8196 + ceil32(return_data.size) + 448
                        require return_data.size >= 32
                        _12036 = mem[_8196 + 448 len 4], ext_call.return_data[0 len 28]
                        require mem[_8196 + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[_8196 + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[_8196 + mem[_8196 + 448 len 4], ext_call.return_data[0 len 28] + 448] <= 4294967296 and mem[_8196 + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[_8196 + mem[_8196 + 448 len 4], ext_call.return_data[0 len 28] + 448]) + 32 <= return_data.size
                        mem[_8196 + ceil32(return_data.size) + 448] = mem[_8196 + mem[_8196 + 448 len 4], ext_call.return_data[0 len 28] + 448]
                        _12082 = mem[_8196 + _12036 + 448]
                        u = 0
                        while u < 32 * _12082:
                            mem[u + _8196 + ceil32(return_data.size) + 480] = mem[u + _8196 + _12036 + 480]
                            u = u + 32
                            continue 
                        mem[64] = (32 * _12082) + _8196 + ceil32(return_data.size) + 480
                        require mem[_8196 + ceil32(return_data.size) + 448] - 1 < mem[_8196 + ceil32(return_data.size) + 448]
                        mem[_8196 + 320] = mem[(32 * mem[_8196 + ceil32(return_data.size) + 448] - 1) + _8196 + ceil32(return_data.size) + 480]
                        if mem[(32 * mem[_8196 + ceil32(return_data.size) + 448] - 1) + _8196 + ceil32(return_data.size) + 480] <= arg3 + (idx + arg2 / 2 * arg3):
                            if t >= 0:
                                s = 0
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        if 0 >= mem[(32 * mem[_8196 + ceil32(return_data.size) + 448] - 1) + _8196 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3):
                            if t >= 0:
                                s = mem[(32 * mem[_8196 + ceil32(return_data.size) + 448] - 1) + _8196 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = mem[(32 * mem[_8196 + ceil32(return_data.size) + 448] - 1) + _8196 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        if t >= mem[(32 * mem[_8196 + ceil32(return_data.size) + 448] - 1) + _8196 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3):
                            s = mem[(32 * mem[_8196 + ceil32(return_data.size) + 448] - 1) + _8196 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = s
                            t = t
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        s = mem[(32 * mem[_8196 + ceil32(return_data.size) + 448] - 1) + _8196 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = arg3 + (idx + arg2 / 2 * arg3)
                        t = mem[(32 * mem[_8196 + ceil32(return_data.size) + 448] - 1) + _8196 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    mem[_8196 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _8196 + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _10207 = mem[_8196 + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[_8196 + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[_8196 + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[_8196 + mem[_8196 + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[_8196 + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[_8196 + mem[_8196 + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                    mem[_8196 + ceil32(return_data.size) + 224] = mem[_8196 + mem[_8196 + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    _10256 = mem[_8196 + _10207 + 224]
                    u = 0
                    while u < 32 * _10256:
                        mem[u + _8196 + ceil32(return_data.size) + 256] = mem[u + _8196 + _10207 + 256]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _10256) + _8196 + ceil32(return_data.size) + 256
                    require mem[_8196 + ceil32(return_data.size) + 224] - 1 < mem[_8196 + ceil32(return_data.size) + 224]
                    require 2 < mem[_8196]
                    mem[_8196 + 96] = mem[(32 * mem[_8196 + ceil32(return_data.size) + 224] - 1) + _8196 + ceil32(return_data.size) + 256]
                    require 2 < mem[_8196]
                    if mem[_8196 + 96] <= idx + arg2 / 2 * arg3:
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 256] = 3
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 384] = 2
                        mem[64] = (32 * _10256) + _8196 + ceil32(return_data.size) + 480
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg7)
                        staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 448] = arg5
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 416] = arg6
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 516] = 64
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 548] = 2
                        u = 0
                        while u < 64:
                            mem[u + (32 * _10256) + _8196 + ceil32(return_data.size) + 580] = mem[u + (32 * _10256) + _8196 + ceil32(return_data.size) + 416]
                            u = u + 32
                            continue 
                        require ext_code.size(arg4)
                        staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 580 len 64])
                        if not ext_call.success:
                            if t >= 0:
                                s = 0
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 480
                        require return_data.size >= 32
                        _13680 = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
                        require mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _10256) + _8196 + ceil32(return_data.size) + mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _10256) + _8196 + ceil32(return_data.size) + mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
                        mem[(32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
                        _13756 = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + _13680 + 480]
                        u = 0
                        while u < 32 * _13756:
                            mem[u + (32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _10256) + _8196 + ceil32(return_data.size) + _13680 + 512]
                            u = u + 32
                            continue 
                        mem[64] = (32 * _13756) + (32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 512
                        require mem[(32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 480]
                        require 2 < mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 256]
                        mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 512]
                        require 2 < mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 256]
                        if mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                            if t >= 0:
                                s = 0
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        require 2 < mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 256]
                        if 0 >= mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                            if t >= 0:
                                s = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = idx + arg2 / 2 * arg3
                            t = 0
                            idx = idx
                            continue 
                        if t >= mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                            s = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = s
                            t = t
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        s = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                        s = 0
                        s = arg3 + (idx + arg2 / 2 * arg3)
                        t = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    require 2 < mem[_8196]
                    _12128 = mem[_8196 + 96]
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 256] = 3
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 384] = 2
                    mem[64] = (32 * _10256) + _8196 + ceil32(return_data.size) + 480
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg7)
                    staticcall arg7.getTokenIndex(address rg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg7)
                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 448] = arg5
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 416] = arg6
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 516] = 64
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 548] = 2
                    u = 0
                    while u < 64:
                        mem[u + (32 * _10256) + _8196 + ceil32(return_data.size) + 580] = mem[u + (32 * _10256) + _8196 + ceil32(return_data.size) + 416]
                        u = u + 32
                        continue 
                    require ext_code.size(arg4)
                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 580 len 64])
                    if not ext_call.success:
                        if _12128 - (idx + arg2 / 2 * arg3) >= 0:
                            if t >= _12128 - (idx + arg2 / 2 * arg3):
                                s = 0
                                s = _12128 - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = _12128 - (idx + arg2 / 2 * arg3)
                            s = idx + arg2 / 2 * arg3
                            t = _12128 - (idx + arg2 / 2 * arg3)
                            idx = idx
                            continue 
                        if t >= 0:
                            s = 0
                            s = _12128 - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        s = 0
                        s = _12128 - (idx + arg2 / 2 * arg3)
                        s = arg3 + (idx + arg2 / 2 * arg3)
                        t = 0
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 480
                    require return_data.size >= 32
                    _13682 = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _10256) + _8196 + ceil32(return_data.size) + mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _10256) + _8196 + ceil32(return_data.size) + mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
                    mem[(32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
                    _13757 = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + _13682 + 480]
                    u = 0
                    while u < 32 * _13757:
                        mem[u + (32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _10256) + _8196 + ceil32(return_data.size) + _13682 + 512]
                        u = u + 32
                        continue 
                    mem[64] = (32 * _13757) + (32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 512
                    require mem[(32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 480]
                    require 2 < mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 256]
                    mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _10256) + _8196 + (2 * ceil32(return_data.size)) + 512]
                    require 2 < mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 256]
                    if mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                        if _12128 - (idx + arg2 / 2 * arg3) >= 0:
                            if t >= _12128 - (idx + arg2 / 2 * arg3):
                                s = 0
                                s = _12128 - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = 0
                            s = _12128 - (idx + arg2 / 2 * arg3)
                            s = idx + arg2 / 2 * arg3
                            t = _12128 - (idx + arg2 / 2 * arg3)
                            idx = idx
                            continue 
                        if t >= 0:
                            s = 0
                            s = _12128 - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        s = 0
                        s = _12128 - (idx + arg2 / 2 * arg3)
                        s = arg3 + (idx + arg2 / 2 * arg3)
                        t = 0
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    require 2 < mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 256]
                    if _12128 >= mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3:
                        if t >= _12128 - (idx + arg2 / 2 * arg3):
                            s = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            s = _12128 - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = idx
                            continue 
                        s = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                        s = _12128 - (idx + arg2 / 2 * arg3)
                        s = idx + arg2 / 2 * arg3
                        t = _12128 - (idx + arg2 / 2 * arg3)
                        idx = idx
                        continue 
                    if t >= mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                        s = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                        s = _12128 - (idx + arg2 / 2 * arg3)
                        s = s
                        t = t
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                    s = _12128 - (idx + arg2 / 2 * arg3)
                    s = arg3 + (idx + arg2 / 2 * arg3)
                    t = mem[(32 * _10256) + _8196 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                    idx = (idx + arg2 / 2) + 1
                    continue 
            else:
                mem[(32 * _2089) + ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _2089) + (2 * ceil32(return_data.size)) + 576
                require return_data.size >= 32
                _6193 = mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32
                require mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 <= 4294967296
                require mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _2089) + ceil32(return_data.size) + mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 576] <= 4294967296 and mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 + (32 * mem[(32 * _2089) + ceil32(return_data.size) + mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 576]) + 32 <= return_data.size
                mem[(32 * _2089) + (2 * ceil32(return_data.size)) + 576] = mem[(32 * _2089) + ceil32(return_data.size) + mem[(32 * _2089) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1 * arg3) >> 32 + 576]
                _6201 = mem[(32 * _2089) + ceil32(return_data.size) + _6193 + 576]
                mem[(32 * _2089) + (2 * ceil32(return_data.size)) + 608 len floor32(mem[(32 * _2089) + ceil32(return_data.size) + _6193 + 576])] = mem[(32 * _2089) + ceil32(return_data.size) + _6193 + 608 len floor32(mem[(32 * _2089) + ceil32(return_data.size) + _6193 + 576])]
                mem[64] = (32 * _6201) + (32 * _2089) + (2 * ceil32(return_data.size)) + 608
                require mem[(32 * _2089) + (2 * ceil32(return_data.size)) + 576] - 1 < mem[(32 * _2089) + (2 * ceil32(return_data.size)) + 576]
                mem[(32 * _2089) + ceil32(return_data.size) + 416] = mem[(32 * mem[(32 * _2089) + (2 * ceil32(return_data.size)) + 576] - 1) + (32 * _2089) + (2 * ceil32(return_data.size)) + 608]
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                staticcall arg7.getTokenIndex(address rg1) with:
                        gas gas_remaining wei
                       args arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _6201) + (32 * _2089) + (2 * ceil32(return_data.size)) + 608] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _6201) + (32 * _2089) + (2 * ceil32(return_data.size)) + 612] = uint8(ext_call.return_data[0])
                mem[(32 * _6201) + (32 * _2089) + (2 * ceil32(return_data.size)) + 644] = uint8(ext_call.return_data[0])
                mem[(32 * _6201) + (32 * _2089) + (2 * ceil32(return_data.size)) + 676] = mem[(32 * _2089) + ceil32(return_data.size) + 416]
                require ext_code.size(arg7)
                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _2089) + ceil32(return_data.size) + 416]
                mem[(32 * _6201) + (32 * _2089) + (2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _2089) + ceil32(return_data.size) + 448] = ext_call.return_data[0]
                if ext_call.return_data[0] <= arg1 * arg3:
                    if mem[192] - (arg1 * arg3) <= 0:
                        if not mem[192] - (arg1 * arg3):
                            return 0
                        s = 0
                        s = mem[192] - (arg1 * arg3)
                        s = 0
                        t = 0
                        idx = arg1
                        while idx + 1 < arg2:
                            _10158 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_10158 + 32 len 96] = call.data[calldata.size len 96]
                            require 0 < mem[_10158]
                            mem[_10158 + 32] = idx + arg2 / 2 * arg3
                            mem[_10158 + 128] = 2
                            mem[_10158 + 192] = arg6
                            mem[_10158 + 160] = arg5
                            mem[_10158 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_10158 + 228] = idx + arg2 / 2 * arg3
                            mem[_10158 + 260] = 64
                            mem[_10158 + 292] = 2
                            u = 0
                            while u < 64:
                                mem[u + _10158 + 324] = mem[u + _10158 + 160]
                                u = u + 32
                                continue 
                            require ext_code.size(arg4)
                            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args idx + arg2 / 2 * arg3, Array(len=2, data=mem[_10158 + 324 len 64])
                            if not ext_call.success:
                                mem[_10158 + 224] = 3
                                mem[_10158 + 256 len 96] = call.data[calldata.size len 96]
                                mem[_10158 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[_10158 + 352] = 2
                                mem[64] = _10158 + 448
                                mem[_10158 + 416] = arg6
                                mem[_10158 + 384] = arg5
                                mem[_10158 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_10158 + 452] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[_10158 + 484] = 64
                                mem[_10158 + 516] = 2
                                u = 0
                                while u < 64:
                                    mem[u + _10158 + 548] = mem[u + _10158 + 384]
                                    u = u + 32
                                    continue 
                                require ext_code.size(arg4)
                                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[_10158 + 548 len 64])
                                if not ext_call.success:
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                mem[_10158 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _10158 + ceil32(return_data.size) + 448
                                require return_data.size >= 32
                                _13684 = mem[_10158 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                                require mem[_10158 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                                require mem[_10158 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                                require mem[_10158 + mem[_10158 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448] <= 4294967296 and mem[_10158 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[_10158 + mem[_10158 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]) + 32 <= return_data.size
                                mem[_10158 + ceil32(return_data.size) + 448] = mem[_10158 + mem[_10158 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]
                                _13758 = mem[_10158 + _13684 + 448]
                                u = 0
                                while u < 32 * _13758:
                                    mem[u + _10158 + ceil32(return_data.size) + 480] = mem[u + _10158 + _13684 + 480]
                                    u = u + 32
                                    continue 
                                mem[64] = (32 * _13758) + _10158 + ceil32(return_data.size) + 480
                                require mem[_10158 + ceil32(return_data.size) + 448] - 1 < mem[_10158 + ceil32(return_data.size) + 448]
                                mem[_10158 + 288] = mem[(32 * mem[_10158 + ceil32(return_data.size) + 448] - 1) + _10158 + ceil32(return_data.size) + 480]
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _13758) + _10158 + ceil32(return_data.size) + 484] = uint8(ext_call.return_data[0])
                                mem[(32 * _13758) + _10158 + ceil32(return_data.size) + 516] = uint8(ext_call.return_data[0])
                                mem[(32 * _13758) + _10158 + ceil32(return_data.size) + 548] = mem[_10158 + 288]
                                require ext_code.size(arg7)
                                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[_10158 + 288]
                                mem[(32 * _13758) + _10158 + ceil32(return_data.size) + 480] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_10158 + 320] = ext_call.return_data[0]
                                if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            mem[_10158 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _10158 + ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _12040 = mem[_10158 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32
                            require mem[_10158 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 <= 4294967296
                            require mem[_10158 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 32 <= return_data.size
                            require mem[_10158 + mem[_10158 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224] <= 4294967296 and mem[_10158 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + (32 * mem[_10158 + mem[_10158 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[_10158 + ceil32(return_data.size) + 224] = mem[_10158 + mem[_10158 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]
                            _12086 = mem[_10158 + _12040 + 224]
                            u = 0
                            while u < 32 * _12086:
                                mem[u + _10158 + ceil32(return_data.size) + 256] = mem[u + _10158 + _12040 + 256]
                                u = u + 32
                                continue 
                            mem[64] = (32 * _12086) + _10158 + ceil32(return_data.size) + 256
                            require mem[_10158 + ceil32(return_data.size) + 224] - 1 < mem[_10158 + ceil32(return_data.size) + 224]
                            require 1 < mem[_10158]
                            mem[_10158 + 64] = mem[(32 * mem[_10158 + ceil32(return_data.size) + 224] - 1) + _10158 + ceil32(return_data.size) + 256]
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 1 < mem[_10158]
                            require ext_code.size(arg7)
                            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[_10158 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 2 < mem[_10158]
                            mem[_10158 + 96] = ext_call.return_data[0]
                            require 2 < mem[_10158]
                            if ext_call.return_data[0] <= idx + arg2 / 2 * arg3:
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256] = 3
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 384] = 2
                                mem[64] = (32 * _12086) + _10158 + ceil32(return_data.size) + 480
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 448] = arg6
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 416] = arg5
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 516] = 64
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 548] = 2
                                u = 0
                                while u < 64:
                                    mem[u + (32 * _12086) + _10158 + ceil32(return_data.size) + 580] = mem[u + (32 * _12086) + _10158 + ceil32(return_data.size) + 416]
                                    u = u + 32
                                    continue 
                                require ext_code.size(arg4)
                                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 580 len 64])
                                if not ext_call.success:
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 480
                                require return_data.size >= 32
                                _14892 = mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                                require mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                                require mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _12086) + _10158 + ceil32(return_data.size) + mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _12086) + _10158 + ceil32(return_data.size) + mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                                mem[(32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12086) + _10158 + ceil32(return_data.size) + mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                                _14981 = mem[(32 * _12086) + _10158 + ceil32(return_data.size) + _14892 + 480]
                                u = 0
                                while u < 32 * _14981:
                                    mem[u + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12086) + _10158 + ceil32(return_data.size) + _14892 + 512]
                                    u = u + 32
                                    continue 
                                mem[64] = (32 * _14981) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512
                                require mem[(32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 480]
                                require 1 < mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256]
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512]
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _14981) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 516] = arg5
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg5
                                mem[(32 * _14981) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 1 < mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256]
                                mem[(32 * _14981) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _14981) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                                mem[(32 * _14981) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                                mem[(32 * _14981) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 320]
                                require ext_code.size(arg7)
                                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 320]
                                mem[(32 * _14981) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256]
                                mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                require 2 < mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256]
                                if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                require 2 < mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256]
                                if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            require 2 < mem[_10158]
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256] = 3
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 384] = 2
                            mem[64] = (32 * _12086) + _10158 + ceil32(return_data.size) + 480
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 448] = arg6
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 416] = arg5
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 516] = 64
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 548] = 2
                            u = 0
                            while u < 64:
                                mem[u + (32 * _12086) + _10158 + ceil32(return_data.size) + 580] = mem[u + (32 * _12086) + _10158 + ceil32(return_data.size) + 416]
                                u = u + 32
                                continue 
                            require ext_code.size(arg4)
                            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 580 len 64])
                            if not ext_call.success:
                                if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                                    if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                        s = 0
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = idx + arg2 / 2 * arg3
                                    t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    idx = idx
                                    continue 
                                if t >= 0:
                                    s = 0
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = 0
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = 0
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 480
                            require return_data.size >= 32
                            _14894 = mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                            require mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                            require mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                            require mem[(32 * _12086) + _10158 + ceil32(return_data.size) + mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _12086) + _10158 + ceil32(return_data.size) + mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                            mem[(32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12086) + _10158 + ceil32(return_data.size) + mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                            _14982 = mem[(32 * _12086) + _10158 + ceil32(return_data.size) + _14894 + 480]
                            u = 0
                            while u < 32 * _14982:
                                mem[u + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12086) + _10158 + ceil32(return_data.size) + _14894 + 512]
                                u = u + 32
                                continue 
                            mem[64] = (32 * _14982) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512
                            require mem[(32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 480]
                            require 1 < mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256]
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512]
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _14982) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 516] = arg5
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg5
                            mem[(32 * _14982) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 1 < mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256]
                            mem[(32 * _14982) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _14982) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                            mem[(32 * _14982) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                            mem[(32 * _14982) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 320]
                            require ext_code.size(arg7)
                            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 320]
                            mem[(32 * _14982) + (32 * _12086) + _10158 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 2 < mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256]
                            mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                            require 2 < mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256]
                            if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                                if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                                    if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                        s = 0
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = idx + arg2 / 2 * arg3
                                    t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    idx = idx
                                    continue 
                                if t >= 0:
                                    s = 0
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = 0
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = 0
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            require 2 < mem[(32 * _12086) + _10158 + ceil32(return_data.size) + 256]
                            if ext_call.return_data[0] >= ext_call.return_data[0] - arg3:
                                if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = idx + arg2 / 2 * arg3
                                t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                idx = idx
                                continue 
                            if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                            s = arg3 + (idx + arg2 / 2 * arg3)
                            t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        return t, s, 0
                    if not mem[192] - (arg1 * arg3):
                        return 0, 0, 1
                    s = 0
                    s = mem[192] - (arg1 * arg3)
                    s = 0
                    t = 0
                    idx = arg1
                    while idx + 1 < arg2:
                        _10160 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_10160 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[_10160]
                        mem[_10160 + 32] = idx + arg2 / 2 * arg3
                        mem[_10160 + 128] = 2
                        mem[64] = _10160 + 224
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg7)
                        staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, idx + arg2 / 2 * arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[_10160]
                        mem[_10160 + 64] = ext_call.return_data[0]
                        mem[_10160 + 192] = arg5
                        mem[_10160 + 160] = arg6
                        require 1 < mem[_10160]
                        mem[_10160 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_10160 + 228] = ext_call.return_data[0]
                        mem[_10160 + 260] = 64
                        mem[_10160 + 292] = 2
                        u = 0
                        while u < 64:
                            mem[u + _10160 + 324] = mem[u + _10160 + 160]
                            u = u + 32
                            continue 
                        require ext_code.size(arg4)
                        staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[_10160 + 324 len 64])
                        if not ext_call.success:
                            mem[_10160 + 224] = 3
                            mem[_10160 + 256 len 96] = call.data[calldata.size len 96]
                            mem[_10160 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                            mem[_10160 + 352] = 2
                            mem[64] = _10160 + 448
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_10160 + 288] = ext_call.return_data[0]
                            mem[_10160 + 416] = arg5
                            mem[_10160 + 384] = arg6
                            mem[_10160 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_10160 + 452] = ext_call.return_data[0]
                            mem[_10160 + 484] = 64
                            mem[_10160 + 516] = 2
                            u = 0
                            while u < 64:
                                mem[u + _10160 + 548] = mem[u + _10160 + 384]
                                u = u + 32
                                continue 
                            require ext_code.size(arg4)
                            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=2, data=mem[_10160 + 548 len 64])
                            if not ext_call.success:
                                if t >= 0:
                                    s = 0
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            mem[_10160 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _10160 + ceil32(return_data.size) + 448
                            require return_data.size >= 32
                            _13688 = mem[_10160 + 448 len 4], ext_call.return_data[0 len 28]
                            require mem[_10160 + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[_10160 + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[_10160 + mem[_10160 + 448 len 4], ext_call.return_data[0 len 28] + 448] <= 4294967296 and mem[_10160 + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[_10160 + mem[_10160 + 448 len 4], ext_call.return_data[0 len 28] + 448]) + 32 <= return_data.size
                            mem[_10160 + ceil32(return_data.size) + 448] = mem[_10160 + mem[_10160 + 448 len 4], ext_call.return_data[0 len 28] + 448]
                            _13760 = mem[_10160 + _13688 + 448]
                            u = 0
                            while u < 32 * _13760:
                                mem[u + _10160 + ceil32(return_data.size) + 480] = mem[u + _10160 + _13688 + 480]
                                u = u + 32
                                continue 
                            mem[64] = (32 * _13760) + _10160 + ceil32(return_data.size) + 480
                            require mem[_10160 + ceil32(return_data.size) + 448] - 1 < mem[_10160 + ceil32(return_data.size) + 448]
                            mem[_10160 + 320] = mem[(32 * mem[_10160 + ceil32(return_data.size) + 448] - 1) + _10160 + ceil32(return_data.size) + 480]
                            if mem[(32 * mem[_10160 + ceil32(return_data.size) + 448] - 1) + _10160 + ceil32(return_data.size) + 480] <= arg3 + (idx + arg2 / 2 * arg3):
                                if t >= 0:
                                    s = 0
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            if 0 >= mem[(32 * mem[_10160 + ceil32(return_data.size) + 448] - 1) + _10160 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3):
                                if t >= 0:
                                    s = mem[(32 * mem[_10160 + ceil32(return_data.size) + 448] - 1) + _10160 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = mem[(32 * mem[_10160 + ceil32(return_data.size) + 448] - 1) + _10160 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            if t >= mem[(32 * mem[_10160 + ceil32(return_data.size) + 448] - 1) + _10160 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3):
                                s = mem[(32 * mem[_10160 + ceil32(return_data.size) + 448] - 1) + _10160 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = s
                                t = t
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            s = mem[(32 * mem[_10160 + ceil32(return_data.size) + 448] - 1) + _10160 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = arg3 + (idx + arg2 / 2 * arg3)
                            t = mem[(32 * mem[_10160 + ceil32(return_data.size) + 448] - 1) + _10160 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        mem[_10160 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _10160 + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _12042 = mem[_10160 + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[_10160 + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[_10160 + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[_10160 + mem[_10160 + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[_10160 + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[_10160 + mem[_10160 + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                        mem[_10160 + ceil32(return_data.size) + 224] = mem[_10160 + mem[_10160 + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        _12089 = mem[_10160 + _12042 + 224]
                        u = 0
                        while u < 32 * _12089:
                            mem[u + _10160 + ceil32(return_data.size) + 256] = mem[u + _10160 + _12042 + 256]
                            u = u + 32
                            continue 
                        mem[64] = (32 * _12089) + _10160 + ceil32(return_data.size) + 256
                        require mem[_10160 + ceil32(return_data.size) + 224] - 1 < mem[_10160 + ceil32(return_data.size) + 224]
                        require 2 < mem[_10160]
                        mem[_10160 + 96] = mem[(32 * mem[_10160 + ceil32(return_data.size) + 224] - 1) + _10160 + ceil32(return_data.size) + 256]
                        require 2 < mem[_10160]
                        if mem[_10160 + 96] <= idx + arg2 / 2 * arg3:
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 256] = 3
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 384] = 2
                            mem[64] = (32 * _12089) + _10160 + ceil32(return_data.size) + 480
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 448] = arg5
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 416] = arg6
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 516] = 64
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 548] = 2
                            u = 0
                            while u < 64:
                                mem[u + (32 * _12089) + _10160 + ceil32(return_data.size) + 580] = mem[u + (32 * _12089) + _10160 + ceil32(return_data.size) + 416]
                                u = u + 32
                                continue 
                            require ext_code.size(arg4)
                            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=2, data=mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 580 len 64])
                            if not ext_call.success:
                                if t >= 0:
                                    s = 0
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 480
                            require return_data.size >= 32
                            _14898 = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
                            require mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _12089) + _10160 + ceil32(return_data.size) + mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _12089) + _10160 + ceil32(return_data.size) + mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
                            mem[(32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
                            _14984 = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + _14898 + 480]
                            u = 0
                            while u < 32 * _14984:
                                mem[u + (32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12089) + _10160 + ceil32(return_data.size) + _14898 + 512]
                                u = u + 32
                                continue 
                            mem[64] = (32 * _14984) + (32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 512
                            require mem[(32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 480]
                            require 2 < mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 256]
                            mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 512]
                            require 2 < mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 256]
                            if mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                                if t >= 0:
                                    s = 0
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            require 2 < mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 256]
                            if 0 >= mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                                if t >= 0:
                                    s = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = idx + arg2 / 2 * arg3
                                t = 0
                                idx = idx
                                continue 
                            if t >= mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                                s = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = s
                                t = t
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            s = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            s = 0
                            s = arg3 + (idx + arg2 / 2 * arg3)
                            t = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        require 2 < mem[_10160]
                        _13809 = mem[_10160 + 96]
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 256] = 3
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 384] = 2
                        mem[64] = (32 * _12089) + _10160 + ceil32(return_data.size) + 480
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg7)
                        staticcall arg7.getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args arg6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg7)
                        staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 448] = arg5
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 416] = arg6
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 516] = 64
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 548] = 2
                        u = 0
                        while u < 64:
                            mem[u + (32 * _12089) + _10160 + ceil32(return_data.size) + 580] = mem[u + (32 * _12089) + _10160 + ceil32(return_data.size) + 416]
                            u = u + 32
                            continue 
                        require ext_code.size(arg4)
                        staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 580 len 64])
                        if not ext_call.success:
                            if _13809 - (idx + arg2 / 2 * arg3) >= 0:
                                if t >= _13809 - (idx + arg2 / 2 * arg3):
                                    s = 0
                                    s = _13809 - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = _13809 - (idx + arg2 / 2 * arg3)
                                s = idx + arg2 / 2 * arg3
                                t = _13809 - (idx + arg2 / 2 * arg3)
                                idx = idx
                                continue 
                            if t >= 0:
                                s = 0
                                s = _13809 - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            s = 0
                            s = _13809 - (idx + arg2 / 2 * arg3)
                            s = arg3 + (idx + arg2 / 2 * arg3)
                            t = 0
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 480
                        require return_data.size >= 32
                        _14900 = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
                        require mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _12089) + _10160 + ceil32(return_data.size) + mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _12089) + _10160 + ceil32(return_data.size) + mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
                        mem[(32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
                        _14985 = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + _14900 + 480]
                        u = 0
                        while u < 32 * _14985:
                            mem[u + (32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12089) + _10160 + ceil32(return_data.size) + _14900 + 512]
                            u = u + 32
                            continue 
                        mem[64] = (32 * _14985) + (32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 512
                        require mem[(32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 480]
                        require 2 < mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 256]
                        mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12089) + _10160 + (2 * ceil32(return_data.size)) + 512]
                        require 2 < mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 256]
                        if mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                            if _13809 - (idx + arg2 / 2 * arg3) >= 0:
                                if t >= _13809 - (idx + arg2 / 2 * arg3):
                                    s = 0
                                    s = _13809 - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = 0
                                s = _13809 - (idx + arg2 / 2 * arg3)
                                s = idx + arg2 / 2 * arg3
                                t = _13809 - (idx + arg2 / 2 * arg3)
                                idx = idx
                                continue 
                            if t >= 0:
                                s = 0
                                s = _13809 - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            s = 0
                            s = _13809 - (idx + arg2 / 2 * arg3)
                            s = arg3 + (idx + arg2 / 2 * arg3)
                            t = 0
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        require 2 < mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 256]
                        if _13809 >= mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3:
                            if t >= _13809 - (idx + arg2 / 2 * arg3):
                                s = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                s = _13809 - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = idx
                                continue 
                            s = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            s = _13809 - (idx + arg2 / 2 * arg3)
                            s = idx + arg2 / 2 * arg3
                            t = _13809 - (idx + arg2 / 2 * arg3)
                            idx = idx
                            continue 
                        if t >= mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                            s = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            s = _13809 - (idx + arg2 / 2 * arg3)
                            s = s
                            t = t
                            idx = (idx + arg2 / 2) + 1
                            continue 
                        s = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                        s = _13809 - (idx + arg2 / 2 * arg3)
                        s = arg3 + (idx + arg2 / 2 * arg3)
                        t = mem[(32 * _12089) + _10160 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                        idx = (idx + arg2 / 2) + 1
                        continue 
                else:
                    if mem[192] <= ext_call.return_data[0]:
                        if mem[192] - (arg1 * arg3):
                            s = mem[(32 * _2089) + ceil32(return_data.size) + 448] - (arg1 * arg3)
                            s = mem[192] - (arg1 * arg3)
                            s = 0
                            t = 0
                            idx = arg1
                            while idx + 1 < arg2:
                                _10162 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_10162 + 32 len 96] = call.data[calldata.size len 96]
                                require 0 < mem[_10162]
                                mem[_10162 + 32] = idx + arg2 / 2 * arg3
                                mem[_10162 + 128] = 2
                                mem[_10162 + 192] = arg6
                                mem[_10162 + 160] = arg5
                                mem[_10162 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_10162 + 228] = idx + arg2 / 2 * arg3
                                mem[_10162 + 260] = 64
                                mem[_10162 + 292] = 2
                                u = 0
                                while u < 64:
                                    mem[u + _10162 + 324] = mem[u + _10162 + 160]
                                    u = u + 32
                                    continue 
                                require ext_code.size(arg4)
                                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args idx + arg2 / 2 * arg3, Array(len=2, data=mem[_10162 + 324 len 64])
                                if not ext_call.success:
                                    mem[_10162 + 224] = 3
                                    mem[_10162 + 256 len 96] = call.data[calldata.size len 96]
                                    mem[_10162 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                                    mem[_10162 + 352] = 2
                                    mem[64] = _10162 + 448
                                    mem[_10162 + 416] = arg6
                                    mem[_10162 + 384] = arg5
                                    mem[_10162 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_10162 + 452] = arg3 + (idx + arg2 / 2 * arg3)
                                    mem[_10162 + 484] = 64
                                    mem[_10162 + 516] = 2
                                    u = 0
                                    while u < 64:
                                        mem[u + _10162 + 548] = mem[u + _10162 + 384]
                                        u = u + 32
                                        continue 
                                    require ext_code.size(arg4)
                                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[_10162 + 548 len 64])
                                    if not ext_call.success:
                                        if t >= 0:
                                            s = 0
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    mem[_10162 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _10162 + ceil32(return_data.size) + 448
                                    require return_data.size >= 32
                                    _13692 = mem[_10162 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                                    require mem[_10162 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                                    require mem[_10162 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                                    require mem[_10162 + mem[_10162 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448] <= 4294967296 and mem[_10162 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[_10162 + mem[_10162 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]) + 32 <= return_data.size
                                    mem[_10162 + ceil32(return_data.size) + 448] = mem[_10162 + mem[_10162 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]
                                    _13762 = mem[_10162 + _13692 + 448]
                                    u = 0
                                    while u < 32 * _13762:
                                        mem[u + _10162 + ceil32(return_data.size) + 480] = mem[u + _10162 + _13692 + 480]
                                        u = u + 32
                                        continue 
                                    mem[64] = (32 * _13762) + _10162 + ceil32(return_data.size) + 480
                                    require mem[_10162 + ceil32(return_data.size) + 448] - 1 < mem[_10162 + ceil32(return_data.size) + 448]
                                    mem[_10162 + 288] = mem[(32 * mem[_10162 + ceil32(return_data.size) + 448] - 1) + _10162 + ceil32(return_data.size) + 480]
                                    require ext_code.size(arg7)
                                    staticcall arg7.getTokenIndex(address rg1) with:
                                            gas gas_remaining wei
                                           args arg6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg7)
                                    staticcall arg7.getTokenIndex(address rg1) with:
                                            gas gas_remaining wei
                                           args arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _13762) + _10162 + ceil32(return_data.size) + 484] = uint8(ext_call.return_data[0])
                                    mem[(32 * _13762) + _10162 + ceil32(return_data.size) + 516] = uint8(ext_call.return_data[0])
                                    mem[(32 * _13762) + _10162 + ceil32(return_data.size) + 548] = mem[_10162 + 288]
                                    require ext_code.size(arg7)
                                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[_10162 + 288]
                                    mem[(32 * _13762) + _10162 + ceil32(return_data.size) + 480] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_10162 + 320] = ext_call.return_data[0]
                                    if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                                        if t >= 0:
                                            s = 0
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                        if t >= 0:
                                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = s
                                        t = t
                                        idx = (idx + arg2 / 2) + 1
                                        continue 
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = arg3 + (idx + arg2 / 2 * arg3)
                                    t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                mem[_10162 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _10162 + ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                _12044 = mem[_10162 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32
                                require mem[_10162 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 <= 4294967296
                                require mem[_10162 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 32 <= return_data.size
                                require mem[_10162 + mem[_10162 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224] <= 4294967296 and mem[_10162 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + (32 * mem[_10162 + mem[_10162 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]) + 32 <= return_data.size
                                mem[_10162 + ceil32(return_data.size) + 224] = mem[_10162 + mem[_10162 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]
                                _12092 = mem[_10162 + _12044 + 224]
                                u = 0
                                while u < 32 * _12092:
                                    mem[u + _10162 + ceil32(return_data.size) + 256] = mem[u + _10162 + _12044 + 256]
                                    u = u + 32
                                    continue 
                                mem[64] = (32 * _12092) + _10162 + ceil32(return_data.size) + 256
                                require mem[_10162 + ceil32(return_data.size) + 224] - 1 < mem[_10162 + ceil32(return_data.size) + 224]
                                require 1 < mem[_10162]
                                mem[_10162 + 64] = mem[(32 * mem[_10162 + ceil32(return_data.size) + 224] - 1) + _10162 + ceil32(return_data.size) + 256]
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 1 < mem[_10162]
                                require ext_code.size(arg7)
                                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[_10162 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_10162]
                                mem[_10162 + 96] = ext_call.return_data[0]
                                require 2 < mem[_10162]
                                if ext_call.return_data[0] <= idx + arg2 / 2 * arg3:
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256] = 3
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 384] = 2
                                    mem[64] = (32 * _12092) + _10162 + ceil32(return_data.size) + 480
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 448] = arg6
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 416] = arg5
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 516] = 64
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 548] = 2
                                    u = 0
                                    while u < 64:
                                        mem[u + (32 * _12092) + _10162 + ceil32(return_data.size) + 580] = mem[u + (32 * _12092) + _10162 + ceil32(return_data.size) + 416]
                                        u = u + 32
                                        continue 
                                    require ext_code.size(arg4)
                                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 580 len 64])
                                    if not ext_call.success:
                                        if t >= 0:
                                            s = 0
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    _14904 = mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                                    require mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                                    require mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _12092) + _10162 + ceil32(return_data.size) + mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _12092) + _10162 + ceil32(return_data.size) + mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                                    mem[(32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12092) + _10162 + ceil32(return_data.size) + mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                                    _14987 = mem[(32 * _12092) + _10162 + ceil32(return_data.size) + _14904 + 480]
                                    u = 0
                                    while u < 32 * _14987:
                                        mem[u + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12092) + _10162 + ceil32(return_data.size) + _14904 + 512]
                                        u = u + 32
                                        continue 
                                    mem[64] = (32 * _14987) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512
                                    require mem[(32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 480]
                                    require 1 < mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256]
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512]
                                    require ext_code.size(arg7)
                                    staticcall arg7.getTokenIndex(address rg1) with:
                                            gas gas_remaining wei
                                           args arg6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14987) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 516] = arg5
                                    require ext_code.size(arg7)
                                    staticcall arg7.getTokenIndex(address rg1) with:
                                            gas gas_remaining wei
                                           args arg5
                                    mem[(32 * _14987) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 1 < mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256]
                                    mem[(32 * _14987) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _14987) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                                    mem[(32 * _14987) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                                    mem[(32 * _14987) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 320]
                                    require ext_code.size(arg7)
                                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 320]
                                    mem[(32 * _14987) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 2 < mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256]
                                    mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                    require 2 < mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256]
                                    if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                                        if t >= 0:
                                            s = 0
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    require 2 < mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256]
                                    if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                        if t >= 0:
                                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = s
                                        t = t
                                        idx = (idx + arg2 / 2) + 1
                                        continue 
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = arg3 + (idx + arg2 / 2 * arg3)
                                    t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                require 2 < mem[_10162]
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256] = 3
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 384] = 2
                                mem[64] = (32 * _12092) + _10162 + ceil32(return_data.size) + 480
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 448] = arg6
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 416] = arg5
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 516] = 64
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 548] = 2
                                u = 0
                                while u < 64:
                                    mem[u + (32 * _12092) + _10162 + ceil32(return_data.size) + 580] = mem[u + (32 * _12092) + _10162 + ceil32(return_data.size) + 416]
                                    u = u + 32
                                    continue 
                                require ext_code.size(arg4)
                                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 580 len 64])
                                if not ext_call.success:
                                    if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                                        if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                            s = 0
                                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = idx + arg2 / 2 * arg3
                                        t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        idx = idx
                                        continue 
                                    if t >= 0:
                                        s = 0
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = (idx + arg2 / 2) + 1
                                        continue 
                                    s = 0
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = arg3 + (idx + arg2 / 2 * arg3)
                                    t = 0
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 480
                                require return_data.size >= 32
                                _14906 = mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                                require mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                                require mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _12092) + _10162 + ceil32(return_data.size) + mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _12092) + _10162 + ceil32(return_data.size) + mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                                mem[(32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12092) + _10162 + ceil32(return_data.size) + mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                                _14988 = mem[(32 * _12092) + _10162 + ceil32(return_data.size) + _14906 + 480]
                                u = 0
                                while u < 32 * _14988:
                                    mem[u + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12092) + _10162 + ceil32(return_data.size) + _14906 + 512]
                                    u = u + 32
                                    continue 
                                mem[64] = (32 * _14988) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512
                                require mem[(32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 480]
                                require 1 < mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256]
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512]
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _14988) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 516] = arg5
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg5
                                mem[(32 * _14988) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 1 < mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256]
                                mem[(32 * _14988) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _14988) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                                mem[(32 * _14988) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                                mem[(32 * _14988) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 320]
                                require ext_code.size(arg7)
                                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 320]
                                mem[(32 * _14988) + (32 * _12092) + _10162 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256]
                                mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                require 2 < mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256]
                                if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                                    if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                                        if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                            s = 0
                                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = idx + arg2 / 2 * arg3
                                        t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        idx = idx
                                        continue 
                                    if t >= 0:
                                        s = 0
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = (idx + arg2 / 2) + 1
                                        continue 
                                    s = 0
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = arg3 + (idx + arg2 / 2 * arg3)
                                    t = 0
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                require 2 < mem[(32 * _12092) + _10162 + ceil32(return_data.size) + 256]
                                if ext_call.return_data[0] >= ext_call.return_data[0] - arg3:
                                    if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = idx + arg2 / 2 * arg3
                                    t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    idx = idx
                                    continue 
                                if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                idx = (idx + arg2 / 2) + 1
                                continue 
                        else:
                            if not ext_call.return_data[0] - (arg1 * arg3):
                                return 0
                            s = mem[(32 * _2089) + ceil32(return_data.size) + 448] - (arg1 * arg3)
                            s = mem[192] - (arg1 * arg3)
                            s = 0
                            t = 0
                            idx = arg1
                            while idx + 1 < arg2:
                                _10164 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_10164 + 32 len 96] = call.data[calldata.size len 96]
                                require 0 < mem[_10164]
                                mem[_10164 + 32] = idx + arg2 / 2 * arg3
                                mem[_10164 + 128] = 2
                                mem[_10164 + 192] = arg6
                                mem[_10164 + 160] = arg5
                                mem[_10164 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_10164 + 228] = idx + arg2 / 2 * arg3
                                mem[_10164 + 260] = 64
                                mem[_10164 + 292] = 2
                                u = 0
                                while u < 64:
                                    mem[u + _10164 + 324] = mem[u + _10164 + 160]
                                    u = u + 32
                                    continue 
                                require ext_code.size(arg4)
                                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args idx + arg2 / 2 * arg3, Array(len=2, data=mem[_10164 + 324 len 64])
                                if not ext_call.success:
                                    mem[_10164 + 224] = 3
                                    mem[_10164 + 256 len 96] = call.data[calldata.size len 96]
                                    mem[_10164 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                                    mem[_10164 + 352] = 2
                                    mem[64] = _10164 + 448
                                    mem[_10164 + 416] = arg6
                                    mem[_10164 + 384] = arg5
                                    mem[_10164 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_10164 + 452] = arg3 + (idx + arg2 / 2 * arg3)
                                    mem[_10164 + 484] = 64
                                    mem[_10164 + 516] = 2
                                    u = 0
                                    while u < 64:
                                        mem[u + _10164 + 548] = mem[u + _10164 + 384]
                                        u = u + 32
                                        continue 
                                    require ext_code.size(arg4)
                                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[_10164 + 548 len 64])
                                    if not ext_call.success:
                                        if t >= 0:
                                            s = 0
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    mem[_10164 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _10164 + ceil32(return_data.size) + 448
                                    require return_data.size >= 32
                                    _13696 = mem[_10164 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                                    require mem[_10164 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                                    require mem[_10164 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                                    require mem[_10164 + mem[_10164 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448] <= 4294967296 and mem[_10164 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[_10164 + mem[_10164 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]) + 32 <= return_data.size
                                    mem[_10164 + ceil32(return_data.size) + 448] = mem[_10164 + mem[_10164 + 448 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 448]
                                    _13764 = mem[_10164 + _13696 + 448]
                                    u = 0
                                    while u < 32 * _13764:
                                        mem[u + _10164 + ceil32(return_data.size) + 480] = mem[u + _10164 + _13696 + 480]
                                        u = u + 32
                                        continue 
                                    mem[64] = (32 * _13764) + _10164 + ceil32(return_data.size) + 480
                                    require mem[_10164 + ceil32(return_data.size) + 448] - 1 < mem[_10164 + ceil32(return_data.size) + 448]
                                    mem[_10164 + 288] = mem[(32 * mem[_10164 + ceil32(return_data.size) + 448] - 1) + _10164 + ceil32(return_data.size) + 480]
                                    require ext_code.size(arg7)
                                    staticcall arg7.getTokenIndex(address rg1) with:
                                            gas gas_remaining wei
                                           args arg6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg7)
                                    staticcall arg7.getTokenIndex(address rg1) with:
                                            gas gas_remaining wei
                                           args arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _13764) + _10164 + ceil32(return_data.size) + 484] = uint8(ext_call.return_data[0])
                                    mem[(32 * _13764) + _10164 + ceil32(return_data.size) + 516] = uint8(ext_call.return_data[0])
                                    mem[(32 * _13764) + _10164 + ceil32(return_data.size) + 548] = mem[_10164 + 288]
                                    require ext_code.size(arg7)
                                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[_10164 + 288]
                                    mem[(32 * _13764) + _10164 + ceil32(return_data.size) + 480] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_10164 + 320] = ext_call.return_data[0]
                                    if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                                        if t >= 0:
                                            s = 0
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                        if t >= 0:
                                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = s
                                        t = t
                                        idx = (idx + arg2 / 2) + 1
                                        continue 
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = arg3 + (idx + arg2 / 2 * arg3)
                                    t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                mem[_10164 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _10164 + ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                _12046 = mem[_10164 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32
                                require mem[_10164 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 <= 4294967296
                                require mem[_10164 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 32 <= return_data.size
                                require mem[_10164 + mem[_10164 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224] <= 4294967296 and mem[_10164 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + (32 * mem[_10164 + mem[_10164 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]) + 32 <= return_data.size
                                mem[_10164 + ceil32(return_data.size) + 224] = mem[_10164 + mem[_10164 + 224 len 4], Mask(224, 32, idx + arg2 / 2 * arg3) >> 32 + 224]
                                _12095 = mem[_10164 + _12046 + 224]
                                u = 0
                                while u < 32 * _12095:
                                    mem[u + _10164 + ceil32(return_data.size) + 256] = mem[u + _10164 + _12046 + 256]
                                    u = u + 32
                                    continue 
                                mem[64] = (32 * _12095) + _10164 + ceil32(return_data.size) + 256
                                require mem[_10164 + ceil32(return_data.size) + 224] - 1 < mem[_10164 + ceil32(return_data.size) + 224]
                                require 1 < mem[_10164]
                                mem[_10164 + 64] = mem[(32 * mem[_10164 + ceil32(return_data.size) + 224] - 1) + _10164 + ceil32(return_data.size) + 256]
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 1 < mem[_10164]
                                require ext_code.size(arg7)
                                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * mem[_10164 + ceil32(return_data.size) + 224] - 1) + _10164 + ceil32(return_data.size) + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[_10164]
                                mem[_10164 + 96] = ext_call.return_data[0]
                                require 2 < mem[_10164]
                                if ext_call.return_data[0] <= idx + arg2 / 2 * arg3:
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256] = 3
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 384] = 2
                                    mem[64] = (32 * _12095) + _10164 + ceil32(return_data.size) + 480
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 448] = arg6
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 416] = arg5
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 516] = 64
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 548] = 2
                                    u = 0
                                    while u < 64:
                                        mem[u + (32 * _12095) + _10164 + ceil32(return_data.size) + 580] = mem[u + (32 * _12095) + _10164 + ceil32(return_data.size) + 416]
                                        u = u + 32
                                        continue 
                                    require ext_code.size(arg4)
                                    staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 580 len 64])
                                    if not ext_call.success:
                                        if t >= 0:
                                            s = 0
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    _14910 = mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                                    require mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                                    require mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _12095) + _10164 + ceil32(return_data.size) + mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _12095) + _10164 + ceil32(return_data.size) + mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                                    mem[(32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12095) + _10164 + ceil32(return_data.size) + mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                                    _14990 = mem[(32 * _12095) + _10164 + ceil32(return_data.size) + _14910 + 480]
                                    u = 0
                                    while u < 32 * _14990:
                                        mem[u + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12095) + _10164 + ceil32(return_data.size) + _14910 + 512]
                                        u = u + 32
                                        continue 
                                    mem[64] = (32 * _14990) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512
                                    require mem[(32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 480]
                                    require 1 < mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256]
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512]
                                    require ext_code.size(arg7)
                                    staticcall arg7.getTokenIndex(address rg1) with:
                                            gas gas_remaining wei
                                           args arg6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14990) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 516] = arg5
                                    require ext_code.size(arg7)
                                    staticcall arg7.getTokenIndex(address rg1) with:
                                            gas gas_remaining wei
                                           args arg5
                                    mem[(32 * _14990) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 1 < mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256]
                                    mem[(32 * _14990) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _14990) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                                    mem[(32 * _14990) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                                    mem[(32 * _14990) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 320]
                                    require ext_code.size(arg7)
                                    staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 320]
                                    mem[(32 * _14990) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require 2 < mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256]
                                    mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                    require 2 < mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256]
                                    if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                                        if t >= 0:
                                            s = 0
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    require 2 < mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256]
                                    if 0 >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                        if t >= 0:
                                            s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                            s = 0
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = idx + arg2 / 2 * arg3
                                        t = 0
                                        idx = idx
                                        continue 
                                    if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = s
                                        t = t
                                        idx = (idx + arg2 / 2) + 1
                                        continue 
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = arg3 + (idx + arg2 / 2 * arg3)
                                    t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                require 2 < mem[_10164]
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256] = 3
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 384] = 2
                                mem[64] = (32 * _12095) + _10164 + ceil32(return_data.size) + 480
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 448] = arg6
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 416] = arg5
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 484] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 516] = 64
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 548] = 2
                                u = 0
                                while u < 64:
                                    mem[u + (32 * _12095) + _10164 + ceil32(return_data.size) + 580] = mem[u + (32 * _12095) + _10164 + ceil32(return_data.size) + 416]
                                    u = u + 32
                                    continue 
                                require ext_code.size(arg4)
                                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3 + (idx + arg2 / 2 * arg3), Array(len=2, data=mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 580 len 64])
                                if not ext_call.success:
                                    if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                                        if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                            s = 0
                                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = idx + arg2 / 2 * arg3
                                        t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        idx = idx
                                        continue 
                                    if t >= 0:
                                        s = 0
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = (idx + arg2 / 2) + 1
                                        continue 
                                    s = 0
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = arg3 + (idx + arg2 / 2 * arg3)
                                    t = 0
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 480
                                require return_data.size >= 32
                                _14912 = mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32
                                require mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 <= 4294967296
                                require mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _12095) + _10164 + ceil32(return_data.size) + mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480] <= 4294967296 and mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + (32 * mem[(32 * _12095) + _10164 + ceil32(return_data.size) + mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]) + 32 <= return_data.size
                                mem[(32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12095) + _10164 + ceil32(return_data.size) + mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg3 + (idx + arg2 / 2 * arg3)) >> 32 + 480]
                                _14991 = mem[(32 * _12095) + _10164 + ceil32(return_data.size) + _14912 + 480]
                                u = 0
                                while u < 32 * _14991:
                                    mem[u + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12095) + _10164 + ceil32(return_data.size) + _14912 + 512]
                                    u = u + 32
                                    continue 
                                mem[64] = (32 * _14991) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512
                                require mem[(32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 480]
                                require 1 < mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256]
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 320] = mem[(32 * mem[(32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512]
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _14991) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 516] = arg5
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg5
                                mem[(32 * _14991) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 1 < mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256]
                                mem[(32 * _14991) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _14991) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 516] = uint8(ext_call.return_data[0])
                                mem[(32 * _14991) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 548] = uint8(ext_call.return_data[0])
                                mem[(32 * _14991) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 580] = mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 320]
                                require ext_code.size(arg7)
                                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 320]
                                mem[(32 * _14991) + (32 * _12095) + _10164 + (2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 < mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256]
                                mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                require 2 < mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256]
                                if ext_call.return_data[0] <= arg3 + (idx + arg2 / 2 * arg3):
                                    if ext_call.return_data[0] - (idx + arg2 / 2 * arg3) >= 0:
                                        if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                            s = 0
                                            s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                            s = s
                                            t = t
                                            idx = idx
                                            continue 
                                        s = 0
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = idx + arg2 / 2 * arg3
                                        t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        idx = idx
                                        continue 
                                    if t >= 0:
                                        s = 0
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = (idx + arg2 / 2) + 1
                                        continue 
                                    s = 0
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = arg3 + (idx + arg2 / 2 * arg3)
                                    t = 0
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                require 2 < mem[(32 * _12095) + _10164 + ceil32(return_data.size) + 256]
                                if ext_call.return_data[0] >= ext_call.return_data[0] - arg3:
                                    if t >= ext_call.return_data[0] - (idx + arg2 / 2 * arg3):
                                        s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = idx + arg2 / 2 * arg3
                                    t = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    idx = idx
                                    continue 
                                if t >= ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3):
                                    s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                s = ext_call.return_data[0] - (idx + arg2 / 2 * arg3)
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = ext_call.return_data[0] - arg3 - (idx + arg2 / 2 * arg3)
                                idx = (idx + arg2 / 2) + 1
                                continue 
                        return t, s, 0
                    if mem[192] - (arg1 * arg3):
                        s = mem[(32 * _2089) + ceil32(return_data.size) + 448] - (arg1 * arg3)
                        s = mem[192] - (arg1 * arg3)
                        s = 0
                        t = 0
                        idx = arg1
                        while idx + 1 < arg2:
                            _10166 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_10166 + 32 len 96] = call.data[calldata.size len 96]
                            require 0 < mem[_10166]
                            mem[_10166 + 32] = idx + arg2 / 2 * arg3
                            mem[_10166 + 128] = 2
                            mem[64] = _10166 + 224
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, idx + arg2 / 2 * arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 1 < mem[_10166]
                            mem[_10166 + 64] = ext_call.return_data[0]
                            mem[_10166 + 192] = arg5
                            mem[_10166 + 160] = arg6
                            require 1 < mem[_10166]
                            mem[_10166 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_10166 + 228] = ext_call.return_data[0]
                            mem[_10166 + 260] = 64
                            mem[_10166 + 292] = 2
                            u = 0
                            while u < 64:
                                mem[u + _10166 + 324] = mem[u + _10166 + 160]
                                u = u + 32
                                continue 
                            require ext_code.size(arg4)
                            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=2, data=mem[_10166 + 324 len 64])
                            if not ext_call.success:
                                mem[_10166 + 224] = 3
                                mem[_10166 + 256 len 96] = call.data[calldata.size len 96]
                                mem[_10166 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[_10166 + 352] = 2
                                mem[64] = _10166 + 448
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg7)
                                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_10166 + 288] = ext_call.return_data[0]
                                mem[_10166 + 416] = arg5
                                mem[_10166 + 384] = arg6
                                mem[_10166 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_10166 + 452] = ext_call.return_data[0]
                                mem[_10166 + 484] = 64
                                mem[_10166 + 516] = 2
                                u = 0
                                while u < 64:
                                    mem[u + _10166 + 548] = mem[u + _10166 + 384]
                                    u = u + 32
                                    continue 
                                require ext_code.size(arg4)
                                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=2, data=mem[_10166 + 548 len 64])
                                if not ext_call.success:
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                mem[_10166 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _10166 + ceil32(return_data.size) + 448
                                require return_data.size >= 32
                                _13700 = mem[_10166 + 448 len 4], ext_call.return_data[0 len 28]
                                require mem[_10166 + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_10166 + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[_10166 + mem[_10166 + 448 len 4], ext_call.return_data[0 len 28] + 448] <= 4294967296 and mem[_10166 + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[_10166 + mem[_10166 + 448 len 4], ext_call.return_data[0 len 28] + 448]) + 32 <= return_data.size
                                mem[_10166 + ceil32(return_data.size) + 448] = mem[_10166 + mem[_10166 + 448 len 4], ext_call.return_data[0 len 28] + 448]
                                _13766 = mem[_10166 + _13700 + 448]
                                u = 0
                                while u < 32 * _13766:
                                    mem[u + _10166 + ceil32(return_data.size) + 480] = mem[u + _10166 + _13700 + 480]
                                    u = u + 32
                                    continue 
                                mem[64] = (32 * _13766) + _10166 + ceil32(return_data.size) + 480
                                require mem[_10166 + ceil32(return_data.size) + 448] - 1 < mem[_10166 + ceil32(return_data.size) + 448]
                                mem[_10166 + 320] = mem[(32 * mem[_10166 + ceil32(return_data.size) + 448] - 1) + _10166 + ceil32(return_data.size) + 480]
                                if mem[(32 * mem[_10166 + ceil32(return_data.size) + 448] - 1) + _10166 + ceil32(return_data.size) + 480] <= arg3 + (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                if 0 >= mem[(32 * mem[_10166 + ceil32(return_data.size) + 448] - 1) + _10166 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = mem[(32 * mem[_10166 + ceil32(return_data.size) + 448] - 1) + _10166 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = mem[(32 * mem[_10166 + ceil32(return_data.size) + 448] - 1) + _10166 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                if t >= mem[(32 * mem[_10166 + ceil32(return_data.size) + 448] - 1) + _10166 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3):
                                    s = mem[(32 * mem[_10166 + ceil32(return_data.size) + 448] - 1) + _10166 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = mem[(32 * mem[_10166 + ceil32(return_data.size) + 448] - 1) + _10166 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = mem[(32 * mem[_10166 + ceil32(return_data.size) + 448] - 1) + _10166 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            mem[_10166 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _10166 + ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _12048 = mem[_10166 + 224 len 4], ext_call.return_data[0 len 28]
                            require mem[_10166 + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[_10166 + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[_10166 + mem[_10166 + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[_10166 + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[_10166 + mem[_10166 + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                            mem[_10166 + ceil32(return_data.size) + 224] = mem[_10166 + mem[_10166 + 224 len 4], ext_call.return_data[0 len 28] + 224]
                            _12098 = mem[_10166 + _12048 + 224]
                            u = 0
                            while u < 32 * _12098:
                                mem[u + _10166 + ceil32(return_data.size) + 256] = mem[u + _10166 + _12048 + 256]
                                u = u + 32
                                continue 
                            mem[64] = (32 * _12098) + _10166 + ceil32(return_data.size) + 256
                            require mem[_10166 + ceil32(return_data.size) + 224] - 1 < mem[_10166 + ceil32(return_data.size) + 224]
                            require 2 < mem[_10166]
                            mem[_10166 + 96] = mem[(32 * mem[_10166 + ceil32(return_data.size) + 224] - 1) + _10166 + ceil32(return_data.size) + 256]
                            require 2 < mem[_10166]
                            if mem[(32 * mem[_10166 + ceil32(return_data.size) + 224] - 1) + _10166 + ceil32(return_data.size) + 256] <= idx + arg2 / 2 * arg3:
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 256] = 3
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 384] = 2
                                mem[64] = (32 * _12098) + _10166 + ceil32(return_data.size) + 480
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg7)
                                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 448] = arg5
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 416] = arg6
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 516] = 64
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 548] = 2
                                u = 0
                                while u < 64:
                                    mem[u + (32 * _12098) + _10166 + ceil32(return_data.size) + 580] = mem[u + (32 * _12098) + _10166 + ceil32(return_data.size) + 416]
                                    u = u + 32
                                    continue 
                                require ext_code.size(arg4)
                                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=2, data=mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 580 len 64])
                                if not ext_call.success:
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 480
                                require return_data.size >= 32
                                _14916 = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _12098) + _10166 + ceil32(return_data.size) + mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _12098) + _10166 + ceil32(return_data.size) + mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
                                mem[(32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
                                _14993 = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + _14916 + 480]
                                u = 0
                                while u < 32 * _14993:
                                    mem[u + (32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12098) + _10166 + ceil32(return_data.size) + _14916 + 512]
                                    u = u + 32
                                    continue 
                                mem[64] = (32 * _14993) + (32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 512
                                require mem[(32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 480]
                                require 2 < mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 256]
                                mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 512]
                                require 2 < mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 256]
                                if mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                require 2 < mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 256]
                                if 0 >= mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                if t >= mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                                    s = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            require 2 < mem[_10166]
                            _13813 = mem[(32 * mem[_10166 + ceil32(return_data.size) + 224] - 1) + _10166 + ceil32(return_data.size) + 256]
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 256] = 3
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 384] = 2
                            mem[64] = (32 * _12098) + _10166 + ceil32(return_data.size) + 480
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 448] = arg5
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 416] = arg6
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 516] = 64
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 548] = 2
                            u = 0
                            while u < 64:
                                mem[u + (32 * _12098) + _10166 + ceil32(return_data.size) + 580] = mem[u + (32 * _12098) + _10166 + ceil32(return_data.size) + 416]
                                u = u + 32
                                continue 
                            require ext_code.size(arg4)
                            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=2, data=mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 580 len 64])
                            if not ext_call.success:
                                if _13813 - (idx + arg2 / 2 * arg3) >= 0:
                                    if t >= _13813 - (idx + arg2 / 2 * arg3):
                                        s = 0
                                        s = _13813 - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = _13813 - (idx + arg2 / 2 * arg3)
                                    s = idx + arg2 / 2 * arg3
                                    t = _13813 - (idx + arg2 / 2 * arg3)
                                    idx = idx
                                    continue 
                                if t >= 0:
                                    s = 0
                                    s = _13813 - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = 0
                                s = _13813 - (idx + arg2 / 2 * arg3)
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = 0
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 480
                            require return_data.size >= 32
                            _14918 = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
                            require mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _12098) + _10166 + ceil32(return_data.size) + mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _12098) + _10166 + ceil32(return_data.size) + mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
                            mem[(32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
                            _14994 = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + _14918 + 480]
                            u = 0
                            while u < 32 * _14994:
                                mem[u + (32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12098) + _10166 + ceil32(return_data.size) + _14918 + 512]
                                u = u + 32
                                continue 
                            mem[64] = (32 * _14994) + (32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 512
                            require mem[(32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 480]
                            require 2 < mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 256]
                            mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12098) + _10166 + (2 * ceil32(return_data.size)) + 512]
                            require 2 < mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 256]
                            if mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                                if _13813 - (idx + arg2 / 2 * arg3) >= 0:
                                    if t >= _13813 - (idx + arg2 / 2 * arg3):
                                        s = 0
                                        s = _13813 - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = _13813 - (idx + arg2 / 2 * arg3)
                                    s = idx + arg2 / 2 * arg3
                                    t = _13813 - (idx + arg2 / 2 * arg3)
                                    idx = idx
                                    continue 
                                if t >= 0:
                                    s = 0
                                    s = _13813 - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = 0
                                s = _13813 - (idx + arg2 / 2 * arg3)
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = 0
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            require 2 < mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 256]
                            if _13813 >= mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3:
                                if t >= _13813 - (idx + arg2 / 2 * arg3):
                                    s = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = _13813 - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                s = _13813 - (idx + arg2 / 2 * arg3)
                                s = idx + arg2 / 2 * arg3
                                t = _13813 - (idx + arg2 / 2 * arg3)
                                idx = idx
                                continue 
                            if t >= mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                                s = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                s = _13813 - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            s = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            s = _13813 - (idx + arg2 / 2 * arg3)
                            s = arg3 + (idx + arg2 / 2 * arg3)
                            t = mem[(32 * _12098) + _10166 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            idx = (idx + arg2 / 2) + 1
                            continue 
                    else:
                        if not ext_call.return_data[0] - (arg1 * arg3):
                            return 0, 0, 1
                        s = mem[(32 * _2089) + ceil32(return_data.size) + 448] - (arg1 * arg3)
                        s = mem[192] - (arg1 * arg3)
                        s = 0
                        t = 0
                        idx = arg1
                        while idx + 1 < arg2:
                            _10168 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_10168 + 32 len 96] = call.data[calldata.size len 96]
                            require 0 < mem[_10168]
                            mem[_10168 + 32] = idx + arg2 / 2 * arg3
                            mem[_10168 + 128] = 2
                            mem[64] = _10168 + 224
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, idx + arg2 / 2 * arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 1 < mem[_10168]
                            mem[_10168 + 64] = ext_call.return_data[0]
                            mem[_10168 + 192] = arg5
                            mem[_10168 + 160] = arg6
                            require 1 < mem[_10168]
                            mem[_10168 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_10168 + 228] = ext_call.return_data[0]
                            mem[_10168 + 260] = 64
                            mem[_10168 + 292] = 2
                            u = 0
                            while u < 64:
                                mem[u + _10168 + 324] = mem[u + _10168 + 160]
                                u = u + 32
                                continue 
                            require ext_code.size(arg4)
                            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=2, data=mem[_10168 + 324 len 64])
                            if not ext_call.success:
                                mem[_10168 + 224] = 3
                                mem[_10168 + 256 len 96] = call.data[calldata.size len 96]
                                mem[_10168 + 256] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[_10168 + 352] = 2
                                mem[64] = _10168 + 448
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg7)
                                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_10168 + 288] = ext_call.return_data[0]
                                mem[_10168 + 416] = arg5
                                mem[_10168 + 384] = arg6
                                mem[_10168 + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_10168 + 452] = ext_call.return_data[0]
                                mem[_10168 + 484] = 64
                                mem[_10168 + 516] = 2
                                u = 0
                                while u < 64:
                                    mem[u + _10168 + 548] = mem[u + _10168 + 384]
                                    u = u + 32
                                    continue 
                                require ext_code.size(arg4)
                                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=2, data=mem[_10168 + 548 len 64])
                                if not ext_call.success:
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                mem[_10168 + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _10168 + ceil32(return_data.size) + 448
                                require return_data.size >= 32
                                _13704 = mem[_10168 + 448 len 4], ext_call.return_data[0 len 28]
                                require mem[_10168 + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_10168 + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[_10168 + mem[_10168 + 448 len 4], ext_call.return_data[0 len 28] + 448] <= 4294967296 and mem[_10168 + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[_10168 + mem[_10168 + 448 len 4], ext_call.return_data[0 len 28] + 448]) + 32 <= return_data.size
                                mem[_10168 + ceil32(return_data.size) + 448] = mem[_10168 + mem[_10168 + 448 len 4], ext_call.return_data[0 len 28] + 448]
                                _13768 = mem[_10168 + _13704 + 448]
                                u = 0
                                while u < 32 * _13768:
                                    mem[u + _10168 + ceil32(return_data.size) + 480] = mem[u + _10168 + _13704 + 480]
                                    u = u + 32
                                    continue 
                                mem[64] = (32 * _13768) + _10168 + ceil32(return_data.size) + 480
                                require mem[_10168 + ceil32(return_data.size) + 448] - 1 < mem[_10168 + ceil32(return_data.size) + 448]
                                mem[_10168 + 320] = mem[(32 * mem[_10168 + ceil32(return_data.size) + 448] - 1) + _10168 + ceil32(return_data.size) + 480]
                                if mem[(32 * mem[_10168 + ceil32(return_data.size) + 448] - 1) + _10168 + ceil32(return_data.size) + 480] <= arg3 + (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                if 0 >= mem[(32 * mem[_10168 + ceil32(return_data.size) + 448] - 1) + _10168 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = mem[(32 * mem[_10168 + ceil32(return_data.size) + 448] - 1) + _10168 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = mem[(32 * mem[_10168 + ceil32(return_data.size) + 448] - 1) + _10168 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                if t >= mem[(32 * mem[_10168 + ceil32(return_data.size) + 448] - 1) + _10168 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3):
                                    s = mem[(32 * mem[_10168 + ceil32(return_data.size) + 448] - 1) + _10168 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = mem[(32 * mem[_10168 + ceil32(return_data.size) + 448] - 1) + _10168 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = mem[(32 * mem[_10168 + ceil32(return_data.size) + 448] - 1) + _10168 + ceil32(return_data.size) + 480] - arg3 - (idx + arg2 / 2 * arg3)
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            mem[_10168 + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _10168 + ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _12050 = mem[_10168 + 224 len 4], ext_call.return_data[0 len 28]
                            require mem[_10168 + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[_10168 + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[_10168 + mem[_10168 + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[_10168 + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[_10168 + mem[_10168 + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                            mem[_10168 + ceil32(return_data.size) + 224] = mem[_10168 + mem[_10168 + 224 len 4], ext_call.return_data[0 len 28] + 224]
                            _12101 = mem[_10168 + _12050 + 224]
                            u = 0
                            while u < 32 * _12101:
                                mem[u + _10168 + ceil32(return_data.size) + 256] = mem[u + _10168 + _12050 + 256]
                                u = u + 32
                                continue 
                            mem[64] = (32 * _12101) + _10168 + ceil32(return_data.size) + 256
                            require mem[_10168 + ceil32(return_data.size) + 224] - 1 < mem[_10168 + ceil32(return_data.size) + 224]
                            require 2 < mem[_10168]
                            mem[_10168 + 96] = mem[(32 * mem[_10168 + ceil32(return_data.size) + 224] - 1) + _10168 + ceil32(return_data.size) + 256]
                            require 2 < mem[_10168]
                            if mem[_10168 + 96] <= idx + arg2 / 2 * arg3:
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 256] = 3
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 384] = 2
                                mem[64] = (32 * _12101) + _10168 + ceil32(return_data.size) + 480
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg7)
                                staticcall arg7.getTokenIndex(address rg1) with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg7)
                                staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 448] = arg5
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 416] = arg6
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 516] = 64
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 548] = 2
                                u = 0
                                while u < 64:
                                    mem[u + (32 * _12101) + _10168 + ceil32(return_data.size) + 580] = mem[u + (32 * _12101) + _10168 + ceil32(return_data.size) + 416]
                                    u = u + 32
                                    continue 
                                require ext_code.size(arg4)
                                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=2, data=mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 580 len 64])
                                if not ext_call.success:
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 480
                                require return_data.size >= 32
                                _14922 = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _12101) + _10168 + ceil32(return_data.size) + mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _12101) + _10168 + ceil32(return_data.size) + mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
                                mem[(32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
                                _14996 = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + _14922 + 480]
                                u = 0
                                while u < 32 * _14996:
                                    mem[u + (32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12101) + _10168 + ceil32(return_data.size) + _14922 + 512]
                                    u = u + 32
                                    continue 
                                mem[64] = (32 * _14996) + (32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 512
                                require mem[(32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 480]
                                require 2 < mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 256]
                                mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 512]
                                require 2 < mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 256]
                                if mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = 0
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                require 2 < mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 256]
                                if 0 >= mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                                    if t >= 0:
                                        s = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                        s = 0
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = idx + arg2 / 2 * arg3
                                    t = 0
                                    idx = idx
                                    continue 
                                if t >= mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                                    s = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = 0
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                s = 0
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            require 2 < mem[_10168]
                            _13815 = mem[_10168 + 96]
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 256] = 3
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 288 len 96] = call.data[calldata.size len 96]
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 288] = arg3 + (idx + arg2 / 2 * arg3)
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 384] = 2
                            mem[64] = (32 * _12101) + _10168 + ceil32(return_data.size) + 480
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args arg6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg7)
                            staticcall arg7.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg3 + (idx + arg2 / 2 * arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 448] = arg5
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 416] = arg6
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 484] = ext_call.return_data[0]
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 516] = 64
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 548] = 2
                            u = 0
                            while u < 64:
                                mem[u + (32 * _12101) + _10168 + ceil32(return_data.size) + 580] = mem[u + (32 * _12101) + _10168 + ceil32(return_data.size) + 416]
                                u = u + 32
                                continue 
                            require ext_code.size(arg4)
                            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=2, data=mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 580 len 64])
                            if not ext_call.success:
                                if _13815 - (idx + arg2 / 2 * arg3) >= 0:
                                    if t >= _13815 - (idx + arg2 / 2 * arg3):
                                        s = 0
                                        s = _13815 - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = _13815 - (idx + arg2 / 2 * arg3)
                                    s = idx + arg2 / 2 * arg3
                                    t = _13815 - (idx + arg2 / 2 * arg3)
                                    idx = idx
                                    continue 
                                if t >= 0:
                                    s = 0
                                    s = _13815 - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = 0
                                s = _13815 - (idx + arg2 / 2 * arg3)
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = 0
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 480
                            require return_data.size >= 32
                            _14924 = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28]
                            require mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _12101) + _10168 + ceil32(return_data.size) + mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480] <= 4294967296 and mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _12101) + _10168 + ceil32(return_data.size) + mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]) + 32 <= return_data.size
                            mem[(32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 480 len 4], ext_call.return_data[0 len 28] + 480]
                            _14997 = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + _14924 + 480]
                            u = 0
                            while u < 32 * _14997:
                                mem[u + (32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 512] = mem[u + (32 * _12101) + _10168 + ceil32(return_data.size) + _14924 + 512]
                                u = u + 32
                                continue 
                            mem[64] = (32 * _14997) + (32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 512
                            require mem[(32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 480]
                            require 2 < mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 256]
                            mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _12101) + _10168 + (2 * ceil32(return_data.size)) + 512]
                            require 2 < mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 256]
                            if mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] <= arg3 + (idx + arg2 / 2 * arg3):
                                if _13815 - (idx + arg2 / 2 * arg3) >= 0:
                                    if t >= _13815 - (idx + arg2 / 2 * arg3):
                                        s = 0
                                        s = _13815 - (idx + arg2 / 2 * arg3)
                                        s = s
                                        t = t
                                        idx = idx
                                        continue 
                                    s = 0
                                    s = _13815 - (idx + arg2 / 2 * arg3)
                                    s = idx + arg2 / 2 * arg3
                                    t = _13815 - (idx + arg2 / 2 * arg3)
                                    idx = idx
                                    continue 
                                if t >= 0:
                                    s = 0
                                    s = _13815 - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = (idx + arg2 / 2) + 1
                                    continue 
                                s = 0
                                s = _13815 - (idx + arg2 / 2 * arg3)
                                s = arg3 + (idx + arg2 / 2 * arg3)
                                t = 0
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            require 2 < mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 256]
                            if _13815 >= mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3:
                                if t >= _13815 - (idx + arg2 / 2 * arg3):
                                    s = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                    s = _13815 - (idx + arg2 / 2 * arg3)
                                    s = s
                                    t = t
                                    idx = idx
                                    continue 
                                s = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                s = _13815 - (idx + arg2 / 2 * arg3)
                                s = idx + arg2 / 2 * arg3
                                t = _13815 - (idx + arg2 / 2 * arg3)
                                idx = idx
                                continue 
                            if t >= mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3):
                                s = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                                s = _13815 - (idx + arg2 / 2 * arg3)
                                s = s
                                t = t
                                idx = (idx + arg2 / 2) + 1
                                continue 
                            s = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            s = _13815 - (idx + arg2 / 2 * arg3)
                            s = arg3 + (idx + arg2 / 2 * arg3)
                            t = mem[(32 * _12101) + _10168 + ceil32(return_data.size) + 352] - arg3 - (idx + arg2 / 2 * arg3)
                            idx = (idx + arg2 / 2) + 1
                            continue 
    return t, s, 1
}



}
