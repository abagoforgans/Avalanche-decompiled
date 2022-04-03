contract main {




// =====================  Runtime code  =====================


#
#  - sub_611f7fb7(?)
#  - sub_9d8502de(?)
#  - sub_b14a2151(?)
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
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= 4294967296
    require mem[128] + 64 <= arg4.length + 32
    require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    _8 = mem[_5 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_5 + 128])] = mem[_5 + 160 len floor32(mem[_5 + 128])]
    _399 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 64 <= arg4.length + 32
    require mem[mem[160] + 128] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _8) + ceil32(arg4.length) + 160] = mem[mem[160] + 128]
    _403 = mem[_399 + 128]
    mem[(32 * _8) + ceil32(arg4.length) + 192 len floor32(mem[_399 + 128])] = mem[_399 + 160 len floor32(mem[_399 + 128])]
    _789 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 64 <= arg4.length + 32
    require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] = mem[mem[192] + 128]
    _793 = mem[_789 + 128]
    mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 224 len floor32(mem[_789 + 128])] = mem[_789 + 160 len floor32(mem[_789 + 128])]
    require 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
    require 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 260] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 268 len 20]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 292] = mem[(32 * _8) + ceil32(arg4.length) + 224]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224] = 68
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 256 len 4] = unknown_0xa9059cbb(?????)
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 324] = 32
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 356] = 'SafeERC20: low-level call failed'
    if not ext_code.size(mem[ceil32(arg4.length) + 204 len 20]):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 260 len 60]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 480 len 4] = 0
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 0] = 0
    call mem[ceil32(arg4.length) + 204 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 288 len 4] with:
         gas gas_remaining wei
        args mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 292], 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg4.length:
                revert with arg4[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg4.length:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2023 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2047 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2047
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2023))
                        call address(_2023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2047, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2025 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2050 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2050
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2025))
                        call address(_2025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2050, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1953 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2053 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2087 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2087
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2053))
                        call address(_2053).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2087, 0, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2055 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2090 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2090
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2055))
                        call address(_2055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2090, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 498 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2029 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2057 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2057
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2029))
                        call address(_2029).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2057, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2031 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2060 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2060
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2031))
                        call address(_2031).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2060, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1957 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2063 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2093 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2093
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2063))
                        call address(_2063).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2093, 0, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2065 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2096 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2096
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2065))
                        call address(_2065).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2096, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg4.length) + 160]
        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg4.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 616 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 662 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 584]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 663 len 22]
    else:
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = return_data.size
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2035 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2067 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2067
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2035))
                        call address(_2035).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2067, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2037 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2070 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2070
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2037))
                        call address(_2037).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2070, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1962 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2073 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2099 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2099
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2073))
                        call address(_2073).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2099, 0, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2075 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2102 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2102
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2075))
                        call address(_2075).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2102, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 420]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 499 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2041 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2077 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2077
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2041))
                        call address(_2041).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2077, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2043 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2080 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2080
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2043))
                        call address(_2043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2080, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1966 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2083 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2105 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2105
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2083))
                        call address(_2083).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2105, 0, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2085 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2108 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2108
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2085))
                        call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2108, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg4.length) + 160]
        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg4.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 617 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 663 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 664 len 22]
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
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= 4294967296
    require mem[128] + 64 <= arg4.length + 32
    require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    _8 = mem[_5 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_5 + 128])] = mem[_5 + 160 len floor32(mem[_5 + 128])]
    _399 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 64 <= arg4.length + 32
    require mem[mem[160] + 128] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _8) + ceil32(arg4.length) + 160] = mem[mem[160] + 128]
    _403 = mem[_399 + 128]
    mem[(32 * _8) + ceil32(arg4.length) + 192 len floor32(mem[_399 + 128])] = mem[_399 + 160 len floor32(mem[_399 + 128])]
    _789 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 64 <= arg4.length + 32
    require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] = mem[mem[192] + 128]
    _793 = mem[_789 + 128]
    mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 224 len floor32(mem[_789 + 128])] = mem[_789 + 160 len floor32(mem[_789 + 128])]
    require 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
    require 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 260] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 268 len 20]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 292] = mem[(32 * _8) + ceil32(arg4.length) + 224]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224] = 68
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 256 len 4] = unknown_0xa9059cbb(?????)
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 324] = 32
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 356] = 'SafeERC20: low-level call failed'
    if not ext_code.size(mem[ceil32(arg4.length) + 204 len 20]):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 260 len 60]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 480 len 4] = 0
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 0] = 0
    call mem[ceil32(arg4.length) + 204 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 288 len 4] with:
         gas gas_remaining wei
        args mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 292], 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg4.length:
                revert with arg4[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg4.length:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2023 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2047 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2047
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2023))
                        call address(_2023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2047, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2025 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2050 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2050
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2025))
                        call address(_2025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2050, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1953 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2053 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2087 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2087
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2053))
                        call address(_2053).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2087, 0, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2055 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2090 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2090
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2055))
                        call address(_2055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2090, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 498 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2029 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2057 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2057
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2029))
                        call address(_2029).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2057, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2031 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2060 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2060
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2031))
                        call address(_2031).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2060, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1957 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2063 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2093 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2093
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2063))
                        call address(_2063).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2093, 0, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2065 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2096 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2096
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2065))
                        call address(_2065).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2096, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg4.length) + 160]
        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg4.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 616 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 662 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 584]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 663 len 22]
    else:
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = return_data.size
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2035 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2067 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2067
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2035))
                        call address(_2035).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2067, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2037 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2070 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2070
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2037))
                        call address(_2037).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2070, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1962 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2073 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2099 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2099
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2073))
                        call address(_2073).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2099, 0, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2075 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2102 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2102
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2075))
                        call address(_2075).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2102, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 420]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 499 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2041 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2077 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2077
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2041))
                        call address(_2041).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2077, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2043 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2080 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2080
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2043))
                        call address(_2043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2080, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1966 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2083 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2105 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2105
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2083))
                        call address(_2083).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2105, 0, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2085 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2108 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2108
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2085))
                        call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2108, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg4.length) + 160]
        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg4.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 617 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 663 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 664 len 22]
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
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= 4294967296
    require mem[128] + 64 <= arg4.length + 32
    require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    _8 = mem[_5 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_5 + 128])] = mem[_5 + 160 len floor32(mem[_5 + 128])]
    _399 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 64 <= arg4.length + 32
    require mem[mem[160] + 128] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _8) + ceil32(arg4.length) + 160] = mem[mem[160] + 128]
    _403 = mem[_399 + 128]
    mem[(32 * _8) + ceil32(arg4.length) + 192 len floor32(mem[_399 + 128])] = mem[_399 + 160 len floor32(mem[_399 + 128])]
    _789 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 64 <= arg4.length + 32
    require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] = mem[mem[192] + 128]
    _793 = mem[_789 + 128]
    mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 224 len floor32(mem[_789 + 128])] = mem[_789 + 160 len floor32(mem[_789 + 128])]
    require 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
    require 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 260] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 268 len 20]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 292] = mem[(32 * _8) + ceil32(arg4.length) + 224]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224] = 68
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 256 len 4] = unknown_0xa9059cbb(?????)
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 324] = 32
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 356] = 'SafeERC20: low-level call failed'
    if not ext_code.size(mem[ceil32(arg4.length) + 204 len 20]):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 260 len 60]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 480 len 4] = 0
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 0] = 0
    call mem[ceil32(arg4.length) + 204 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 288 len 4] with:
         gas gas_remaining wei
        args mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 292], 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg4.length:
                revert with arg4[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg4.length:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2023 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2047 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2047
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2023))
                        call address(_2023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2047, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2025 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2050 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2050
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2025))
                        call address(_2025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2050, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1953 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2053 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2087 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2087
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2053))
                        call address(_2053).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2087, 0, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2055 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2090 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2090
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2055))
                        call address(_2055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2090, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 498 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2029 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2057 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2057
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2029))
                        call address(_2029).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2057, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2031 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2060 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2060
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2031))
                        call address(_2031).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2060, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1957 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2063 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2093 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2093
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2063))
                        call address(_2063).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2093, 0, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2065 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2096 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2096
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2065))
                        call address(_2065).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2096, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg4.length) + 160]
        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg4.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 616 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 662 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 584]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 663 len 22]
    else:
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = return_data.size
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2035 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2067 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2067
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2035))
                        call address(_2035).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2067, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2037 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2070 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2070
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2037))
                        call address(_2037).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2070, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1962 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2073 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2099 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2099
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2073))
                        call address(_2073).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2099, 0, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2075 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2102 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2102
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2075))
                        call address(_2075).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2102, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 420]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 499 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2041 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2077 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2077
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2041))
                        call address(_2041).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2077, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2043 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2080 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2080
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2043))
                        call address(_2043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2080, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1966 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2083 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2105 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2105
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2083))
                        call address(_2083).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2105, 0, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2085 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2108 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2108
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2085))
                        call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2108, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg4.length) + 160]
        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg4.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 617 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 663 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 664 len 22]
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
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= 4294967296
    require mem[128] + 64 <= arg4.length + 32
    require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    _8 = mem[_5 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_5 + 128])] = mem[_5 + 160 len floor32(mem[_5 + 128])]
    _399 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 64 <= arg4.length + 32
    require mem[mem[160] + 128] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _8) + ceil32(arg4.length) + 160] = mem[mem[160] + 128]
    _403 = mem[_399 + 128]
    mem[(32 * _8) + ceil32(arg4.length) + 192 len floor32(mem[_399 + 128])] = mem[_399 + 160 len floor32(mem[_399 + 128])]
    _789 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 64 <= arg4.length + 32
    require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] = mem[mem[192] + 128]
    _793 = mem[_789 + 128]
    mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 224 len floor32(mem[_789 + 128])] = mem[_789 + 160 len floor32(mem[_789 + 128])]
    require 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
    require 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 260] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 268 len 20]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 292] = mem[(32 * _8) + ceil32(arg4.length) + 224]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224] = 68
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 256 len 4] = unknown_0xa9059cbb(?????)
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 324] = 32
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 356] = 'SafeERC20: low-level call failed'
    if not ext_code.size(mem[ceil32(arg4.length) + 204 len 20]):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 260 len 60]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 480 len 4] = 0
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 0] = 0
    call mem[ceil32(arg4.length) + 204 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 288 len 4] with:
         gas gas_remaining wei
        args mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 292], 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg4.length:
                revert with arg4[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg4.length:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2023 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2047 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2047
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2023))
                        call address(_2023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2047, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2025 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2050 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2050
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2025))
                        call address(_2025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2050, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1953 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2053 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2087 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2087
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2053))
                        call address(_2053).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2087, 0, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2055 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2090 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2090
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2055))
                        call address(_2055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2090, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 498 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2029 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2057 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2057
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2029))
                        call address(_2029).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2057, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2031 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2060 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2060
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2031))
                        call address(_2031).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2060, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1957 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2063 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2093 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2093
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2063))
                        call address(_2063).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2093, 0, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2065 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2096 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2096
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2065))
                        call address(_2065).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2096, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg4.length) + 160]
        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg4.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 616 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 662 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 584]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 663 len 22]
    else:
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = return_data.size
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2035 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2067 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2067
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2035))
                        call address(_2035).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2067, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2037 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2070 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2070
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2037))
                        call address(_2037).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2070, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1962 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2073 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2099 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2099
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2073))
                        call address(_2073).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2099, 0, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2075 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2102 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2102
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2075))
                        call address(_2075).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2102, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 420]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 499 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2041 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2077 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2077
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2041))
                        call address(_2041).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2077, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2043 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2080 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2080
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2043))
                        call address(_2043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2080, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1966 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2083 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2105 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2105
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2083))
                        call address(_2083).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2105, 0, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2085 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2108 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2108
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2085))
                        call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2108, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg4.length) + 160]
        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg4.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 617 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 663 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 664 len 22]
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
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= 4294967296
    require mem[128] + 64 <= arg4.length + 32
    require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    _8 = mem[_5 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_5 + 128])] = mem[_5 + 160 len floor32(mem[_5 + 128])]
    _399 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 64 <= arg4.length + 32
    require mem[mem[160] + 128] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _8) + ceil32(arg4.length) + 160] = mem[mem[160] + 128]
    _403 = mem[_399 + 128]
    mem[(32 * _8) + ceil32(arg4.length) + 192 len floor32(mem[_399 + 128])] = mem[_399 + 160 len floor32(mem[_399 + 128])]
    _789 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 64 <= arg4.length + 32
    require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] = mem[mem[192] + 128]
    _793 = mem[_789 + 128]
    mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 224 len floor32(mem[_789 + 128])] = mem[_789 + 160 len floor32(mem[_789 + 128])]
    require 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
    require 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 260] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 268 len 20]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 292] = mem[(32 * _8) + ceil32(arg4.length) + 224]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224] = 68
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 256 len 4] = unknown_0xa9059cbb(?????)
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 324] = 32
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 356] = 'SafeERC20: low-level call failed'
    if not ext_code.size(mem[ceil32(arg4.length) + 204 len 20]):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 260 len 60]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 480 len 4] = 0
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 0] = 0
    call mem[ceil32(arg4.length) + 204 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 288 len 4] with:
         gas gas_remaining wei
        args mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 292], 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg4.length:
                revert with arg4[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg4.length:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2023 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2047 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2047
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2023))
                        call address(_2023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2047, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2025 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2050 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2050
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2025))
                        call address(_2025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2050, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1953 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2053 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2087 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2087
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2053))
                        call address(_2053).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2087, 0, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2055 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2090 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2090
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2055))
                        call address(_2055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2090, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 498 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2029 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2057 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2057
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2029))
                        call address(_2029).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2057, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2031 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2060 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2060
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2031))
                        call address(_2031).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2060, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1957 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2063 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2093 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = _2093
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2063))
                        call address(_2063).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2093, 0, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                    else:
                        _2065 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2096 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = _2096
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 520] = 0
                        require ext_code.size(address(_2065))
                        call address(_2065).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2096, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg4.length) + 160]
        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg4.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 488 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 616 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 662 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 584]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 663 len 22]
    else:
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 388] = return_data.size
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2035 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2067 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2067
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2035))
                        call address(_2035).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2067, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2037 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2070 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2070
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2037))
                        call address(_2037).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2070, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1962 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2073 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2099 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2099
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2073))
                        call address(_2073).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2099, 0, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2075 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2102 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2102
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2075))
                        call address(_2075).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2102, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 420]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 499 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2041 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2077 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2077
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2041))
                        call address(_2041).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2077, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2043 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2080 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2080
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2043))
                        call address(_2043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2080, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    _1966 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        _2083 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2105 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = _2105
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2083))
                        call address(_2083).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2105, 0, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                    else:
                        _2085 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg4.length) + 160]
                        _2108 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg4.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = _2108
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2085))
                        call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2108, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg4.length) + 160]
        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg4.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 617 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 663 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 664 len 22]
}

function sub_12bacace(?) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg5.length <= test266151307()
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg5.length
    if not arg5.length:
        require 0 < arg5.length
        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = arg1 * arg3
        mem[(32 * arg4.length) + (64 * arg5.length) + 192] = 2
        mem[64] = (32 * arg4.length) + (64 * arg5.length) + 288
        mem[(32 * arg4.length) + (64 * arg5.length) + 224 len 64] = call.data[calldata.size len 64]
        idx = 0
        s = arg1 * arg3
        t = 96
        while idx < arg5.length - 1:
            require idx < mem[(32 * arg4.length) + 128]
            _750 = mem[(32 * idx) + (32 * arg4.length) + 160]
            require idx + 1 < mem[(32 * arg4.length) + 128]
            require 0 < mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            require 1 < mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            mem[(32 * arg4.length) + (64 * arg5.length) + 256] = mem[(32 * idx + 1) + (32 * arg4.length) + 172 len 20]
            mem[(32 * arg4.length) + (64 * arg5.length) + 224] = address(_750)
            require idx < mem[96]
            _769 = mem[(32 * idx) + 128]
            _770 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            _772 = mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            s = 0
            while s < 32 * _772:
                mem[s + mem[64] + 100] = mem[s + (32 * arg4.length) + (64 * arg5.length) + 224]
                s = s + 32
                continue 
            require ext_code.size(address(_769))
            staticcall address(_769).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _772) + _770 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1482 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1488 = mem[_1482]
            require mem[_1482] <= 4294967296
            require mem[_1482] + 32 <= return_data.size
            require mem[_1482 + mem[_1482]] <= 4294967296 and mem[_1482] + (32 * mem[_1482 + mem[_1482]]) + 32 <= return_data.size
            mem[_1482 + ceil32(return_data.size)] = mem[_1482 + mem[_1482]]
            _1507 = mem[_1482 + _1488]
            s = 0
            while s < 32 * _1507:
                mem[s + _1482 + ceil32(return_data.size) + 32] = mem[s + _1482 + _1488 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _1507) + _1482 + ceil32(return_data.size) + 32
            require mem[_1482 + ceil32(return_data.size)] - 1 < mem[_1482 + ceil32(return_data.size)]
            _2189 = mem[(32 * mem[_1482 + ceil32(return_data.size)] - 1) + _1482 + ceil32(return_data.size) + 32]
            require floor32(_1507) + 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
            mem[(32 * floor32(_1507) + 1) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * mem[_1482 + ceil32(return_data.size)] - 1) + _1482 + ceil32(return_data.size) + 32]
            s = floor32(_1507) + 1
            s = _2189
            t = _1482 + ceil32(return_data.size)
            continue 
        require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
        if mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] <= arg1 * arg3:
            return 0
        require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
        if not mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] - (arg1 * arg3):
            return 0
        s = 0
        t = mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] - (arg1 * arg3)
        t = 0
        u = 0
        idx = arg1
        while idx + 1 < arg2:
            _1477 = mem[(32 * arg4.length) + 128]
            require mem[(32 * arg4.length) + 128] <= test266151307()
            _1481 = mem[64]
            mem[mem[64]] = mem[(32 * arg4.length) + 128]
            mem[64] = mem[64] + (32 * _1477) + 32
            if not _1477:
                require 0 < mem[_1481]
                mem[_1481 + 32] = idx + arg2 / 2 * arg3
                mem[_1481 + (32 * _1477) + 32] = 2
                mem[64] = _1481 + (32 * _1477) + 128
                mem[_1481 + (32 * _1477) + 64 len 64] = call.data[calldata.size len 64]
                _2161 = mem[(32 * arg4.length) + 128]
                v = 0
                w = idx + arg2 / 2 * arg3
                x = 96
                while v < _2161 - 1:
                    require v < mem[(32 * arg4.length) + 128]
                    _2184 = mem[(32 * v) + (32 * arg4.length) + 160]
                    require v + 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_1481 + (32 * _1477) + 32]
                    require 1 < mem[_1481 + (32 * _1477) + 32]
                    mem[_1481 + (32 * _1477) + 96] = mem[(32 * v + 1) + (32 * arg4.length) + 172 len 20]
                    mem[_1481 + (32 * _1477) + 64] = address(_2184)
                    require v < mem[96]
                    _2232 = mem[(32 * v) + 128]
                    _2233 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = w
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[_1481 + (32 * _1477) + 32]
                    _2235 = mem[_1481 + (32 * _1477) + 32]
                    idx = 0
                    while idx < 32 * _2235:
                        mem[idx + mem[64] + 100] = mem[idx + _1481 + (32 * _1477) + 64]
                        idx = idx + 32
                        continue 
                    require ext_code.size(address(_2232))
                    staticcall address(_2232).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (32 * _2235) + _2233 + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2955 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3015 = mem[_2955]
                    require mem[_2955] <= 4294967296
                    require mem[_2955] + 32 <= return_data.size
                    require mem[_2955 + mem[_2955]] <= 4294967296 and mem[_2955] + (32 * mem[_2955 + mem[_2955]]) + 32 <= return_data.size
                    mem[_2955 + ceil32(return_data.size)] = mem[_2955 + mem[_2955]]
                    _3131 = mem[_2955 + _3015]
                    idx = 0
                    while idx < 32 * _3131:
                        mem[idx + _2955 + ceil32(return_data.size) + 32] = mem[idx + _2955 + _3015 + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _3131) + _2955 + ceil32(return_data.size) + 32
                    require mem[_2955 + ceil32(return_data.size)] - 1 < mem[_2955 + ceil32(return_data.size)]
                    _3391 = mem[(32 * mem[_2955 + ceil32(return_data.size)] - 1) + _2955 + ceil32(return_data.size) + 32]
                    require floor32(_3131) + 1 < mem[_1481]
                    mem[(32 * floor32(_3131) + 1) + _1481 + 32] = mem[(32 * mem[_2955 + ceil32(return_data.size)] - 1) + _2955 + ceil32(return_data.size) + 32]
                    idx = floor32(_3131) + 1
                    w = _3391
                    x = _2955 + ceil32(return_data.size)
                    continue 
                require mem[_1481] - 1 < mem[_1481]
                if mem[(32 * mem[_1481] - 1) + _1481 + 32] <= idx + arg2 / 2 * arg3:
                    _2223 = mem[(32 * arg4.length) + 128]
                    require mem[(32 * arg4.length) + 128] <= test266151307()
                    _2231 = mem[64]
                    mem[mem[64]] = mem[(32 * arg4.length) + 128]
                    mem[64] = mem[64] + (32 * _2223) + 32
                    if not _2223:
                        require 0 < mem[_2231]
                        mem[_2231 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[_2231 + (32 * _2223) + 32] = 2
                        mem[64] = _2231 + (32 * _2223) + 128
                        mem[_2231 + (32 * _2223) + 64 len 64] = call.data[calldata.size len 64]
                        _2819 = mem[(32 * arg4.length) + 128]
                        s = 0
                        v = arg3 + (idx + arg2 / 2 * arg3)
                        w = 96
                        while s < _2819 - 1:
                            require s < mem[(32 * arg4.length) + 128]
                            _2892 = mem[(32 * s) + (32 * arg4.length) + 160]
                            require s + 1 < mem[(32 * arg4.length) + 128]
                            require 0 < mem[_2231 + (32 * _2223) + 32]
                            require 1 < mem[_2231 + (32 * _2223) + 32]
                            mem[_2231 + (32 * _2223) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                            mem[_2231 + (32 * _2223) + 64] = address(_2892)
                            require s < mem[96]
                            _3063 = mem[(32 * s) + 128]
                            _3064 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_2231 + (32 * _2223) + 32]
                            _3066 = mem[_2231 + (32 * _2223) + 32]
                            idx = 0
                            while idx < 32 * _3066:
                                mem[idx + mem[64] + 100] = mem[idx + _2231 + (32 * _2223) + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(_3063))
                            staticcall address(_3063).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (32 * _3066) + _3064 + -mem[64] + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3399 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3415 = mem[_3399]
                            require mem[_3399] <= 4294967296
                            require mem[_3399] + 32 <= return_data.size
                            require mem[_3399 + mem[_3399]] <= 4294967296 and mem[_3399] + (32 * mem[_3399 + mem[_3399]]) + 32 <= return_data.size
                            mem[_3399 + ceil32(return_data.size)] = mem[_3399 + mem[_3399]]
                            _3463 = mem[_3399 + _3415]
                            idx = 0
                            while idx < 32 * _3463:
                                mem[idx + _3399 + ceil32(return_data.size) + 32] = mem[idx + _3399 + _3415 + 32]
                                idx = idx + 32
                                continue 
                            mem[64] = (32 * _3463) + _3399 + ceil32(return_data.size) + 32
                            require mem[_3399 + ceil32(return_data.size)] - 1 < mem[_3399 + ceil32(return_data.size)]
                            _3607 = mem[(32 * mem[_3399 + ceil32(return_data.size)] - 1) + _3399 + ceil32(return_data.size) + 32]
                            require floor32(_3463) + 1 < mem[_2231]
                            mem[(32 * floor32(_3463) + 1) + _2231 + 32] = mem[(32 * mem[_3399 + ceil32(return_data.size)] - 1) + _3399 + ceil32(return_data.size) + 32]
                            idx = floor32(_3463) + 1
                            v = _3607
                            w = _3399 + ceil32(return_data.size)
                            continue 
                    else:
                        mem[_2231 + 32 len 32 * _2223] = call.data[calldata.size len 32 * _2223]
                        require 0 < mem[_2231]
                        mem[_2231 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[_2231 + (32 * _2223) + 32] = 2
                        mem[64] = _2231 + (32 * _2223) + 128
                        mem[_2231 + (32 * _2223) + 64 len 64] = call.data[calldata.size len 64]
                        _2820 = mem[(32 * arg4.length) + 128]
                        s = 0
                        v = arg3 + (idx + arg2 / 2 * arg3)
                        w = 96
                        while s < _2820 - 1:
                            require s < mem[(32 * arg4.length) + 128]
                            _2895 = mem[(32 * s) + (32 * arg4.length) + 160]
                            require s + 1 < mem[(32 * arg4.length) + 128]
                            require 0 < mem[_2231 + (32 * _2223) + 32]
                            require 1 < mem[_2231 + (32 * _2223) + 32]
                            mem[_2231 + (32 * _2223) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                            mem[_2231 + (32 * _2223) + 64] = address(_2895)
                            require s < mem[96]
                            _3067 = mem[(32 * s) + 128]
                            _3068 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_2231 + (32 * _2223) + 32]
                            _3070 = mem[_2231 + (32 * _2223) + 32]
                            idx = 0
                            while idx < 32 * _3070:
                                mem[idx + mem[64] + 100] = mem[idx + _2231 + (32 * _2223) + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(_3067))
                            staticcall address(_3067).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (32 * _3070) + _3068 + -mem[64] + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3400 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3417 = mem[_3400]
                            require mem[_3400] <= 4294967296
                            require mem[_3400] + 32 <= return_data.size
                            require mem[_3400 + mem[_3400]] <= 4294967296 and mem[_3400] + (32 * mem[_3400 + mem[_3400]]) + 32 <= return_data.size
                            mem[_3400 + ceil32(return_data.size)] = mem[_3400 + mem[_3400]]
                            _3464 = mem[_3400 + _3417]
                            idx = 0
                            while idx < 32 * _3464:
                                mem[idx + _3400 + ceil32(return_data.size) + 32] = mem[idx + _3400 + _3417 + 32]
                                idx = idx + 32
                                continue 
                            mem[64] = (32 * _3464) + _3400 + ceil32(return_data.size) + 32
                            require mem[_3400 + ceil32(return_data.size)] - 1 < mem[_3400 + ceil32(return_data.size)]
                            _3609 = mem[(32 * mem[_3400 + ceil32(return_data.size)] - 1) + _3400 + ceil32(return_data.size) + 32]
                            require floor32(_3464) + 1 < mem[_2231]
                            mem[(32 * floor32(_3464) + 1) + _2231 + 32] = mem[(32 * mem[_3400 + ceil32(return_data.size)] - 1) + _3400 + ceil32(return_data.size) + 32]
                            idx = floor32(_3464) + 1
                            v = _3609
                            w = _3400 + ceil32(return_data.size)
                            continue 
                    require mem[_2231] - 1 < mem[_2231]
                    if mem[(32 * mem[_2231] - 1) + _2231 + 32] <= arg3 + (idx + arg2 / 2 * arg3):
                        if u >= 0:
                            s = 0
                            t = 0
                            t = t
                            u = u
                            idx = idx
                            continue 
                        s = 0
                        t = 0
                        t = idx + arg2 / 2 * arg3
                        u = 0
                        idx = idx
                        continue 
                    require mem[_2231] - 1 < mem[_2231]
                    if 0 >= mem[(32 * mem[_2231] - 1) + _2231 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                        if u >= 0:
                            s = mem[(32 * mem[_2231] - 1) + _2231 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                            t = 0
                            t = t
                            u = u
                            idx = idx
                            continue 
                        s = mem[(32 * mem[_2231] - 1) + _2231 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                        t = 0
                        t = idx + arg2 / 2 * arg3
                        u = 0
                        idx = idx
                        continue 
                    if u >= mem[(32 * mem[_2231] - 1) + _2231 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                        s = mem[(32 * mem[_2231] - 1) + _2231 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                        t = 0
                        t = t
                        u = u
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = mem[(32 * mem[_2231] - 1) + _2231 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = 0
                    t = arg3 + (idx + arg2 / 2 * arg3)
                    u = mem[(32 * mem[_2231] - 1) + _2231 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    idx = (idx + arg2 / 2) + 1
                    continue 
                require mem[_1481] - 1 < mem[_1481]
                _2215 = mem[(32 * mem[_1481] - 1) + _1481 + 32]
                _2252 = mem[(32 * arg4.length) + 128]
                require mem[(32 * arg4.length) + 128] <= test266151307()
                _2261 = mem[64]
                mem[mem[64]] = mem[(32 * arg4.length) + 128]
                mem[64] = mem[64] + (32 * _2252) + 32
                if not _2252:
                    require 0 < mem[_2261]
                    mem[_2261 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[_2261 + (32 * _2252) + 32] = 2
                    mem[64] = _2261 + (32 * _2252) + 128
                    mem[_2261 + (32 * _2252) + 64 len 64] = call.data[calldata.size len 64]
                    _2821 = mem[(32 * arg4.length) + 128]
                    s = 0
                    v = arg3 + (idx + arg2 / 2 * arg3)
                    w = 96
                    while s < _2821 - 1:
                        require s < mem[(32 * arg4.length) + 128]
                        _2898 = mem[(32 * s) + (32 * arg4.length) + 160]
                        require s + 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_2261 + (32 * _2252) + 32]
                        require 1 < mem[_2261 + (32 * _2252) + 32]
                        mem[_2261 + (32 * _2252) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                        mem[_2261 + (32 * _2252) + 64] = address(_2898)
                        require s < mem[96]
                        _3071 = mem[(32 * s) + 128]
                        _3072 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = v
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_2261 + (32 * _2252) + 32]
                        _3074 = mem[_2261 + (32 * _2252) + 32]
                        idx = 0
                        while idx < 32 * _3074:
                            mem[idx + mem[64] + 100] = mem[idx + _2261 + (32 * _2252) + 64]
                            idx = idx + 32
                            continue 
                        require ext_code.size(address(_3071))
                        staticcall address(_3071).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * _3074) + _3072 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3401 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3419 = mem[_3401]
                        require mem[_3401] <= 4294967296
                        require mem[_3401] + 32 <= return_data.size
                        require mem[_3401 + mem[_3401]] <= 4294967296 and mem[_3401] + (32 * mem[_3401 + mem[_3401]]) + 32 <= return_data.size
                        mem[_3401 + ceil32(return_data.size)] = mem[_3401 + mem[_3401]]
                        _3465 = mem[_3401 + _3419]
                        idx = 0
                        while idx < 32 * _3465:
                            mem[idx + _3401 + ceil32(return_data.size) + 32] = mem[idx + _3401 + _3419 + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _3465) + _3401 + ceil32(return_data.size) + 32
                        require mem[_3401 + ceil32(return_data.size)] - 1 < mem[_3401 + ceil32(return_data.size)]
                        _3611 = mem[(32 * mem[_3401 + ceil32(return_data.size)] - 1) + _3401 + ceil32(return_data.size) + 32]
                        require floor32(_3465) + 1 < mem[_2261]
                        mem[(32 * floor32(_3465) + 1) + _2261 + 32] = mem[(32 * mem[_3401 + ceil32(return_data.size)] - 1) + _3401 + ceil32(return_data.size) + 32]
                        idx = floor32(_3465) + 1
                        v = _3611
                        w = _3401 + ceil32(return_data.size)
                        continue 
                else:
                    mem[_2261 + 32 len 32 * _2252] = call.data[calldata.size len 32 * _2252]
                    require 0 < mem[_2261]
                    mem[_2261 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[_2261 + (32 * _2252) + 32] = 2
                    mem[64] = _2261 + (32 * _2252) + 128
                    mem[_2261 + (32 * _2252) + 64 len 64] = call.data[calldata.size len 64]
                    _2822 = mem[(32 * arg4.length) + 128]
                    v = 0
                    w = arg3 + (idx + arg2 / 2 * arg3)
                    x = 96
                    while v < _2822 - 1:
                        require v < mem[(32 * arg4.length) + 128]
                        _2901 = mem[(32 * v) + (32 * arg4.length) + 160]
                        require v + 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_2261 + (32 * _2252) + 32]
                        require 1 < mem[_2261 + (32 * _2252) + 32]
                        mem[_2261 + (32 * _2252) + 96] = mem[(32 * v + 1) + (32 * arg4.length) + 172 len 20]
                        mem[_2261 + (32 * _2252) + 64] = address(_2901)
                        require v < mem[96]
                        _3075 = mem[(32 * v) + 128]
                        _3076 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = w
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_2261 + (32 * _2252) + 32]
                        _3078 = mem[_2261 + (32 * _2252) + 32]
                        idx = 0
                        while idx < 32 * _3078:
                            mem[idx + mem[64] + 100] = mem[idx + _2261 + (32 * _2252) + 64]
                            idx = idx + 32
                            continue 
                        require ext_code.size(address(_3075))
                        staticcall address(_3075).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * _3078) + _3076 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3402 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3421 = mem[_3402]
                        require mem[_3402] <= 4294967296
                        require mem[_3402] + 32 <= return_data.size
                        require mem[_3402 + mem[_3402]] <= 4294967296 and mem[_3402] + (32 * mem[_3402 + mem[_3402]]) + 32 <= return_data.size
                        mem[_3402 + ceil32(return_data.size)] = mem[_3402 + mem[_3402]]
                        _3466 = mem[_3402 + _3421]
                        idx = 0
                        while idx < 32 * _3466:
                            mem[idx + _3402 + ceil32(return_data.size) + 32] = mem[idx + _3402 + _3421 + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _3466) + _3402 + ceil32(return_data.size) + 32
                        require mem[_3402 + ceil32(return_data.size)] - 1 < mem[_3402 + ceil32(return_data.size)]
                        _3613 = mem[(32 * mem[_3402 + ceil32(return_data.size)] - 1) + _3402 + ceil32(return_data.size) + 32]
                        require floor32(_3466) + 1 < mem[_2261]
                        mem[(32 * floor32(_3466) + 1) + _2261 + 32] = mem[(32 * mem[_3402 + ceil32(return_data.size)] - 1) + _3402 + ceil32(return_data.size) + 32]
                        idx = floor32(_3466) + 1
                        w = _3613
                        x = _3402 + ceil32(return_data.size)
                        continue 
                require mem[_2261] - 1 < mem[_2261]
                if mem[(32 * mem[_2261] - 1) + _2261 + 32] <= arg3 + (idx + arg2 / 2 * arg3):
                    if _2215 - (idx + arg2 / 2 * arg3) >= 0:
                        if u >= _2215 - (idx + arg2 / 2 * arg3):
                            s = 0
                            t = _2215 - (idx + arg2 / 2 * arg3)
                            t = t
                            u = u
                            idx = idx
                            continue 
                        s = 0
                        t = _2215 - (idx + arg2 / 2 * arg3)
                        t = idx + arg2 / 2 * arg3
                        u = _2215 - (idx + arg2 / 2 * arg3)
                        idx = idx
                        continue 
                    if u >= 0:
                        s = 0
                        t = _2215 - (idx + arg2 / 2 * arg3)
                        t = t
                        u = u
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = 0
                    t = _2215 - (idx + arg2 / 2 * arg3)
                    t = arg3 + (idx + arg2 / 2 * arg3)
                    u = 0
                    idx = (idx + arg2 / 2) + 1
                    continue 
                require mem[_2261] - 1 < mem[_2261]
                if _2215 >= mem[(32 * mem[_2261] - 1) + _2261 + 32] - arg3:
                    if u >= _2215 - (idx + arg2 / 2 * arg3):
                        s = mem[(32 * mem[_2261] - 1) + _2261 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                        t = _2215 - (idx + arg2 / 2 * arg3)
                        t = t
                        u = u
                        idx = idx
                        continue 
                    s = mem[(32 * mem[_2261] - 1) + _2261 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = _2215 - (idx + arg2 / 2 * arg3)
                    t = idx + arg2 / 2 * arg3
                    u = _2215 - (idx + arg2 / 2 * arg3)
                    idx = idx
                    continue 
                if u >= mem[(32 * mem[_2261] - 1) + _2261 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                    s = mem[(32 * mem[_2261] - 1) + _2261 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = _2215 - (idx + arg2 / 2 * arg3)
                    t = t
                    u = u
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = mem[(32 * mem[_2261] - 1) + _2261 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                t = _2215 - (idx + arg2 / 2 * arg3)
                t = arg3 + (idx + arg2 / 2 * arg3)
                u = mem[(32 * mem[_2261] - 1) + _2261 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                idx = (idx + arg2 / 2) + 1
                continue 
            mem[_1481 + 32 len 32 * _1477] = call.data[calldata.size len 32 * _1477]
            require 0 < mem[_1481]
            mem[_1481 + 32] = idx + arg2 / 2 * arg3
            mem[_1481 + (32 * _1477) + 32] = 2
            mem[64] = _1481 + (32 * _1477) + 128
            mem[_1481 + (32 * _1477) + 64 len 64] = call.data[calldata.size len 64]
            _2162 = mem[(32 * arg4.length) + 128]
            v = 0
            w = idx + arg2 / 2 * arg3
            x = 96
            while v < _2162 - 1:
                require v < mem[(32 * arg4.length) + 128]
                _2187 = mem[(32 * v) + (32 * arg4.length) + 160]
                require v + 1 < mem[(32 * arg4.length) + 128]
                require 0 < mem[_1481 + (32 * _1477) + 32]
                require 1 < mem[_1481 + (32 * _1477) + 32]
                mem[_1481 + (32 * _1477) + 96] = mem[(32 * v + 1) + (32 * arg4.length) + 172 len 20]
                mem[_1481 + (32 * _1477) + 64] = address(_2187)
                require v < mem[96]
                _2237 = mem[(32 * v) + 128]
                _2238 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = w
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[_1481 + (32 * _1477) + 32]
                _2240 = mem[_1481 + (32 * _1477) + 32]
                idx = 0
                while idx < 32 * _2240:
                    mem[idx + mem[64] + 100] = mem[idx + _1481 + (32 * _1477) + 64]
                    idx = idx + 32
                    continue 
                require ext_code.size(address(_2237))
                staticcall address(_2237).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _2240) + _2238 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2972 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3025 = mem[_2972]
                require mem[_2972] <= 4294967296
                require mem[_2972] + 32 <= return_data.size
                require mem[_2972 + mem[_2972]] <= 4294967296 and mem[_2972] + (32 * mem[_2972 + mem[_2972]]) + 32 <= return_data.size
                mem[_2972 + ceil32(return_data.size)] = mem[_2972 + mem[_2972]]
                _3132 = mem[_2972 + _3025]
                idx = 0
                while idx < 32 * _3132:
                    mem[idx + _2972 + ceil32(return_data.size) + 32] = mem[idx + _2972 + _3025 + 32]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _3132) + _2972 + ceil32(return_data.size) + 32
                require mem[_2972 + ceil32(return_data.size)] - 1 < mem[_2972 + ceil32(return_data.size)]
                _3393 = mem[(32 * mem[_2972 + ceil32(return_data.size)] - 1) + _2972 + ceil32(return_data.size) + 32]
                require floor32(_3132) + 1 < mem[_1481]
                mem[(32 * floor32(_3132) + 1) + _1481 + 32] = mem[(32 * mem[_2972 + ceil32(return_data.size)] - 1) + _2972 + ceil32(return_data.size) + 32]
                idx = floor32(_3132) + 1
                w = _3393
                x = _2972 + ceil32(return_data.size)
                continue 
            require mem[_1481] - 1 < mem[_1481]
            if mem[(32 * mem[_1481] - 1) + _1481 + 32] <= idx + arg2 / 2 * arg3:
                _2225 = mem[(32 * arg4.length) + 128]
                require mem[(32 * arg4.length) + 128] <= test266151307()
                _2236 = mem[64]
                mem[mem[64]] = mem[(32 * arg4.length) + 128]
                mem[64] = mem[64] + (32 * _2225) + 32
                if not _2225:
                    require 0 < mem[_2236]
                    mem[_2236 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[_2236 + (32 * _2225) + 32] = 2
                    mem[64] = _2236 + (32 * _2225) + 128
                    mem[_2236 + (32 * _2225) + 64 len 64] = call.data[calldata.size len 64]
                    _2823 = mem[(32 * arg4.length) + 128]
                    s = 0
                    v = arg3 + (idx + arg2 / 2 * arg3)
                    w = 96
                    while s < _2823 - 1:
                        require s < mem[(32 * arg4.length) + 128]
                        _2904 = mem[(32 * s) + (32 * arg4.length) + 160]
                        require s + 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_2236 + (32 * _2225) + 32]
                        require 1 < mem[_2236 + (32 * _2225) + 32]
                        mem[_2236 + (32 * _2225) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                        mem[_2236 + (32 * _2225) + 64] = address(_2904)
                        require s < mem[96]
                        _3080 = mem[(32 * s) + 128]
                        _3081 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = v
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_2236 + (32 * _2225) + 32]
                        _3083 = mem[_2236 + (32 * _2225) + 32]
                        idx = 0
                        while idx < 32 * _3083:
                            mem[idx + mem[64] + 100] = mem[idx + _2236 + (32 * _2225) + 64]
                            idx = idx + 32
                            continue 
                        require ext_code.size(address(_3080))
                        staticcall address(_3080).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * _3083) + _3081 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3403 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3423 = mem[_3403]
                        require mem[_3403] <= 4294967296
                        require mem[_3403] + 32 <= return_data.size
                        require mem[_3403 + mem[_3403]] <= 4294967296 and mem[_3403] + (32 * mem[_3403 + mem[_3403]]) + 32 <= return_data.size
                        mem[_3403 + ceil32(return_data.size)] = mem[_3403 + mem[_3403]]
                        _3467 = mem[_3403 + _3423]
                        idx = 0
                        while idx < 32 * _3467:
                            mem[idx + _3403 + ceil32(return_data.size) + 32] = mem[idx + _3403 + _3423 + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _3467) + _3403 + ceil32(return_data.size) + 32
                        require mem[_3403 + ceil32(return_data.size)] - 1 < mem[_3403 + ceil32(return_data.size)]
                        _3615 = mem[(32 * mem[_3403 + ceil32(return_data.size)] - 1) + _3403 + ceil32(return_data.size) + 32]
                        require floor32(_3467) + 1 < mem[_2236]
                        mem[(32 * floor32(_3467) + 1) + _2236 + 32] = mem[(32 * mem[_3403 + ceil32(return_data.size)] - 1) + _3403 + ceil32(return_data.size) + 32]
                        idx = floor32(_3467) + 1
                        v = _3615
                        w = _3403 + ceil32(return_data.size)
                        continue 
                else:
                    mem[_2236 + 32 len 32 * _2225] = call.data[calldata.size len 32 * _2225]
                    require 0 < mem[_2236]
                    mem[_2236 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[_2236 + (32 * _2225) + 32] = 2
                    mem[64] = _2236 + (32 * _2225) + 128
                    mem[_2236 + (32 * _2225) + 64 len 64] = call.data[calldata.size len 64]
                    _2824 = mem[(32 * arg4.length) + 128]
                    s = 0
                    v = arg3 + (idx + arg2 / 2 * arg3)
                    w = 96
                    while s < _2824 - 1:
                        require s < mem[(32 * arg4.length) + 128]
                        _2907 = mem[(32 * s) + (32 * arg4.length) + 160]
                        require s + 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_2236 + (32 * _2225) + 32]
                        require 1 < mem[_2236 + (32 * _2225) + 32]
                        mem[_2236 + (32 * _2225) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                        mem[_2236 + (32 * _2225) + 64] = address(_2907)
                        require s < mem[96]
                        _3084 = mem[(32 * s) + 128]
                        _3085 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = v
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_2236 + (32 * _2225) + 32]
                        _3087 = mem[_2236 + (32 * _2225) + 32]
                        idx = 0
                        while idx < 32 * _3087:
                            mem[idx + mem[64] + 100] = mem[idx + _2236 + (32 * _2225) + 64]
                            idx = idx + 32
                            continue 
                        require ext_code.size(address(_3084))
                        staticcall address(_3084).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * _3087) + _3085 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3404 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3425 = mem[_3404]
                        require mem[_3404] <= 4294967296
                        require mem[_3404] + 32 <= return_data.size
                        require mem[_3404 + mem[_3404]] <= 4294967296 and mem[_3404] + (32 * mem[_3404 + mem[_3404]]) + 32 <= return_data.size
                        mem[_3404 + ceil32(return_data.size)] = mem[_3404 + mem[_3404]]
                        _3468 = mem[_3404 + _3425]
                        idx = 0
                        while idx < 32 * _3468:
                            mem[idx + _3404 + ceil32(return_data.size) + 32] = mem[idx + _3404 + _3425 + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _3468) + _3404 + ceil32(return_data.size) + 32
                        require mem[_3404 + ceil32(return_data.size)] - 1 < mem[_3404 + ceil32(return_data.size)]
                        _3617 = mem[(32 * mem[_3404 + ceil32(return_data.size)] - 1) + _3404 + ceil32(return_data.size) + 32]
                        require floor32(_3468) + 1 < mem[_2236]
                        mem[(32 * floor32(_3468) + 1) + _2236 + 32] = mem[(32 * mem[_3404 + ceil32(return_data.size)] - 1) + _3404 + ceil32(return_data.size) + 32]
                        idx = floor32(_3468) + 1
                        v = _3617
                        w = _3404 + ceil32(return_data.size)
                        continue 
                require mem[_2236] - 1 < mem[_2236]
                if mem[(32 * mem[_2236] - 1) + _2236 + 32] <= arg3 + (idx + arg2 / 2 * arg3):
                    if u >= 0:
                        s = 0
                        t = 0
                        t = t
                        u = u
                        idx = idx
                        continue 
                    s = 0
                    t = 0
                    t = idx + arg2 / 2 * arg3
                    u = 0
                    idx = idx
                    continue 
                require mem[_2236] - 1 < mem[_2236]
                if 0 >= mem[(32 * mem[_2236] - 1) + _2236 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                    if u >= 0:
                        s = mem[(32 * mem[_2236] - 1) + _2236 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                        t = 0
                        t = t
                        u = u
                        idx = idx
                        continue 
                    s = mem[(32 * mem[_2236] - 1) + _2236 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = 0
                    t = idx + arg2 / 2 * arg3
                    u = 0
                    idx = idx
                    continue 
                if u >= mem[(32 * mem[_2236] - 1) + _2236 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                    s = mem[(32 * mem[_2236] - 1) + _2236 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = 0
                    t = t
                    u = u
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = mem[(32 * mem[_2236] - 1) + _2236 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                t = 0
                t = arg3 + (idx + arg2 / 2 * arg3)
                u = mem[(32 * mem[_2236] - 1) + _2236 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                idx = (idx + arg2 / 2) + 1
                continue 
            require mem[_1481] - 1 < mem[_1481]
            _2217 = mem[(32 * mem[_1481] - 1) + _1481 + 32]
            _2254 = mem[(32 * arg4.length) + 128]
            require mem[(32 * arg4.length) + 128] <= test266151307()
            _2266 = mem[64]
            mem[mem[64]] = mem[(32 * arg4.length) + 128]
            mem[64] = mem[64] + (32 * _2254) + 32
            if not _2254:
                require 0 < mem[_2266]
                mem[_2266 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                mem[_2266 + (32 * _2254) + 32] = 2
                mem[64] = _2266 + (32 * _2254) + 128
                mem[_2266 + (32 * _2254) + 64 len 64] = call.data[calldata.size len 64]
                _2825 = mem[(32 * arg4.length) + 128]
                v = 0
                w = arg3 + (idx + arg2 / 2 * arg3)
                x = 96
                while v < _2825 - 1:
                    require v < mem[(32 * arg4.length) + 128]
                    _2910 = mem[(32 * v) + (32 * arg4.length) + 160]
                    require v + 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_2266 + (32 * _2254) + 32]
                    require 1 < mem[_2266 + (32 * _2254) + 32]
                    mem[_2266 + (32 * _2254) + 96] = mem[(32 * v + 1) + (32 * arg4.length) + 172 len 20]
                    mem[_2266 + (32 * _2254) + 64] = address(_2910)
                    require v < mem[96]
                    _3088 = mem[(32 * v) + 128]
                    _3089 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = w
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[_2266 + (32 * _2254) + 32]
                    _3091 = mem[_2266 + (32 * _2254) + 32]
                    idx = 0
                    while idx < 32 * _3091:
                        mem[idx + mem[64] + 100] = mem[idx + _2266 + (32 * _2254) + 64]
                        idx = idx + 32
                        continue 
                    require ext_code.size(address(_3088))
                    staticcall address(_3088).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (32 * _3091) + _3089 + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3405 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3427 = mem[_3405]
                    require mem[_3405] <= 4294967296
                    require mem[_3405] + 32 <= return_data.size
                    require mem[_3405 + mem[_3405]] <= 4294967296 and mem[_3405] + (32 * mem[_3405 + mem[_3405]]) + 32 <= return_data.size
                    mem[_3405 + ceil32(return_data.size)] = mem[_3405 + mem[_3405]]
                    _3469 = mem[_3405 + _3427]
                    idx = 0
                    while idx < 32 * _3469:
                        mem[idx + _3405 + ceil32(return_data.size) + 32] = mem[idx + _3405 + _3427 + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _3469) + _3405 + ceil32(return_data.size) + 32
                    require mem[_3405 + ceil32(return_data.size)] - 1 < mem[_3405 + ceil32(return_data.size)]
                    _3619 = mem[(32 * mem[_3405 + ceil32(return_data.size)] - 1) + _3405 + ceil32(return_data.size) + 32]
                    require floor32(_3469) + 1 < mem[_2266]
                    mem[(32 * floor32(_3469) + 1) + _2266 + 32] = mem[(32 * mem[_3405 + ceil32(return_data.size)] - 1) + _3405 + ceil32(return_data.size) + 32]
                    idx = floor32(_3469) + 1
                    w = _3619
                    x = _3405 + ceil32(return_data.size)
                    continue 
            else:
                mem[_2266 + 32 len 32 * _2254] = call.data[calldata.size len 32 * _2254]
                require 0 < mem[_2266]
                mem[_2266 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                mem[_2266 + (32 * _2254) + 32] = 2
                mem[64] = _2266 + (32 * _2254) + 128
                mem[_2266 + (32 * _2254) + 64 len 64] = call.data[calldata.size len 64]
                _2826 = mem[(32 * arg4.length) + 128]
                s = 0
                v = arg3 + (idx + arg2 / 2 * arg3)
                w = 96
                while s < _2826 - 1:
                    require s < mem[(32 * arg4.length) + 128]
                    _2913 = mem[(32 * s) + (32 * arg4.length) + 160]
                    require s + 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_2266 + (32 * _2254) + 32]
                    require 1 < mem[_2266 + (32 * _2254) + 32]
                    mem[_2266 + (32 * _2254) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                    mem[_2266 + (32 * _2254) + 64] = address(_2913)
                    require s < mem[96]
                    _3092 = mem[(32 * s) + 128]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = v
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[_2266 + (32 * _2254) + 32]
                    _3095 = mem[_2266 + (32 * _2254) + 32]
                    idx = 0
                    while idx < 32 * _3095:
                        mem[idx + mem[64] + 100] = mem[idx + _2266 + (32 * _2254) + 64]
                        idx = idx + 32
                        continue 
                    require ext_code.size(address(_3092))
                    staticcall address(_3092).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args v, 64, mem[mem[64] + 68 len (32 * _3095) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3406 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3429 = mem[_3406]
                    require mem[_3406] <= 4294967296
                    require mem[_3406] + 32 <= return_data.size
                    require mem[_3406 + mem[_3406]] <= 4294967296 and mem[_3406] + (32 * mem[_3406 + mem[_3406]]) + 32 <= return_data.size
                    mem[_3406 + ceil32(return_data.size)] = mem[_3406 + mem[_3406]]
                    _3470 = mem[_3406 + _3429]
                    idx = 0
                    while idx < 32 * _3470:
                        mem[idx + _3406 + ceil32(return_data.size) + 32] = mem[idx + _3406 + _3429 + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _3470) + _3406 + ceil32(return_data.size) + 32
                    require mem[_3406 + ceil32(return_data.size)] - 1 < mem[_3406 + ceil32(return_data.size)]
                    _3621 = mem[(32 * mem[_3406 + ceil32(return_data.size)] - 1) + _3406 + ceil32(return_data.size) + 32]
                    require floor32(_3470) + 1 < mem[_2266]
                    mem[(32 * floor32(_3470) + 1) + _2266 + 32] = mem[(32 * mem[_3406 + ceil32(return_data.size)] - 1) + _3406 + ceil32(return_data.size) + 32]
                    idx = floor32(_3470) + 1
                    v = _3621
                    w = _3406 + ceil32(return_data.size)
                    continue 
            require mem[_2266] - 1 < mem[_2266]
            if mem[(32 * mem[_2266] - 1) + _2266 + 32] <= arg3 + (idx + arg2 / 2 * arg3):
                if _2217 - (idx + arg2 / 2 * arg3) >= 0:
                    if u >= _2217 - (idx + arg2 / 2 * arg3):
                        s = 0
                        t = _2217 - (idx + arg2 / 2 * arg3)
                        t = t
                        u = u
                        idx = idx
                        continue 
                    s = 0
                    t = _2217 - (idx + arg2 / 2 * arg3)
                    t = idx + arg2 / 2 * arg3
                    u = _2217 - (idx + arg2 / 2 * arg3)
                    idx = idx
                    continue 
                if u >= 0:
                    s = 0
                    t = _2217 - (idx + arg2 / 2 * arg3)
                    t = t
                    u = u
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = 0
                t = _2217 - (idx + arg2 / 2 * arg3)
                t = arg3 + (idx + arg2 / 2 * arg3)
                u = 0
                idx = (idx + arg2 / 2) + 1
                continue 
            require mem[_2266] - 1 < mem[_2266]
            if _2217 >= mem[(32 * mem[_2266] - 1) + _2266 + 32] - arg3:
                if u >= _2217 - (idx + arg2 / 2 * arg3):
                    s = mem[(32 * mem[_2266] - 1) + _2266 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = _2217 - (idx + arg2 / 2 * arg3)
                    t = t
                    u = u
                    idx = idx
                    continue 
                s = mem[(32 * mem[_2266] - 1) + _2266 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                t = _2217 - (idx + arg2 / 2 * arg3)
                t = idx + arg2 / 2 * arg3
                u = _2217 - (idx + arg2 / 2 * arg3)
                idx = idx
                continue 
            if u >= mem[(32 * mem[_2266] - 1) + _2266 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                s = mem[(32 * mem[_2266] - 1) + _2266 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                t = _2217 - (idx + arg2 / 2 * arg3)
                t = t
                u = u
                idx = (idx + arg2 / 2) + 1
                continue 
            s = mem[(32 * mem[_2266] - 1) + _2266 + 32] - arg3 - (idx + arg2 / 2 * arg3)
            t = _2217 - (idx + arg2 / 2 * arg3)
            t = arg3 + (idx + arg2 / 2 * arg3)
            u = mem[(32 * mem[_2266] - 1) + _2266 + 32] - arg3 - (idx + arg2 / 2 * arg3)
            idx = (idx + arg2 / 2) + 1
            continue 
    else:
        mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg5.length] = call.data[calldata.size len 32 * arg5.length]
        require 0 < arg5.length
        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = arg1 * arg3
        mem[(32 * arg4.length) + (64 * arg5.length) + 192] = 2
        mem[64] = (32 * arg4.length) + (64 * arg5.length) + 288
        mem[(32 * arg4.length) + (64 * arg5.length) + 224 len 64] = call.data[calldata.size len 64]
        idx = 0
        s = arg1 * arg3
        t = 96
        while idx < arg5.length - 1:
            require idx < mem[(32 * arg4.length) + 128]
            _753 = mem[(32 * idx) + (32 * arg4.length) + 160]
            require idx + 1 < mem[(32 * arg4.length) + 128]
            require 0 < mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            require 1 < mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            mem[(32 * arg4.length) + (64 * arg5.length) + 256] = mem[(32 * idx + 1) + (32 * arg4.length) + 172 len 20]
            mem[(32 * arg4.length) + (64 * arg5.length) + 224] = address(_753)
            require idx < mem[96]
            _773 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            _776 = mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            t = 0
            while t < 32 * _776:
                mem[t + mem[64] + 100] = mem[t + (32 * arg4.length) + (64 * arg5.length) + 224]
                t = t + 32
                continue 
            require ext_code.size(address(_773))
            staticcall address(_773).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[mem[64] + 68 len (32 * _776) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1486 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1491 = mem[_1486]
            require mem[_1486] <= 4294967296
            require mem[_1486] + 32 <= return_data.size
            require mem[_1486 + mem[_1486]] <= 4294967296 and mem[_1486] + (32 * mem[_1486 + mem[_1486]]) + 32 <= return_data.size
            mem[_1486 + ceil32(return_data.size)] = mem[_1486 + mem[_1486]]
            _1512 = mem[_1486 + _1491]
            s = 0
            while s < 32 * _1512:
                mem[s + _1486 + ceil32(return_data.size) + 32] = mem[s + _1486 + _1491 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _1512) + _1486 + ceil32(return_data.size) + 32
            require mem[_1486 + ceil32(return_data.size)] - 1 < mem[_1486 + ceil32(return_data.size)]
            _2197 = mem[(32 * mem[_1486 + ceil32(return_data.size)] - 1) + _1486 + ceil32(return_data.size) + 32]
            require floor32(_1512) + 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
            mem[(32 * floor32(_1512) + 1) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * mem[_1486 + ceil32(return_data.size)] - 1) + _1486 + ceil32(return_data.size) + 32]
            s = floor32(_1512) + 1
            s = _2197
            t = _1486 + ceil32(return_data.size)
            continue 
        require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
        if mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] <= arg1 * arg3:
            return 0
        require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
        if not mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] - (arg1 * arg3):
            return 0
        s = 0
        t = mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] - (arg1 * arg3)
        t = 0
        u = 0
        idx = arg1
        while idx + 1 < arg2:
            _1478 = mem[(32 * arg4.length) + 128]
            require mem[(32 * arg4.length) + 128] <= test266151307()
            _1485 = mem[64]
            mem[mem[64]] = mem[(32 * arg4.length) + 128]
            mem[64] = mem[64] + (32 * _1478) + 32
            if not _1478:
                require 0 < mem[_1485]
                mem[_1485 + 32] = idx + arg2 / 2 * arg3
                mem[_1485 + (32 * _1478) + 32] = 2
                mem[64] = _1485 + (32 * _1478) + 128
                mem[_1485 + (32 * _1478) + 64 len 64] = call.data[calldata.size len 64]
                _2163 = mem[(32 * arg4.length) + 128]
                v = 0
                w = idx + arg2 / 2 * arg3
                x = 96
                while v < _2163 - 1:
                    require v < mem[(32 * arg4.length) + 128]
                    _2192 = mem[(32 * v) + (32 * arg4.length) + 160]
                    require v + 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_1485 + (32 * _1478) + 32]
                    require 1 < mem[_1485 + (32 * _1478) + 32]
                    mem[_1485 + (32 * _1478) + 96] = mem[(32 * v + 1) + (32 * arg4.length) + 172 len 20]
                    mem[_1485 + (32 * _1478) + 64] = address(_2192)
                    require v < mem[96]
                    _2242 = mem[(32 * v) + 128]
                    _2243 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = w
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[_1485 + (32 * _1478) + 32]
                    _2245 = mem[_1485 + (32 * _1478) + 32]
                    idx = 0
                    while idx < 32 * _2245:
                        mem[idx + mem[64] + 100] = mem[idx + _1485 + (32 * _1478) + 64]
                        idx = idx + 32
                        continue 
                    require ext_code.size(address(_2242))
                    staticcall address(_2242).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (32 * _2245) + _2243 + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2989 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3035 = mem[_2989]
                    require mem[_2989] <= 4294967296
                    require mem[_2989] + 32 <= return_data.size
                    require mem[_2989 + mem[_2989]] <= 4294967296 and mem[_2989] + (32 * mem[_2989 + mem[_2989]]) + 32 <= return_data.size
                    mem[_2989 + ceil32(return_data.size)] = mem[_2989 + mem[_2989]]
                    _3133 = mem[_2989 + _3035]
                    idx = 0
                    while idx < 32 * _3133:
                        mem[idx + _2989 + ceil32(return_data.size) + 32] = mem[idx + _2989 + _3035 + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _3133) + _2989 + ceil32(return_data.size) + 32
                    require mem[_2989 + ceil32(return_data.size)] - 1 < mem[_2989 + ceil32(return_data.size)]
                    _3395 = mem[(32 * mem[_2989 + ceil32(return_data.size)] - 1) + _2989 + ceil32(return_data.size) + 32]
                    require floor32(_3133) + 1 < mem[_1485]
                    mem[(32 * floor32(_3133) + 1) + _1485 + 32] = mem[(32 * mem[_2989 + ceil32(return_data.size)] - 1) + _2989 + ceil32(return_data.size) + 32]
                    idx = floor32(_3133) + 1
                    w = _3395
                    x = _2989 + ceil32(return_data.size)
                    continue 
                require mem[_1485] - 1 < mem[_1485]
                if mem[(32 * mem[_1485] - 1) + _1485 + 32] <= idx + arg2 / 2 * arg3:
                    _2227 = mem[(32 * arg4.length) + 128]
                    require mem[(32 * arg4.length) + 128] <= test266151307()
                    _2241 = mem[64]
                    mem[mem[64]] = mem[(32 * arg4.length) + 128]
                    mem[64] = mem[64] + (32 * _2227) + 32
                    if not _2227:
                        require 0 < mem[_2241]
                        mem[_2241 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[_2241 + (32 * _2227) + 32] = 2
                        mem[64] = _2241 + (32 * _2227) + 128
                        mem[_2241 + (32 * _2227) + 64 len 64] = call.data[calldata.size len 64]
                        _2827 = mem[(32 * arg4.length) + 128]
                        s = 0
                        v = arg3 + (idx + arg2 / 2 * arg3)
                        w = 96
                        while s < _2827 - 1:
                            require s < mem[(32 * arg4.length) + 128]
                            _2916 = mem[(32 * s) + (32 * arg4.length) + 160]
                            require s + 1 < mem[(32 * arg4.length) + 128]
                            require 0 < mem[_2241 + (32 * _2227) + 32]
                            require 1 < mem[_2241 + (32 * _2227) + 32]
                            mem[_2241 + (32 * _2227) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                            mem[_2241 + (32 * _2227) + 64] = address(_2916)
                            require s < mem[96]
                            _3097 = mem[(32 * s) + 128]
                            _3098 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_2241 + (32 * _2227) + 32]
                            _3100 = mem[_2241 + (32 * _2227) + 32]
                            idx = 0
                            while idx < 32 * _3100:
                                mem[idx + mem[64] + 100] = mem[idx + _2241 + (32 * _2227) + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(_3097))
                            staticcall address(_3097).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (32 * _3100) + _3098 + -mem[64] + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3407 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3431 = mem[_3407]
                            require mem[_3407] <= 4294967296
                            require mem[_3407] + 32 <= return_data.size
                            require mem[_3407 + mem[_3407]] <= 4294967296 and mem[_3407] + (32 * mem[_3407 + mem[_3407]]) + 32 <= return_data.size
                            mem[_3407 + ceil32(return_data.size)] = mem[_3407 + mem[_3407]]
                            _3471 = mem[_3407 + _3431]
                            idx = 0
                            while idx < 32 * _3471:
                                mem[idx + _3407 + ceil32(return_data.size) + 32] = mem[idx + _3407 + _3431 + 32]
                                idx = idx + 32
                                continue 
                            mem[64] = (32 * _3471) + _3407 + ceil32(return_data.size) + 32
                            require mem[_3407 + ceil32(return_data.size)] - 1 < mem[_3407 + ceil32(return_data.size)]
                            _3623 = mem[(32 * mem[_3407 + ceil32(return_data.size)] - 1) + _3407 + ceil32(return_data.size) + 32]
                            require floor32(_3471) + 1 < mem[_2241]
                            mem[(32 * floor32(_3471) + 1) + _2241 + 32] = mem[(32 * mem[_3407 + ceil32(return_data.size)] - 1) + _3407 + ceil32(return_data.size) + 32]
                            idx = floor32(_3471) + 1
                            v = _3623
                            w = _3407 + ceil32(return_data.size)
                            continue 
                    else:
                        mem[_2241 + 32 len 32 * _2227] = call.data[calldata.size len 32 * _2227]
                        require 0 < mem[_2241]
                        mem[_2241 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                        mem[_2241 + (32 * _2227) + 32] = 2
                        mem[64] = _2241 + (32 * _2227) + 128
                        mem[_2241 + (32 * _2227) + 64 len 64] = call.data[calldata.size len 64]
                        _2828 = mem[(32 * arg4.length) + 128]
                        s = 0
                        v = arg3 + (idx + arg2 / 2 * arg3)
                        w = 96
                        while s < _2828 - 1:
                            require s < mem[(32 * arg4.length) + 128]
                            _2919 = mem[(32 * s) + (32 * arg4.length) + 160]
                            require s + 1 < mem[(32 * arg4.length) + 128]
                            require 0 < mem[_2241 + (32 * _2227) + 32]
                            require 1 < mem[_2241 + (32 * _2227) + 32]
                            mem[_2241 + (32 * _2227) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                            mem[_2241 + (32 * _2227) + 64] = address(_2919)
                            require s < mem[96]
                            _3101 = mem[(32 * s) + 128]
                            _3102 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = v
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_2241 + (32 * _2227) + 32]
                            _3104 = mem[_2241 + (32 * _2227) + 32]
                            idx = 0
                            while idx < 32 * _3104:
                                mem[idx + mem[64] + 100] = mem[idx + _2241 + (32 * _2227) + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(_3101))
                            staticcall address(_3101).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (32 * _3104) + _3102 + -mem[64] + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3408 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3433 = mem[_3408]
                            require mem[_3408] <= 4294967296
                            require mem[_3408] + 32 <= return_data.size
                            require mem[_3408 + mem[_3408]] <= 4294967296 and mem[_3408] + (32 * mem[_3408 + mem[_3408]]) + 32 <= return_data.size
                            mem[_3408 + ceil32(return_data.size)] = mem[_3408 + mem[_3408]]
                            _3472 = mem[_3408 + _3433]
                            idx = 0
                            while idx < 32 * _3472:
                                mem[idx + _3408 + ceil32(return_data.size) + 32] = mem[idx + _3408 + _3433 + 32]
                                idx = idx + 32
                                continue 
                            mem[64] = (32 * _3472) + _3408 + ceil32(return_data.size) + 32
                            require mem[_3408 + ceil32(return_data.size)] - 1 < mem[_3408 + ceil32(return_data.size)]
                            _3625 = mem[(32 * mem[_3408 + ceil32(return_data.size)] - 1) + _3408 + ceil32(return_data.size) + 32]
                            require floor32(_3472) + 1 < mem[_2241]
                            mem[(32 * floor32(_3472) + 1) + _2241 + 32] = mem[(32 * mem[_3408 + ceil32(return_data.size)] - 1) + _3408 + ceil32(return_data.size) + 32]
                            idx = floor32(_3472) + 1
                            v = _3625
                            w = _3408 + ceil32(return_data.size)
                            continue 
                    require mem[_2241] - 1 < mem[_2241]
                    if mem[(32 * mem[_2241] - 1) + _2241 + 32] <= arg3 + (idx + arg2 / 2 * arg3):
                        if u >= 0:
                            s = 0
                            t = 0
                            t = t
                            u = u
                            idx = idx
                            continue 
                        s = 0
                        t = 0
                        t = idx + arg2 / 2 * arg3
                        u = 0
                        idx = idx
                        continue 
                    require mem[_2241] - 1 < mem[_2241]
                    if 0 >= mem[(32 * mem[_2241] - 1) + _2241 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                        if u >= 0:
                            s = mem[(32 * mem[_2241] - 1) + _2241 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                            t = 0
                            t = t
                            u = u
                            idx = idx
                            continue 
                        s = mem[(32 * mem[_2241] - 1) + _2241 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                        t = 0
                        t = idx + arg2 / 2 * arg3
                        u = 0
                        idx = idx
                        continue 
                    if u >= mem[(32 * mem[_2241] - 1) + _2241 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                        s = mem[(32 * mem[_2241] - 1) + _2241 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                        t = 0
                        t = t
                        u = u
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = mem[(32 * mem[_2241] - 1) + _2241 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = 0
                    t = arg3 + (idx + arg2 / 2 * arg3)
                    u = mem[(32 * mem[_2241] - 1) + _2241 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    idx = (idx + arg2 / 2) + 1
                    continue 
                require mem[_1485] - 1 < mem[_1485]
                _2219 = mem[(32 * mem[_1485] - 1) + _1485 + 32]
                _2256 = mem[(32 * arg4.length) + 128]
                require mem[(32 * arg4.length) + 128] <= test266151307()
                _2271 = mem[64]
                mem[mem[64]] = mem[(32 * arg4.length) + 128]
                mem[64] = mem[64] + (32 * _2256) + 32
                if not _2256:
                    require 0 < mem[_2271]
                    mem[_2271 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[_2271 + (32 * _2256) + 32] = 2
                    mem[64] = _2271 + (32 * _2256) + 128
                    mem[_2271 + (32 * _2256) + 64 len 64] = call.data[calldata.size len 64]
                    _2829 = mem[(32 * arg4.length) + 128]
                    s = 0
                    v = arg3 + (idx + arg2 / 2 * arg3)
                    w = 96
                    while s < _2829 - 1:
                        require s < mem[(32 * arg4.length) + 128]
                        _2922 = mem[(32 * s) + (32 * arg4.length) + 160]
                        require s + 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_2271 + (32 * _2256) + 32]
                        require 1 < mem[_2271 + (32 * _2256) + 32]
                        mem[_2271 + (32 * _2256) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                        mem[_2271 + (32 * _2256) + 64] = address(_2922)
                        require s < mem[96]
                        _3105 = mem[(32 * s) + 128]
                        _3106 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = v
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_2271 + (32 * _2256) + 32]
                        _3108 = mem[_2271 + (32 * _2256) + 32]
                        idx = 0
                        while idx < 32 * _3108:
                            mem[idx + mem[64] + 100] = mem[idx + _2271 + (32 * _2256) + 64]
                            idx = idx + 32
                            continue 
                        require ext_code.size(address(_3105))
                        staticcall address(_3105).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * _3108) + _3106 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3409 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3435 = mem[_3409]
                        require mem[_3409] <= 4294967296
                        require mem[_3409] + 32 <= return_data.size
                        require mem[_3409 + mem[_3409]] <= 4294967296 and mem[_3409] + (32 * mem[_3409 + mem[_3409]]) + 32 <= return_data.size
                        mem[_3409 + ceil32(return_data.size)] = mem[_3409 + mem[_3409]]
                        _3473 = mem[_3409 + _3435]
                        idx = 0
                        while idx < 32 * _3473:
                            mem[idx + _3409 + ceil32(return_data.size) + 32] = mem[idx + _3409 + _3435 + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _3473) + _3409 + ceil32(return_data.size) + 32
                        require mem[_3409 + ceil32(return_data.size)] - 1 < mem[_3409 + ceil32(return_data.size)]
                        _3627 = mem[(32 * mem[_3409 + ceil32(return_data.size)] - 1) + _3409 + ceil32(return_data.size) + 32]
                        require floor32(_3473) + 1 < mem[_2271]
                        mem[(32 * floor32(_3473) + 1) + _2271 + 32] = mem[(32 * mem[_3409 + ceil32(return_data.size)] - 1) + _3409 + ceil32(return_data.size) + 32]
                        idx = floor32(_3473) + 1
                        v = _3627
                        w = _3409 + ceil32(return_data.size)
                        continue 
                else:
                    mem[_2271 + 32 len 32 * _2256] = call.data[calldata.size len 32 * _2256]
                    require 0 < mem[_2271]
                    mem[_2271 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[_2271 + (32 * _2256) + 32] = 2
                    mem[64] = _2271 + (32 * _2256) + 128
                    mem[_2271 + (32 * _2256) + 64 len 64] = call.data[calldata.size len 64]
                    _2830 = mem[(32 * arg4.length) + 128]
                    v = 0
                    w = arg3 + (idx + arg2 / 2 * arg3)
                    x = 96
                    while v < _2830 - 1:
                        require v < mem[(32 * arg4.length) + 128]
                        _2925 = mem[(32 * v) + (32 * arg4.length) + 160]
                        require v + 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_2271 + (32 * _2256) + 32]
                        require 1 < mem[_2271 + (32 * _2256) + 32]
                        mem[_2271 + (32 * _2256) + 96] = mem[(32 * v + 1) + (32 * arg4.length) + 172 len 20]
                        mem[_2271 + (32 * _2256) + 64] = address(_2925)
                        require v < mem[96]
                        _3109 = mem[(32 * v) + 128]
                        _3110 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = w
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_2271 + (32 * _2256) + 32]
                        _3112 = mem[_2271 + (32 * _2256) + 32]
                        idx = 0
                        while idx < 32 * _3112:
                            mem[idx + mem[64] + 100] = mem[idx + _2271 + (32 * _2256) + 64]
                            idx = idx + 32
                            continue 
                        require ext_code.size(address(_3109))
                        staticcall address(_3109).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * _3112) + _3110 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3410 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3437 = mem[_3410]
                        require mem[_3410] <= 4294967296
                        require mem[_3410] + 32 <= return_data.size
                        require mem[_3410 + mem[_3410]] <= 4294967296 and mem[_3410] + (32 * mem[_3410 + mem[_3410]]) + 32 <= return_data.size
                        mem[_3410 + ceil32(return_data.size)] = mem[_3410 + mem[_3410]]
                        _3474 = mem[_3410 + _3437]
                        idx = 0
                        while idx < 32 * _3474:
                            mem[idx + _3410 + ceil32(return_data.size) + 32] = mem[idx + _3410 + _3437 + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _3474) + _3410 + ceil32(return_data.size) + 32
                        require mem[_3410 + ceil32(return_data.size)] - 1 < mem[_3410 + ceil32(return_data.size)]
                        _3629 = mem[(32 * mem[_3410 + ceil32(return_data.size)] - 1) + _3410 + ceil32(return_data.size) + 32]
                        require floor32(_3474) + 1 < mem[_2271]
                        mem[(32 * floor32(_3474) + 1) + _2271 + 32] = mem[(32 * mem[_3410 + ceil32(return_data.size)] - 1) + _3410 + ceil32(return_data.size) + 32]
                        idx = floor32(_3474) + 1
                        w = _3629
                        x = _3410 + ceil32(return_data.size)
                        continue 
                require mem[_2271] - 1 < mem[_2271]
                if mem[(32 * mem[_2271] - 1) + _2271 + 32] <= arg3 + (idx + arg2 / 2 * arg3):
                    if _2219 - (idx + arg2 / 2 * arg3) >= 0:
                        if u >= _2219 - (idx + arg2 / 2 * arg3):
                            s = 0
                            t = _2219 - (idx + arg2 / 2 * arg3)
                            t = t
                            u = u
                            idx = idx
                            continue 
                        s = 0
                        t = _2219 - (idx + arg2 / 2 * arg3)
                        t = idx + arg2 / 2 * arg3
                        u = _2219 - (idx + arg2 / 2 * arg3)
                        idx = idx
                        continue 
                    if u >= 0:
                        s = 0
                        t = _2219 - (idx + arg2 / 2 * arg3)
                        t = t
                        u = u
                        idx = (idx + arg2 / 2) + 1
                        continue 
                    s = 0
                    t = _2219 - (idx + arg2 / 2 * arg3)
                    t = arg3 + (idx + arg2 / 2 * arg3)
                    u = 0
                    idx = (idx + arg2 / 2) + 1
                    continue 
                require mem[_2271] - 1 < mem[_2271]
                if _2219 >= mem[(32 * mem[_2271] - 1) + _2271 + 32] - arg3:
                    if u >= _2219 - (idx + arg2 / 2 * arg3):
                        s = mem[(32 * mem[_2271] - 1) + _2271 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                        t = _2219 - (idx + arg2 / 2 * arg3)
                        t = t
                        u = u
                        idx = idx
                        continue 
                    s = mem[(32 * mem[_2271] - 1) + _2271 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = _2219 - (idx + arg2 / 2 * arg3)
                    t = idx + arg2 / 2 * arg3
                    u = _2219 - (idx + arg2 / 2 * arg3)
                    idx = idx
                    continue 
                if u >= mem[(32 * mem[_2271] - 1) + _2271 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                    s = mem[(32 * mem[_2271] - 1) + _2271 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = _2219 - (idx + arg2 / 2 * arg3)
                    t = t
                    u = u
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = mem[(32 * mem[_2271] - 1) + _2271 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                t = _2219 - (idx + arg2 / 2 * arg3)
                t = arg3 + (idx + arg2 / 2 * arg3)
                u = mem[(32 * mem[_2271] - 1) + _2271 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                idx = (idx + arg2 / 2) + 1
                continue 
            mem[_1485 + 32 len 32 * _1478] = call.data[calldata.size len 32 * _1478]
            require 0 < mem[_1485]
            mem[_1485 + 32] = idx + arg2 / 2 * arg3
            mem[_1485 + (32 * _1478) + 32] = 2
            mem[64] = _1485 + (32 * _1478) + 128
            mem[_1485 + (32 * _1478) + 64 len 64] = call.data[calldata.size len 64]
            _2164 = mem[(32 * arg4.length) + 128]
            v = 0
            w = idx + arg2 / 2 * arg3
            x = 96
            while v < _2164 - 1:
                require v < mem[(32 * arg4.length) + 128]
                _2195 = mem[(32 * v) + (32 * arg4.length) + 160]
                require v + 1 < mem[(32 * arg4.length) + 128]
                require 0 < mem[_1485 + (32 * _1478) + 32]
                require 1 < mem[_1485 + (32 * _1478) + 32]
                mem[_1485 + (32 * _1478) + 96] = mem[(32 * v + 1) + (32 * arg4.length) + 172 len 20]
                mem[_1485 + (32 * _1478) + 64] = address(_2195)
                require v < mem[96]
                _2247 = mem[(32 * v) + 128]
                _2248 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = w
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[_1485 + (32 * _1478) + 32]
                _2250 = mem[_1485 + (32 * _1478) + 32]
                idx = 0
                while idx < 32 * _2250:
                    mem[idx + mem[64] + 100] = mem[idx + _1485 + (32 * _1478) + 64]
                    idx = idx + 32
                    continue 
                require ext_code.size(address(_2247))
                staticcall address(_2247).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _2250) + _2248 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3006 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3045 = mem[_3006]
                require mem[_3006] <= 4294967296
                require mem[_3006] + 32 <= return_data.size
                require mem[_3006 + mem[_3006]] <= 4294967296 and mem[_3006] + (32 * mem[_3006 + mem[_3006]]) + 32 <= return_data.size
                mem[_3006 + ceil32(return_data.size)] = mem[_3006 + mem[_3006]]
                _3134 = mem[_3006 + _3045]
                idx = 0
                while idx < 32 * _3134:
                    mem[idx + _3006 + ceil32(return_data.size) + 32] = mem[idx + _3006 + _3045 + 32]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _3134) + _3006 + ceil32(return_data.size) + 32
                require mem[_3006 + ceil32(return_data.size)] - 1 < mem[_3006 + ceil32(return_data.size)]
                _3397 = mem[(32 * mem[_3006 + ceil32(return_data.size)] - 1) + _3006 + ceil32(return_data.size) + 32]
                require floor32(_3134) + 1 < mem[_1485]
                mem[(32 * floor32(_3134) + 1) + _1485 + 32] = mem[(32 * mem[_3006 + ceil32(return_data.size)] - 1) + _3006 + ceil32(return_data.size) + 32]
                idx = floor32(_3134) + 1
                w = _3397
                x = _3006 + ceil32(return_data.size)
                continue 
            require mem[_1485] - 1 < mem[_1485]
            if mem[(32 * mem[_1485] - 1) + _1485 + 32] <= idx + arg2 / 2 * arg3:
                _2229 = mem[(32 * arg4.length) + 128]
                require mem[(32 * arg4.length) + 128] <= test266151307()
                _2246 = mem[64]
                mem[mem[64]] = mem[(32 * arg4.length) + 128]
                mem[64] = mem[64] + (32 * _2229) + 32
                if not _2229:
                    require 0 < mem[_2246]
                    mem[_2246 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[_2246 + (32 * _2229) + 32] = 2
                    mem[64] = _2246 + (32 * _2229) + 128
                    mem[_2246 + (32 * _2229) + 64 len 64] = call.data[calldata.size len 64]
                    _2831 = mem[(32 * arg4.length) + 128]
                    s = 0
                    v = arg3 + (idx + arg2 / 2 * arg3)
                    w = 96
                    while s < _2831 - 1:
                        require s < mem[(32 * arg4.length) + 128]
                        _2928 = mem[(32 * s) + (32 * arg4.length) + 160]
                        require s + 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_2246 + (32 * _2229) + 32]
                        require 1 < mem[_2246 + (32 * _2229) + 32]
                        mem[_2246 + (32 * _2229) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                        mem[_2246 + (32 * _2229) + 64] = address(_2928)
                        require s < mem[96]
                        _3114 = mem[(32 * s) + 128]
                        _3115 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = v
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_2246 + (32 * _2229) + 32]
                        _3117 = mem[_2246 + (32 * _2229) + 32]
                        idx = 0
                        while idx < 32 * _3117:
                            mem[idx + mem[64] + 100] = mem[idx + _2246 + (32 * _2229) + 64]
                            idx = idx + 32
                            continue 
                        require ext_code.size(address(_3114))
                        staticcall address(_3114).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * _3117) + _3115 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3411 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3439 = mem[_3411]
                        require mem[_3411] <= 4294967296
                        require mem[_3411] + 32 <= return_data.size
                        require mem[_3411 + mem[_3411]] <= 4294967296 and mem[_3411] + (32 * mem[_3411 + mem[_3411]]) + 32 <= return_data.size
                        mem[_3411 + ceil32(return_data.size)] = mem[_3411 + mem[_3411]]
                        _3475 = mem[_3411 + _3439]
                        idx = 0
                        while idx < 32 * _3475:
                            mem[idx + _3411 + ceil32(return_data.size) + 32] = mem[idx + _3411 + _3439 + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _3475) + _3411 + ceil32(return_data.size) + 32
                        require mem[_3411 + ceil32(return_data.size)] - 1 < mem[_3411 + ceil32(return_data.size)]
                        _3631 = mem[(32 * mem[_3411 + ceil32(return_data.size)] - 1) + _3411 + ceil32(return_data.size) + 32]
                        require floor32(_3475) + 1 < mem[_2246]
                        mem[(32 * floor32(_3475) + 1) + _2246 + 32] = mem[(32 * mem[_3411 + ceil32(return_data.size)] - 1) + _3411 + ceil32(return_data.size) + 32]
                        idx = floor32(_3475) + 1
                        v = _3631
                        w = _3411 + ceil32(return_data.size)
                        continue 
                else:
                    mem[_2246 + 32 len 32 * _2229] = call.data[calldata.size len 32 * _2229]
                    require 0 < mem[_2246]
                    mem[_2246 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                    mem[_2246 + (32 * _2229) + 32] = 2
                    mem[64] = _2246 + (32 * _2229) + 128
                    mem[_2246 + (32 * _2229) + 64 len 64] = call.data[calldata.size len 64]
                    _2832 = mem[(32 * arg4.length) + 128]
                    s = 0
                    v = arg3 + (idx + arg2 / 2 * arg3)
                    w = 96
                    while s < _2832 - 1:
                        require s < mem[(32 * arg4.length) + 128]
                        _2931 = mem[(32 * s) + (32 * arg4.length) + 160]
                        require s + 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_2246 + (32 * _2229) + 32]
                        require 1 < mem[_2246 + (32 * _2229) + 32]
                        mem[_2246 + (32 * _2229) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                        mem[_2246 + (32 * _2229) + 64] = address(_2931)
                        require s < mem[96]
                        _3118 = mem[(32 * s) + 128]
                        _3119 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = v
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_2246 + (32 * _2229) + 32]
                        _3121 = mem[_2246 + (32 * _2229) + 32]
                        idx = 0
                        while idx < 32 * _3121:
                            mem[idx + mem[64] + 100] = mem[idx + _2246 + (32 * _2229) + 64]
                            idx = idx + 32
                            continue 
                        require ext_code.size(address(_3118))
                        staticcall address(_3118).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * _3121) + _3119 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3412 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3441 = mem[_3412]
                        require mem[_3412] <= 4294967296
                        require mem[_3412] + 32 <= return_data.size
                        require mem[_3412 + mem[_3412]] <= 4294967296 and mem[_3412] + (32 * mem[_3412 + mem[_3412]]) + 32 <= return_data.size
                        mem[_3412 + ceil32(return_data.size)] = mem[_3412 + mem[_3412]]
                        _3476 = mem[_3412 + _3441]
                        idx = 0
                        while idx < 32 * _3476:
                            mem[idx + _3412 + ceil32(return_data.size) + 32] = mem[idx + _3412 + _3441 + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _3476) + _3412 + ceil32(return_data.size) + 32
                        require mem[_3412 + ceil32(return_data.size)] - 1 < mem[_3412 + ceil32(return_data.size)]
                        _3633 = mem[(32 * mem[_3412 + ceil32(return_data.size)] - 1) + _3412 + ceil32(return_data.size) + 32]
                        require floor32(_3476) + 1 < mem[_2246]
                        mem[(32 * floor32(_3476) + 1) + _2246 + 32] = mem[(32 * mem[_3412 + ceil32(return_data.size)] - 1) + _3412 + ceil32(return_data.size) + 32]
                        idx = floor32(_3476) + 1
                        v = _3633
                        w = _3412 + ceil32(return_data.size)
                        continue 
                require mem[_2246] - 1 < mem[_2246]
                if mem[(32 * mem[_2246] - 1) + _2246 + 32] <= arg3 + (idx + arg2 / 2 * arg3):
                    if u >= 0:
                        s = 0
                        t = 0
                        t = t
                        u = u
                        idx = idx
                        continue 
                    s = 0
                    t = 0
                    t = idx + arg2 / 2 * arg3
                    u = 0
                    idx = idx
                    continue 
                require mem[_2246] - 1 < mem[_2246]
                if 0 >= mem[(32 * mem[_2246] - 1) + _2246 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                    if u >= 0:
                        s = mem[(32 * mem[_2246] - 1) + _2246 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                        t = 0
                        t = t
                        u = u
                        idx = idx
                        continue 
                    s = mem[(32 * mem[_2246] - 1) + _2246 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = 0
                    t = idx + arg2 / 2 * arg3
                    u = 0
                    idx = idx
                    continue 
                if u >= mem[(32 * mem[_2246] - 1) + _2246 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                    s = mem[(32 * mem[_2246] - 1) + _2246 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = 0
                    t = t
                    u = u
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = mem[(32 * mem[_2246] - 1) + _2246 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                t = 0
                t = arg3 + (idx + arg2 / 2 * arg3)
                u = mem[(32 * mem[_2246] - 1) + _2246 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                idx = (idx + arg2 / 2) + 1
                continue 
            require mem[_1485] - 1 < mem[_1485]
            _2221 = mem[(32 * mem[_1485] - 1) + _1485 + 32]
            _2258 = mem[(32 * arg4.length) + 128]
            require mem[(32 * arg4.length) + 128] <= test266151307()
            _2276 = mem[64]
            mem[mem[64]] = mem[(32 * arg4.length) + 128]
            mem[64] = mem[64] + (32 * _2258) + 32
            if not _2258:
                require 0 < mem[_2276]
                mem[_2276 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                mem[_2276 + (32 * _2258) + 32] = 2
                mem[64] = _2276 + (32 * _2258) + 128
                mem[_2276 + (32 * _2258) + 64 len 64] = call.data[calldata.size len 64]
                _2833 = mem[(32 * arg4.length) + 128]
                v = 0
                w = arg3 + (idx + arg2 / 2 * arg3)
                x = 96
                while v < _2833 - 1:
                    require v < mem[(32 * arg4.length) + 128]
                    _2934 = mem[(32 * v) + (32 * arg4.length) + 160]
                    require v + 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_2276 + (32 * _2258) + 32]
                    require 1 < mem[_2276 + (32 * _2258) + 32]
                    mem[_2276 + (32 * _2258) + 96] = mem[(32 * v + 1) + (32 * arg4.length) + 172 len 20]
                    mem[_2276 + (32 * _2258) + 64] = address(_2934)
                    require v < mem[96]
                    _3122 = mem[(32 * v) + 128]
                    _3123 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = w
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[_2276 + (32 * _2258) + 32]
                    _3125 = mem[_2276 + (32 * _2258) + 32]
                    idx = 0
                    while idx < 32 * _3125:
                        mem[idx + mem[64] + 100] = mem[idx + _2276 + (32 * _2258) + 64]
                        idx = idx + 32
                        continue 
                    require ext_code.size(address(_3122))
                    staticcall address(_3122).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (32 * _3125) + _3123 + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3413 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3443 = mem[_3413]
                    require mem[_3413] <= 4294967296
                    require mem[_3413] + 32 <= return_data.size
                    require mem[_3413 + mem[_3413]] <= 4294967296 and mem[_3413] + (32 * mem[_3413 + mem[_3413]]) + 32 <= return_data.size
                    mem[_3413 + ceil32(return_data.size)] = mem[_3413 + mem[_3413]]
                    _3477 = mem[_3413 + _3443]
                    idx = 0
                    while idx < 32 * _3477:
                        mem[idx + _3413 + ceil32(return_data.size) + 32] = mem[idx + _3413 + _3443 + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _3477) + _3413 + ceil32(return_data.size) + 32
                    require mem[_3413 + ceil32(return_data.size)] - 1 < mem[_3413 + ceil32(return_data.size)]
                    _3635 = mem[(32 * mem[_3413 + ceil32(return_data.size)] - 1) + _3413 + ceil32(return_data.size) + 32]
                    require floor32(_3477) + 1 < mem[_2276]
                    mem[(32 * floor32(_3477) + 1) + _2276 + 32] = mem[(32 * mem[_3413 + ceil32(return_data.size)] - 1) + _3413 + ceil32(return_data.size) + 32]
                    idx = floor32(_3477) + 1
                    w = _3635
                    x = _3413 + ceil32(return_data.size)
                    continue 
            else:
                mem[_2276 + 32 len 32 * _2258] = call.data[calldata.size len 32 * _2258]
                require 0 < mem[_2276]
                mem[_2276 + 32] = arg3 + (idx + arg2 / 2 * arg3)
                mem[_2276 + (32 * _2258) + 32] = 2
                mem[64] = _2276 + (32 * _2258) + 128
                mem[_2276 + (32 * _2258) + 64 len 64] = call.data[calldata.size len 64]
                _2834 = mem[(32 * arg4.length) + 128]
                s = 0
                v = arg3 + (idx + arg2 / 2 * arg3)
                w = 96
                while s < _2834 - 1:
                    require s < mem[(32 * arg4.length) + 128]
                    _2937 = mem[(32 * s) + (32 * arg4.length) + 160]
                    require s + 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_2276 + (32 * _2258) + 32]
                    require 1 < mem[_2276 + (32 * _2258) + 32]
                    mem[_2276 + (32 * _2258) + 96] = mem[(32 * s + 1) + (32 * arg4.length) + 172 len 20]
                    mem[_2276 + (32 * _2258) + 64] = address(_2937)
                    require s < mem[96]
                    _3126 = mem[(32 * s) + 128]
                    _3127 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = v
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[_2276 + (32 * _2258) + 32]
                    _3129 = mem[_2276 + (32 * _2258) + 32]
                    idx = 0
                    while idx < 32 * _3129:
                        mem[idx + mem[64] + 100] = mem[idx + _2276 + (32 * _2258) + 64]
                        idx = idx + 32
                        continue 
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (32 * _3129) + _3127 + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3414 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3445 = mem[_3414]
                    require mem[_3414] <= 4294967296
                    require mem[_3414] + 32 <= return_data.size
                    require mem[_3414 + mem[_3414]] <= 4294967296 and mem[_3414] + (32 * mem[_3414 + mem[_3414]]) + 32 <= return_data.size
                    mem[_3414 + ceil32(return_data.size)] = mem[_3414 + mem[_3414]]
                    _3478 = mem[_3414 + _3445]
                    idx = 0
                    while idx < 32 * _3478:
                        mem[idx + _3414 + ceil32(return_data.size) + 32] = mem[idx + _3414 + _3445 + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _3478) + _3414 + ceil32(return_data.size) + 32
                    require mem[_3414 + ceil32(return_data.size)] - 1 < mem[_3414 + ceil32(return_data.size)]
                    _3637 = mem[(32 * mem[_3414 + ceil32(return_data.size)] - 1) + _3414 + ceil32(return_data.size) + 32]
                    require floor32(_3478) + 1 < mem[_2276]
                    mem[(32 * floor32(_3478) + 1) + _2276 + 32] = mem[(32 * mem[_3414 + ceil32(return_data.size)] - 1) + _3414 + ceil32(return_data.size) + 32]
                    idx = floor32(_3478) + 1
                    v = _3637
                    w = _3414 + ceil32(return_data.size)
                    continue 
            require mem[_2276] - 1 < mem[_2276]
            if mem[(32 * mem[_2276] - 1) + _2276 + 32] <= arg3 + (idx + arg2 / 2 * arg3):
                if _2221 - (idx + arg2 / 2 * arg3) >= 0:
                    if u >= _2221 - (idx + arg2 / 2 * arg3):
                        s = 0
                        t = _2221 - (idx + arg2 / 2 * arg3)
                        t = t
                        u = u
                        idx = idx
                        continue 
                    s = 0
                    t = _2221 - (idx + arg2 / 2 * arg3)
                    t = idx + arg2 / 2 * arg3
                    u = _2221 - (idx + arg2 / 2 * arg3)
                    idx = idx
                    continue 
                if u >= 0:
                    s = 0
                    t = _2221 - (idx + arg2 / 2 * arg3)
                    t = t
                    u = u
                    idx = (idx + arg2 / 2) + 1
                    continue 
                s = 0
                t = _2221 - (idx + arg2 / 2 * arg3)
                t = arg3 + (idx + arg2 / 2 * arg3)
                u = 0
                idx = (idx + arg2 / 2) + 1
                continue 
            require mem[_2276] - 1 < mem[_2276]
            if _2221 >= mem[(32 * mem[_2276] - 1) + _2276 + 32] - arg3:
                if u >= _2221 - (idx + arg2 / 2 * arg3):
                    s = mem[(32 * mem[_2276] - 1) + _2276 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                    t = _2221 - (idx + arg2 / 2 * arg3)
                    t = t
                    u = u
                    idx = idx
                    continue 
                s = mem[(32 * mem[_2276] - 1) + _2276 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                t = _2221 - (idx + arg2 / 2 * arg3)
                t = idx + arg2 / 2 * arg3
                u = _2221 - (idx + arg2 / 2 * arg3)
                idx = idx
                continue 
            if u >= mem[(32 * mem[_2276] - 1) + _2276 + 32] - arg3 - (idx + arg2 / 2 * arg3):
                s = mem[(32 * mem[_2276] - 1) + _2276 + 32] - arg3 - (idx + arg2 / 2 * arg3)
                t = _2221 - (idx + arg2 / 2 * arg3)
                t = t
                u = u
                idx = (idx + arg2 / 2) + 1
                continue 
            s = mem[(32 * mem[_2276] - 1) + _2276 + 32] - arg3 - (idx + arg2 / 2 * arg3)
            t = _2221 - (idx + arg2 / 2 * arg3)
            t = arg3 + (idx + arg2 / 2 * arg3)
            u = mem[(32 * mem[_2276] - 1) + _2276 + 32] - arg3 - (idx + arg2 / 2 * arg3)
            idx = (idx + arg2 / 2) + 1
            continue 
    return u, t
}



}
