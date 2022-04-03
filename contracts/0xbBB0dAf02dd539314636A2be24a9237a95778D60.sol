contract main {




// =====================  Runtime code  =====================


#
#  - sub_12bacace(?)
#  - sub_9d8502de(?)
#  - sub_b14a2151(?)
#
address adminAddress;
mapping of uint8 stor1;
address gasTokenAddress;
address sub_74b78d28Address;

function sub_74b78d28(?) {
    return sub_74b78d28Address
}

function gasToken() {
    return gasTokenAddress
}

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

function sub_611f7fb7(?) {
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
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'only operator'
    require arg5.length <= test266151307()
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg5.length
    if not arg5.length:
        require 0 < arg5.length
        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = arg2
        mem[(32 * arg4.length) + (64 * arg5.length) + 192] = 2
        mem[64] = (32 * arg4.length) + (64 * arg5.length) + 288
        mem[(32 * arg4.length) + (64 * arg5.length) + 224 len 64] = call.data[calldata.size len 64]
        idx = 0
        s = arg2
        t = 96
        while idx < arg5.length - 1:
            require idx < mem[(32 * arg4.length) + 128]
            _7341 = mem[(32 * idx) + (32 * arg4.length) + 160]
            require idx + 1 < mem[(32 * arg4.length) + 128]
            require 0 < mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            require 1 < mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            mem[(32 * arg4.length) + (64 * arg5.length) + 256] = mem[(32 * idx + 1) + (32 * arg4.length) + 172 len 20]
            mem[(32 * arg4.length) + (64 * arg5.length) + 224] = address(_7341)
            require idx < mem[96]
            _7368 = mem[(32 * idx) + 128]
            _7369 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            _7371 = mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            s = 0
            while s < 32 * _7371:
                mem[s + mem[64] + 100] = mem[s + (32 * arg4.length) + (64 * arg5.length) + 224]
                s = s + 32
                continue 
            require ext_code.size(address(_7368))
            staticcall address(_7368).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _7371) + _7369 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14808 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14842 = mem[_14808]
            require mem[_14808] <= 4294967296
            require mem[_14808] + 32 <= return_data.size
            require mem[_14808 + mem[_14808]] <= 4294967296 and mem[_14808] + (32 * mem[_14808 + mem[_14808]]) + 32 <= return_data.size
            mem[_14808 + ceil32(return_data.size)] = mem[_14808 + mem[_14808]]
            _15016 = mem[_14808 + _14842]
            s = 0
            while s < 32 * _15016:
                mem[s + _14808 + ceil32(return_data.size) + 32] = mem[s + _14808 + _14842 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _15016) + _14808 + ceil32(return_data.size) + 32
            require mem[_14808 + ceil32(return_data.size)] - 1 < mem[_14808 + ceil32(return_data.size)]
            _21914 = mem[(32 * mem[_14808 + ceil32(return_data.size)] - 1) + _14808 + ceil32(return_data.size) + 32]
            require floor32(_15016) + 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
            mem[(32 * floor32(_15016) + 1) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * mem[_14808 + ceil32(return_data.size)] - 1) + _14808 + ceil32(return_data.size) + 32]
            s = floor32(_15016) + 1
            s = _21914
            t = _14808 + ceil32(return_data.size)
            continue 
        require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
        if mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] <= arg2:
            if not arg3:
                _7358 = mem[(32 * arg4.length) + 128]
                require mem[(32 * arg4.length) + 128] - 1 <= test266151307()
                _7366 = mem[64]
                mem[mem[64]] = mem[(32 * arg4.length) + 128] - 1
                mem[64] = mem[64] + (32 * _7358 - 1) + 32
                if not _7358 - 1:
                    _14652 = mem[(32 * arg4.length) + 128]
                    idx = 0
                    while idx < _14652 - 1:
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx + 1 < mem[(32 * arg4.length) + 128]
                        _14971 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = address(_14971)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_14971)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[_7366]
                        mem[(32 * idx) + _7366 + 32] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    _14668 = mem[64]
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                    _14670 = mem[(32 * arg4.length) + 128]
                    mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                    mem[mem[64] + 64] = (32 * _14670) + 128
                    mem[(32 * _14670) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    _21861 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    mem[(32 * _14670) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                    mem[mem[64] + 96] = (32 * _21861) + (32 * _14670) + 160
                    mem[(32 * _21861) + (32 * _14670) + mem[64] + 192] = mem[_7366]
                    _28751 = mem[_7366]
                    mem[(32 * _21861) + (32 * _14670) + mem[64] + 224 len floor32(mem[_7366])] = mem[_7366 + 32 len floor32(mem[_7366])]
                    _35582 = mem[64]
                    mem[mem[64]] = (32 * _28751) + (32 * _21861) + (32 * _14670) + 192
                    mem[64] = (32 * _28751) + (32 * _21861) + (32 * _14670) + mem[64] + 224
                    require 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_7366]
                    if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                        _35710 = mem[_7366 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35774 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 228] = _35774
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 260] = 0
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 292] = this.address
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 324] = 128
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 356] = mem[_35582]
                        _35777 = mem[_35582]
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 388 len ceil32(mem[_35582])] = mem[_35582 + 32 len ceil32(mem[_35582])]
                        if not _35777 % 32:
                            require ext_code.size(address(_35710))
                            call address(_35710).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35774, 0, address(this.address), 128, mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 356 len _35777 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42526 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 228] = this.address
                            require ext_code.size(address(_42526))
                            staticcall address(_42526).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42974 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 260] = arg1
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 292] = ext_call.return_data[0]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 224] = 68
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 324] = 32
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_42974)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 480 len 4] = 0
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 452 len 0] = 0
                            call address(_42974) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 452 len 4]
                        else:
                            mem[floor32(_35777) + (32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 388] = mem[floor32(_35777) + (32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + -(_35777 % 32) + 420 len _35777 % 32]
                            require ext_code.size(address(_35710))
                            call address(_35710).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35774, 0, address(this.address), 128, mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 356 len floor32(_35777) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42654 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 228] = this.address
                            require ext_code.size(address(_42654))
                            staticcall address(_42654).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43105 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 260] = arg1
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 292] = ext_call.return_data[0]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 224] = 68
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 324] = 32
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43105)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 480 len 4] = 0
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 452 len 0] = 0
                            call address(_43105) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 452 len 4]
                    else:
                        _35712 = mem[_7366 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35778 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 228] = 0
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 260] = _35778
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 292] = this.address
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 324] = 128
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 356] = mem[_35582]
                        _35781 = mem[_35582]
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 388 len ceil32(mem[_35582])] = mem[_35582 + 32 len ceil32(mem[_35582])]
                        if not _35781 % 32:
                            require ext_code.size(address(_35712))
                            call address(_35712).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35778, address(this.address), 128, mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 356 len _35781 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42530 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 228] = this.address
                            require ext_code.size(address(_42530))
                            staticcall address(_42530).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42978 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 260] = arg1
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 292] = ext_call.return_data[0]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 224] = 68
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 324] = 32
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_42978)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 480 len 4] = 0
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 452 len 0] = 0
                            call address(_42978) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 452 len 4]
                        else:
                            mem[floor32(_35781) + (32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 388] = mem[floor32(_35781) + (32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + -(_35781 % 32) + 420 len _35781 % 32]
                            require ext_code.size(address(_35712))
                            call address(_35712).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35778, address(this.address), 128, mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 356 len floor32(_35781) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42657 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 228] = this.address
                            require ext_code.size(address(_42657))
                            staticcall address(_42657).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43109 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 260] = arg1
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 292] = ext_call.return_data[0]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 224] = 68
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 324] = 32
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43109)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 480 len 4] = 0
                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 452 len 0] = 0
                            call address(_43109) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 452 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 498 len 22]
                    else:
                        mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + 420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28751) + (32 * _21861) + (32 * _14670) + _14668 + ceil32(return_data.size) + 499 len 22]
                else:
                    mem[_7366 + 32 len 32 * _7358 - 1] = call.data[calldata.size len 32 * _7358 - 1]
                    _14653 = mem[(32 * arg4.length) + 128]
                    idx = 0
                    while idx < _14653 - 1:
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx + 1 < mem[(32 * arg4.length) + 128]
                        _14977 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = address(_14977)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_14977)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[_7366]
                        mem[(32 * idx) + _7366 + 32] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    _14672 = mem[64]
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                    _14674 = mem[(32 * arg4.length) + 128]
                    mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                    mem[mem[64] + 64] = (32 * _14674) + 128
                    mem[(32 * _14674) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    _21864 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    mem[(32 * _14674) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                    mem[mem[64] + 96] = (32 * _21864) + (32 * _14674) + 160
                    mem[(32 * _21864) + (32 * _14674) + mem[64] + 192] = mem[_7366]
                    _28754 = mem[_7366]
                    mem[(32 * _21864) + (32 * _14674) + mem[64] + 224 len floor32(mem[_7366])] = mem[_7366 + 32 len floor32(mem[_7366])]
                    _35585 = mem[64]
                    mem[mem[64]] = (32 * _28754) + (32 * _21864) + (32 * _14674) + 192
                    mem[64] = (32 * _28754) + (32 * _21864) + (32 * _14674) + mem[64] + 224
                    require 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_7366]
                    if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                        _35714 = mem[_7366 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35782 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 228] = _35782
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 260] = 0
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 292] = this.address
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 324] = 128
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 356] = mem[_35585]
                        _35785 = mem[_35585]
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 388 len ceil32(mem[_35585])] = mem[_35585 + 32 len ceil32(mem[_35585])]
                        if not _35785 % 32:
                            require ext_code.size(address(_35714))
                            call address(_35714).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35782, 0, address(this.address), 128, mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 356 len _35785 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42534 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 228] = this.address
                            require ext_code.size(address(_42534))
                            staticcall address(_42534).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42982 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 260] = arg1
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 292] = ext_call.return_data[0]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 224] = 68
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 324] = 32
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_42982)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 480 len 4] = 0
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 452 len 0] = 0
                            call address(_42982) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 452 len 4]
                        else:
                            mem[floor32(_35785) + (32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 388] = mem[floor32(_35785) + (32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + -(_35785 % 32) + 420 len _35785 % 32]
                            require ext_code.size(address(_35714))
                            call address(_35714).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35782, 0, address(this.address), 128, mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 356 len floor32(_35785) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42660 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 228] = this.address
                            require ext_code.size(address(_42660))
                            staticcall address(_42660).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43113 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 260] = arg1
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 292] = ext_call.return_data[0]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 224] = 68
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 324] = 32
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43113)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 480 len 4] = 0
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 452 len 0] = 0
                            call address(_43113) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 452 len 4]
                    else:
                        _35716 = mem[_7366 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35786 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 228] = 0
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 260] = _35786
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 292] = this.address
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 324] = 128
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 356] = mem[_35585]
                        _35789 = mem[_35585]
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 388 len ceil32(mem[_35585])] = mem[_35585 + 32 len ceil32(mem[_35585])]
                        if not _35789 % 32:
                            require ext_code.size(address(_35716))
                            call address(_35716).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35786, address(this.address), 128, mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 356 len _35789 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42538 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 228] = this.address
                            require ext_code.size(address(_42538))
                            staticcall address(_42538).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42986 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 260] = arg1
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 292] = ext_call.return_data[0]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 224] = 68
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 324] = 32
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_42986)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 480 len 4] = 0
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 452 len 0] = 0
                            call address(_42986) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 452 len 4]
                        else:
                            mem[floor32(_35789) + (32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 388] = mem[floor32(_35789) + (32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + -(_35789 % 32) + 420 len _35789 % 32]
                            require ext_code.size(address(_35716))
                            call address(_35716).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35786, address(this.address), 128, mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 356 len floor32(_35789) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42663 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 228] = this.address
                            require ext_code.size(address(_42663))
                            staticcall address(_42663).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43117 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 260] = arg1
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 292] = ext_call.return_data[0]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 224] = 68
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 324] = 32
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43117)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 480 len 4] = 0
                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 452 len 0] = 0
                            call address(_43117) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 452 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 498 len 22]
                    else:
                        mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + 420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28754) + (32 * _21864) + (32 * _14674) + _14672 + ceil32(return_data.size) + 499 len 22]
            else:
                require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                if mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] >= arg3 + arg2:
                    _7378 = mem[(32 * arg4.length) + 128]
                    require mem[(32 * arg4.length) + 128] - 1 <= test266151307()
                    _7387 = mem[64]
                    mem[mem[64]] = mem[(32 * arg4.length) + 128] - 1
                    mem[64] = mem[64] + (32 * _7378 - 1) + 32
                    if not _7378 - 1:
                        _14654 = mem[(32 * arg4.length) + 128]
                        idx = 0
                        while idx < _14654 - 1:
                            require idx < mem[96]
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx + 1 < mem[(32 * arg4.length) + 128]
                            _14983 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = address(_14983)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_14983)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[_7387]
                            mem[(32 * idx) + _7387 + 32] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        _14676 = mem[64]
                        mem[mem[64] + 32] = 96
                        mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                        _14678 = mem[(32 * arg4.length) + 128]
                        mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                        mem[mem[64] + 64] = (32 * _14678) + 128
                        mem[(32 * _14678) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _21867 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        mem[(32 * _14678) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                        mem[mem[64] + 96] = (32 * _21867) + (32 * _14678) + 160
                        mem[(32 * _21867) + (32 * _14678) + mem[64] + 192] = mem[_7387]
                        _28757 = mem[_7387]
                        mem[(32 * _21867) + (32 * _14678) + mem[64] + 224 len floor32(mem[_7387])] = mem[_7387 + 32 len floor32(mem[_7387])]
                        _35588 = mem[64]
                        mem[mem[64]] = (32 * _28757) + (32 * _21867) + (32 * _14678) + 192
                        mem[64] = (32 * _28757) + (32 * _21867) + (32 * _14678) + mem[64] + 224
                        require 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_7387]
                        if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                            _35718 = mem[_7387 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35790 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 228] = _35790
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 260] = 0
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 292] = this.address
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 324] = 128
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 356] = mem[_35588]
                            _35793 = mem[_35588]
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 388 len ceil32(mem[_35588])] = mem[_35588 + 32 len ceil32(mem[_35588])]
                            if not _35793 % 32:
                                require ext_code.size(address(_35718))
                                call address(_35718).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35790, 0, address(this.address), 128, mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 356 len _35793 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42542 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 228] = this.address
                                require ext_code.size(address(_42542))
                                staticcall address(_42542).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42990 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 260] = arg1
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 292] = ext_call.return_data[0]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 224] = 68
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 324] = 32
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_42990)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 480 len 4] = 0
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 452 len 0] = 0
                                call address(_42990) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 452 len 4]
                            else:
                                mem[floor32(_35793) + (32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 388] = mem[floor32(_35793) + (32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + -(_35793 % 32) + 420 len _35793 % 32]
                                require ext_code.size(address(_35718))
                                call address(_35718).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35790, 0, address(this.address), 128, mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 356 len floor32(_35793) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42666 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 228] = this.address
                                require ext_code.size(address(_42666))
                                staticcall address(_42666).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43121 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 260] = arg1
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 292] = ext_call.return_data[0]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 224] = 68
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 324] = 32
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43121)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 480 len 4] = 0
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 452 len 0] = 0
                                call address(_43121) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 452 len 4]
                        else:
                            _35720 = mem[_7387 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35794 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 228] = 0
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 260] = _35794
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 292] = this.address
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 324] = 128
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 356] = mem[_35588]
                            _35797 = mem[_35588]
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 388 len ceil32(mem[_35588])] = mem[_35588 + 32 len ceil32(mem[_35588])]
                            if not _35797 % 32:
                                require ext_code.size(address(_35720))
                                call address(_35720).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35794, address(this.address), 128, mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 356 len _35797 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42546 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 228] = this.address
                                require ext_code.size(address(_42546))
                                staticcall address(_42546).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42994 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 260] = arg1
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 292] = ext_call.return_data[0]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 224] = 68
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 324] = 32
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_42994)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 480 len 4] = 0
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 452 len 0] = 0
                                call address(_42994) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 452 len 4]
                            else:
                                mem[floor32(_35797) + (32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 388] = mem[floor32(_35797) + (32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + -(_35797 % 32) + 420 len _35797 % 32]
                                require ext_code.size(address(_35720))
                                call address(_35720).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35794, address(this.address), 128, mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 356 len floor32(_35797) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42669 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 228] = this.address
                                require ext_code.size(address(_42669))
                                staticcall address(_42669).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43125 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 260] = arg1
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 292] = ext_call.return_data[0]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 224] = 68
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 324] = 32
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43125)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 480 len 4] = 0
                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 452 len 0] = 0
                                call address(_43125) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 452 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 498 len 22]
                        else:
                            mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + 420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28757) + (32 * _21867) + (32 * _14678) + _14676 + ceil32(return_data.size) + 499 len 22]
                    else:
                        mem[_7387 + 32 len 32 * _7378 - 1] = call.data[calldata.size len 32 * _7378 - 1]
                        _14655 = mem[(32 * arg4.length) + 128]
                        idx = 0
                        while idx < _14655 - 1:
                            require idx < mem[96]
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx + 1 < mem[(32 * arg4.length) + 128]
                            _14989 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = address(_14989)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_14989)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[_7387]
                            mem[(32 * idx) + _7387 + 32] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        _14680 = mem[64]
                        mem[mem[64] + 32] = 96
                        mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                        _14682 = mem[(32 * arg4.length) + 128]
                        mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                        mem[mem[64] + 64] = (32 * _14682) + 128
                        mem[(32 * _14682) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _21870 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        mem[(32 * _14682) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                        mem[mem[64] + 96] = (32 * _21870) + (32 * _14682) + 160
                        mem[(32 * _21870) + (32 * _14682) + mem[64] + 192] = mem[_7387]
                        _28760 = mem[_7387]
                        mem[(32 * _21870) + (32 * _14682) + mem[64] + 224 len floor32(mem[_7387])] = mem[_7387 + 32 len floor32(mem[_7387])]
                        _35591 = mem[64]
                        mem[mem[64]] = (32 * _28760) + (32 * _21870) + (32 * _14682) + 192
                        mem[64] = (32 * _28760) + (32 * _21870) + (32 * _14682) + mem[64] + 224
                        require 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_7387]
                        if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                            _35722 = mem[_7387 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35798 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 228] = _35798
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 260] = 0
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 292] = this.address
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 324] = 128
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 356] = mem[_35591]
                            _35801 = mem[_35591]
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 388 len ceil32(mem[_35591])] = mem[_35591 + 32 len ceil32(mem[_35591])]
                            if not _35801 % 32:
                                require ext_code.size(address(_35722))
                                call address(_35722).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35798, 0, address(this.address), 128, mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 356 len _35801 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42550 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 228] = this.address
                                require ext_code.size(address(_42550))
                                staticcall address(_42550).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42998 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 260] = arg1
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 292] = ext_call.return_data[0]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 224] = 68
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 324] = 32
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_42998)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 480 len 4] = 0
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 452 len 0] = 0
                                call address(_42998) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 452 len 4]
                            else:
                                mem[floor32(_35801) + (32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 388] = mem[floor32(_35801) + (32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + -(_35801 % 32) + 420 len _35801 % 32]
                                require ext_code.size(address(_35722))
                                call address(_35722).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35798, 0, address(this.address), 128, mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 356 len floor32(_35801) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42672 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 228] = this.address
                                require ext_code.size(address(_42672))
                                staticcall address(_42672).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43129 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 260] = arg1
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 292] = ext_call.return_data[0]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 224] = 68
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 324] = 32
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43129)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 480 len 4] = 0
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 452 len 0] = 0
                                call address(_43129) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 452 len 4]
                        else:
                            _35724 = mem[_7387 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35802 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 228] = 0
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 260] = _35802
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 292] = this.address
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 324] = 128
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 356] = mem[_35591]
                            _35805 = mem[_35591]
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 388 len ceil32(mem[_35591])] = mem[_35591 + 32 len ceil32(mem[_35591])]
                            if not _35805 % 32:
                                require ext_code.size(address(_35724))
                                call address(_35724).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35802, address(this.address), 128, mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 356 len _35805 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42554 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 228] = this.address
                                require ext_code.size(address(_42554))
                                staticcall address(_42554).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43002 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 260] = arg1
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 292] = ext_call.return_data[0]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 224] = 68
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 324] = 32
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43002)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 480 len 4] = 0
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 452 len 0] = 0
                                call address(_43002) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 452 len 4]
                            else:
                                mem[floor32(_35805) + (32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 388] = mem[floor32(_35805) + (32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + -(_35805 % 32) + 420 len _35805 % 32]
                                require ext_code.size(address(_35724))
                                call address(_35724).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35802, address(this.address), 128, mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 356 len floor32(_35805) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42675 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 228] = this.address
                                require ext_code.size(address(_42675))
                                staticcall address(_42675).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43133 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 260] = arg1
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 292] = ext_call.return_data[0]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 224] = 68
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 324] = 32
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43133)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 480 len 4] = 0
                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 452 len 0] = 0
                                call address(_43133) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 452 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 498 len 22]
                        else:
                            mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + 420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28760) + (32 * _21870) + (32 * _14682) + _14680 + ceil32(return_data.size) + 499 len 22]
        else:
            require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
            if not arg3:
                _7379 = mem[(32 * arg4.length) + 128]
                require mem[(32 * arg4.length) + 128] - 1 <= test266151307()
                _7388 = mem[64]
                mem[mem[64]] = mem[(32 * arg4.length) + 128] - 1
                mem[64] = mem[64] + (32 * _7379 - 1) + 32
                if not _7379 - 1:
                    _14656 = mem[(32 * arg4.length) + 128]
                    idx = 0
                    while idx < _14656 - 1:
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx + 1 < mem[(32 * arg4.length) + 128]
                        _14995 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = address(_14995)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_14995)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[_7388]
                        mem[(32 * idx) + _7388 + 32] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    _14684 = mem[64]
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                    _14686 = mem[(32 * arg4.length) + 128]
                    mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                    mem[mem[64] + 64] = (32 * _14686) + 128
                    mem[(32 * _14686) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    _21873 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    mem[(32 * _14686) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                    mem[mem[64] + 96] = (32 * _21873) + (32 * _14686) + 160
                    mem[(32 * _21873) + (32 * _14686) + mem[64] + 192] = mem[_7388]
                    _28763 = mem[_7388]
                    mem[(32 * _21873) + (32 * _14686) + mem[64] + 224 len floor32(mem[_7388])] = mem[_7388 + 32 len floor32(mem[_7388])]
                    _35594 = mem[64]
                    mem[mem[64]] = (32 * _28763) + (32 * _21873) + (32 * _14686) + 192
                    mem[64] = (32 * _28763) + (32 * _21873) + (32 * _14686) + mem[64] + 224
                    require 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_7388]
                    if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                        _35726 = mem[_7388 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35806 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 228] = _35806
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 260] = 0
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 292] = this.address
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 324] = 128
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 356] = mem[_35594]
                        _35809 = mem[_35594]
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 388 len ceil32(mem[_35594])] = mem[_35594 + 32 len ceil32(mem[_35594])]
                        if not _35809 % 32:
                            require ext_code.size(address(_35726))
                            call address(_35726).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35806, 0, address(this.address), 128, mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 356 len _35809 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42558 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 228] = this.address
                            require ext_code.size(address(_42558))
                            staticcall address(_42558).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43006 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 260] = arg1
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 292] = ext_call.return_data[0]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 224] = 68
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 324] = 32
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43006)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 480 len 4] = 0
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 452 len 0] = 0
                            call address(_43006) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 452 len 4]
                        else:
                            mem[floor32(_35809) + (32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 388] = mem[floor32(_35809) + (32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + -(_35809 % 32) + 420 len _35809 % 32]
                            require ext_code.size(address(_35726))
                            call address(_35726).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35806, 0, address(this.address), 128, mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 356 len floor32(_35809) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42678 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 228] = this.address
                            require ext_code.size(address(_42678))
                            staticcall address(_42678).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43137 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 260] = arg1
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 292] = ext_call.return_data[0]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 224] = 68
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 324] = 32
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43137)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 480 len 4] = 0
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 452 len 0] = 0
                            call address(_43137) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 452 len 4]
                    else:
                        _35728 = mem[_7388 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35810 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 228] = 0
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 260] = _35810
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 292] = this.address
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 324] = 128
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 356] = mem[_35594]
                        _35813 = mem[_35594]
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 388 len ceil32(mem[_35594])] = mem[_35594 + 32 len ceil32(mem[_35594])]
                        if not _35813 % 32:
                            require ext_code.size(address(_35728))
                            call address(_35728).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35810, address(this.address), 128, mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 356 len _35813 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42562 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 228] = this.address
                            require ext_code.size(address(_42562))
                            staticcall address(_42562).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43010 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 260] = arg1
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 292] = ext_call.return_data[0]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 224] = 68
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 324] = 32
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43010)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 480 len 4] = 0
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 452 len 0] = 0
                            call address(_43010) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 452 len 4]
                        else:
                            mem[floor32(_35813) + (32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 388] = mem[floor32(_35813) + (32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + -(_35813 % 32) + 420 len _35813 % 32]
                            require ext_code.size(address(_35728))
                            call address(_35728).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35810, address(this.address), 128, mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 356 len floor32(_35813) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42681 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 228] = this.address
                            require ext_code.size(address(_42681))
                            staticcall address(_42681).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43141 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 260] = arg1
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 292] = ext_call.return_data[0]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 224] = 68
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 324] = 32
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43141)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 480 len 4] = 0
                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 452 len 0] = 0
                            call address(_43141) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 452 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 498 len 22]
                    else:
                        mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + 420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28763) + (32 * _21873) + (32 * _14686) + _14684 + ceil32(return_data.size) + 499 len 22]
                else:
                    mem[_7388 + 32 len 32 * _7379 - 1] = call.data[calldata.size len 32 * _7379 - 1]
                    _14657 = mem[(32 * arg4.length) + 128]
                    idx = 0
                    while idx < _14657 - 1:
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx + 1 < mem[(32 * arg4.length) + 128]
                        _15001 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = address(_15001)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_15001)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[_7388]
                        mem[(32 * idx) + _7388 + 32] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    _14688 = mem[64]
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                    _14690 = mem[(32 * arg4.length) + 128]
                    mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                    mem[mem[64] + 64] = (32 * _14690) + 128
                    mem[(32 * _14690) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    _21876 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    mem[(32 * _14690) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                    mem[mem[64] + 96] = (32 * _21876) + (32 * _14690) + 160
                    mem[(32 * _21876) + (32 * _14690) + mem[64] + 192] = mem[_7388]
                    _28766 = mem[_7388]
                    mem[(32 * _21876) + (32 * _14690) + mem[64] + 224 len floor32(mem[_7388])] = mem[_7388 + 32 len floor32(mem[_7388])]
                    _35597 = mem[64]
                    mem[mem[64]] = (32 * _28766) + (32 * _21876) + (32 * _14690) + 192
                    mem[64] = (32 * _28766) + (32 * _21876) + (32 * _14690) + mem[64] + 224
                    require 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_7388]
                    if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                        _35730 = mem[_7388 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35814 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 228] = _35814
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 260] = 0
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 292] = this.address
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 324] = 128
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 356] = mem[_35597]
                        _35817 = mem[_35597]
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 388 len ceil32(mem[_35597])] = mem[_35597 + 32 len ceil32(mem[_35597])]
                        if not _35817 % 32:
                            require ext_code.size(address(_35730))
                            call address(_35730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35814, 0, address(this.address), 128, mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 356 len _35817 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42566 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 228] = this.address
                            require ext_code.size(address(_42566))
                            staticcall address(_42566).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43014 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 260] = arg1
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 292] = ext_call.return_data[0]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 224] = 68
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 324] = 32
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43014)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 480 len 4] = 0
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 452 len 0] = 0
                            call address(_43014) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 452 len 4]
                        else:
                            mem[floor32(_35817) + (32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 388] = mem[floor32(_35817) + (32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + -(_35817 % 32) + 420 len _35817 % 32]
                            require ext_code.size(address(_35730))
                            call address(_35730).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35814, 0, address(this.address), 128, mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 356 len floor32(_35817) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42684 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 228] = this.address
                            require ext_code.size(address(_42684))
                            staticcall address(_42684).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43145 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 260] = arg1
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 292] = ext_call.return_data[0]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 224] = 68
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 324] = 32
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43145)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 480 len 4] = 0
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 452 len 0] = 0
                            call address(_43145) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 452 len 4]
                    else:
                        _35732 = mem[_7388 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35818 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 228] = 0
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 260] = _35818
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 292] = this.address
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 324] = 128
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 356] = mem[_35597]
                        _35821 = mem[_35597]
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 388 len ceil32(mem[_35597])] = mem[_35597 + 32 len ceil32(mem[_35597])]
                        if not _35821 % 32:
                            require ext_code.size(address(_35732))
                            call address(_35732).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35818, address(this.address), 128, mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 356 len _35821 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42570 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 228] = this.address
                            require ext_code.size(address(_42570))
                            staticcall address(_42570).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43018 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 260] = arg1
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 292] = ext_call.return_data[0]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 224] = 68
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 324] = 32
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43018)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 480 len 4] = 0
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 452 len 0] = 0
                            call address(_43018) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 452 len 4]
                        else:
                            mem[floor32(_35821) + (32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 388] = mem[floor32(_35821) + (32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + -(_35821 % 32) + 420 len _35821 % 32]
                            require ext_code.size(address(_35732))
                            call address(_35732).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35818, address(this.address), 128, mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 356 len floor32(_35821) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42687 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 228] = this.address
                            require ext_code.size(address(_42687))
                            staticcall address(_42687).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43149 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 260] = arg1
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 292] = ext_call.return_data[0]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 224] = 68
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 324] = 32
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43149)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 480 len 4] = 0
                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 452 len 0] = 0
                            call address(_43149) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 452 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 498 len 22]
                    else:
                        mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + 420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28766) + (32 * _21876) + (32 * _14690) + _14688 + ceil32(return_data.size) + 499 len 22]
            else:
                require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                if mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] >= arg3 + arg2:
                    _7403 = mem[(32 * arg4.length) + 128]
                    require mem[(32 * arg4.length) + 128] - 1 <= test266151307()
                    _7421 = mem[64]
                    mem[mem[64]] = mem[(32 * arg4.length) + 128] - 1
                    mem[64] = mem[64] + (32 * _7403 - 1) + 32
                    if not _7403 - 1:
                        _14658 = mem[(32 * arg4.length) + 128]
                        idx = 0
                        while idx < _14658 - 1:
                            require idx < mem[96]
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx + 1 < mem[(32 * arg4.length) + 128]
                            _15007 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = address(_15007)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15007)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[_7421]
                            mem[(32 * idx) + _7421 + 32] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        _14692 = mem[64]
                        mem[mem[64] + 32] = 96
                        mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                        _14694 = mem[(32 * arg4.length) + 128]
                        mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                        mem[mem[64] + 64] = (32 * _14694) + 128
                        mem[(32 * _14694) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _21879 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        mem[(32 * _14694) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                        mem[mem[64] + 96] = (32 * _21879) + (32 * _14694) + 160
                        mem[(32 * _21879) + (32 * _14694) + mem[64] + 192] = mem[_7421]
                        _28769 = mem[_7421]
                        mem[(32 * _21879) + (32 * _14694) + mem[64] + 224 len floor32(mem[_7421])] = mem[_7421 + 32 len floor32(mem[_7421])]
                        _35600 = mem[64]
                        mem[mem[64]] = (32 * _28769) + (32 * _21879) + (32 * _14694) + 192
                        mem[64] = (32 * _28769) + (32 * _21879) + (32 * _14694) + mem[64] + 224
                        require 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_7421]
                        if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                            _35734 = mem[_7421 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35822 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 228] = _35822
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 260] = 0
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 292] = this.address
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 324] = 128
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 356] = mem[_35600]
                            _35825 = mem[_35600]
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 388 len ceil32(mem[_35600])] = mem[_35600 + 32 len ceil32(mem[_35600])]
                            if not _35825 % 32:
                                require ext_code.size(address(_35734))
                                call address(_35734).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35822, 0, address(this.address), 128, mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 356 len _35825 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42574 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 228] = this.address
                                require ext_code.size(address(_42574))
                                staticcall address(_42574).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43022 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 260] = arg1
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 292] = ext_call.return_data[0]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 224] = 68
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 324] = 32
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43022)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 480 len 4] = 0
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 452 len 0] = 0
                                call address(_43022) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 452 len 4]
                            else:
                                mem[floor32(_35825) + (32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 388] = mem[floor32(_35825) + (32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + -(_35825 % 32) + 420 len _35825 % 32]
                                require ext_code.size(address(_35734))
                                call address(_35734).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35822, 0, address(this.address), 128, mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 356 len floor32(_35825) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42690 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 228] = this.address
                                require ext_code.size(address(_42690))
                                staticcall address(_42690).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43153 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 260] = arg1
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 292] = ext_call.return_data[0]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 224] = 68
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 324] = 32
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43153)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 480 len 4] = 0
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 452 len 0] = 0
                                call address(_43153) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 452 len 4]
                        else:
                            _35736 = mem[_7421 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35826 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 228] = 0
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 260] = _35826
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 292] = this.address
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 324] = 128
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 356] = mem[_35600]
                            _35829 = mem[_35600]
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 388 len ceil32(mem[_35600])] = mem[_35600 + 32 len ceil32(mem[_35600])]
                            if not _35829 % 32:
                                require ext_code.size(address(_35736))
                                call address(_35736).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35826, address(this.address), 128, mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 356 len _35829 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42578 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 228] = this.address
                                require ext_code.size(address(_42578))
                                staticcall address(_42578).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43026 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 260] = arg1
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 292] = ext_call.return_data[0]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 224] = 68
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 324] = 32
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43026)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 480 len 4] = 0
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 452 len 0] = 0
                                call address(_43026) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 452 len 4]
                            else:
                                mem[floor32(_35829) + (32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 388] = mem[floor32(_35829) + (32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + -(_35829 % 32) + 420 len _35829 % 32]
                                require ext_code.size(address(_35736))
                                call address(_35736).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35826, address(this.address), 128, mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 356 len floor32(_35829) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42693 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 228] = this.address
                                require ext_code.size(address(_42693))
                                staticcall address(_42693).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43157 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 260] = arg1
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 292] = ext_call.return_data[0]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 224] = 68
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 324] = 32
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43157)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 480 len 4] = 0
                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 452 len 0] = 0
                                call address(_43157) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 452 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 498 len 22]
                        else:
                            mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + 420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28769) + (32 * _21879) + (32 * _14694) + _14692 + ceil32(return_data.size) + 499 len 22]
                    else:
                        mem[_7421 + 32 len 32 * _7403 - 1] = call.data[calldata.size len 32 * _7403 - 1]
                        _14659 = mem[(32 * arg4.length) + 128]
                        idx = 0
                        while idx < _14659 - 1:
                            require idx < mem[96]
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx + 1 < mem[(32 * arg4.length) + 128]
                            _15013 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = address(_15013)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15013)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[_7421]
                            mem[(32 * idx) + _7421 + 32] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        _14696 = mem[64]
                        mem[mem[64] + 32] = 96
                        mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                        _14698 = mem[(32 * arg4.length) + 128]
                        mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                        mem[mem[64] + 64] = (32 * _14698) + 128
                        mem[(32 * _14698) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _21882 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        mem[(32 * _14698) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                        mem[mem[64] + 96] = (32 * _21882) + (32 * _14698) + 160
                        mem[(32 * _21882) + (32 * _14698) + mem[64] + 192] = mem[_7421]
                        _28772 = mem[_7421]
                        mem[(32 * _21882) + (32 * _14698) + mem[64] + 224 len floor32(mem[_7421])] = mem[_7421 + 32 len floor32(mem[_7421])]
                        _35603 = mem[64]
                        mem[mem[64]] = (32 * _28772) + (32 * _21882) + (32 * _14698) + 192
                        mem[64] = (32 * _28772) + (32 * _21882) + (32 * _14698) + mem[64] + 224
                        require 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_7421]
                        if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                            _35738 = mem[_7421 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35830 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 228] = _35830
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 260] = 0
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 292] = this.address
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 324] = 128
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 356] = mem[_35603]
                            _35833 = mem[_35603]
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 388 len ceil32(mem[_35603])] = mem[_35603 + 32 len ceil32(mem[_35603])]
                            if not _35833 % 32:
                                require ext_code.size(address(_35738))
                                call address(_35738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35830, 0, address(this.address), 128, mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 356 len _35833 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42582 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 228] = this.address
                                require ext_code.size(address(_42582))
                                staticcall address(_42582).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43030 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 260] = arg1
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 292] = ext_call.return_data[0]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 224] = 68
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 324] = 32
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43030)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 480 len 4] = 0
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 452 len 0] = 0
                                call address(_43030) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 452 len 4]
                            else:
                                mem[floor32(_35833) + (32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 388] = mem[floor32(_35833) + (32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + -(_35833 % 32) + 420 len _35833 % 32]
                                require ext_code.size(address(_35738))
                                call address(_35738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35830, 0, address(this.address), 128, mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 356 len floor32(_35833) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42696 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 228] = this.address
                                require ext_code.size(address(_42696))
                                staticcall address(_42696).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43161 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 260] = arg1
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 292] = ext_call.return_data[0]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 224] = 68
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 324] = 32
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43161)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 480 len 4] = 0
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 452 len 0] = 0
                                call address(_43161) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 452 len 4]
                        else:
                            _35740 = mem[_7421 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35834 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 228] = 0
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 260] = _35834
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 292] = this.address
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 324] = 128
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 356] = mem[_35603]
                            _35837 = mem[_35603]
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 388 len ceil32(mem[_35603])] = mem[_35603 + 32 len ceil32(mem[_35603])]
                            if not _35837 % 32:
                                require ext_code.size(address(_35740))
                                call address(_35740).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35834, address(this.address), 128, mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 356 len _35837 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42586 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 228] = this.address
                                require ext_code.size(address(_42586))
                                staticcall address(_42586).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43034 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 260] = arg1
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 292] = ext_call.return_data[0]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 224] = 68
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 324] = 32
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43034)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 480 len 4] = 0
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 452 len 0] = 0
                                call address(_43034) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 452 len 4]
                            else:
                                mem[floor32(_35837) + (32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 388] = mem[floor32(_35837) + (32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + -(_35837 % 32) + 420 len _35837 % 32]
                                require ext_code.size(address(_35740))
                                call address(_35740).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35834, address(this.address), 128, mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 356 len floor32(_35837) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42699 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 228] = this.address
                                require ext_code.size(address(_42699))
                                staticcall address(_42699).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43165 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 260] = arg1
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 292] = ext_call.return_data[0]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 224] = 68
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 324] = 32
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43165)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 480 len 4] = 0
                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 452 len 0] = 0
                                call address(_43165) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 452 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 498 len 22]
                        else:
                            mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + 420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28772) + (32 * _21882) + (32 * _14698) + _14696 + ceil32(return_data.size) + 499 len 22]
    else:
        mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg5.length] = call.data[calldata.size len 32 * arg5.length]
        require 0 < arg5.length
        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = arg2
        mem[(32 * arg4.length) + (64 * arg5.length) + 192] = 2
        mem[64] = (32 * arg4.length) + (64 * arg5.length) + 288
        mem[(32 * arg4.length) + (64 * arg5.length) + 224 len 64] = call.data[calldata.size len 64]
        idx = 0
        s = arg2
        t = 96
        while idx < arg5.length - 1:
            require idx < mem[(32 * arg4.length) + 128]
            _7344 = mem[(32 * idx) + (32 * arg4.length) + 160]
            require idx + 1 < mem[(32 * arg4.length) + 128]
            require 0 < mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            require 1 < mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            mem[(32 * arg4.length) + (64 * arg5.length) + 256] = mem[(32 * idx + 1) + (32 * arg4.length) + 172 len 20]
            mem[(32 * arg4.length) + (64 * arg5.length) + 224] = address(_7344)
            require idx < mem[96]
            _7374 = mem[(32 * idx) + 128]
            _7375 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            _7377 = mem[(32 * arg4.length) + (64 * arg5.length) + 192]
            s = 0
            while s < 32 * _7377:
                mem[s + mem[64] + 100] = mem[s + (32 * arg4.length) + (64 * arg5.length) + 224]
                s = s + 32
                continue 
            require ext_code.size(address(_7374))
            staticcall address(_7374).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _7377) + _7375 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14833 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14852 = mem[_14833]
            require mem[_14833] <= 4294967296
            require mem[_14833] + 32 <= return_data.size
            require mem[_14833 + mem[_14833]] <= 4294967296 and mem[_14833] + (32 * mem[_14833 + mem[_14833]]) + 32 <= return_data.size
            mem[_14833 + ceil32(return_data.size)] = mem[_14833 + mem[_14833]]
            _15065 = mem[_14833 + _14852]
            s = 0
            while s < 32 * _15065:
                mem[s + _14833 + ceil32(return_data.size) + 32] = mem[s + _14833 + _14852 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _15065) + _14833 + ceil32(return_data.size) + 32
            require mem[_14833 + ceil32(return_data.size)] - 1 < mem[_14833 + ceil32(return_data.size)]
            _21916 = mem[(32 * mem[_14833 + ceil32(return_data.size)] - 1) + _14833 + ceil32(return_data.size) + 32]
            require floor32(_15065) + 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
            mem[(32 * floor32(_15065) + 1) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * mem[_14833 + ceil32(return_data.size)] - 1) + _14833 + ceil32(return_data.size) + 32]
            s = floor32(_15065) + 1
            s = _21916
            t = _14833 + ceil32(return_data.size)
            continue 
        require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
        if mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] <= arg2:
            if not arg3:
                _7362 = mem[(32 * arg4.length) + 128]
                require mem[(32 * arg4.length) + 128] - 1 <= test266151307()
                _7372 = mem[64]
                mem[mem[64]] = mem[(32 * arg4.length) + 128] - 1
                mem[64] = mem[64] + (32 * _7362 - 1) + 32
                if not _7362 - 1:
                    _14660 = mem[(32 * arg4.length) + 128]
                    idx = 0
                    while idx < _14660 - 1:
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx + 1 < mem[(32 * arg4.length) + 128]
                        _15020 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = address(_15020)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_15020)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[_7372]
                        mem[(32 * idx) + _7372 + 32] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    _14702 = mem[64]
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                    _14704 = mem[(32 * arg4.length) + 128]
                    mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                    mem[mem[64] + 64] = (32 * _14704) + 128
                    mem[(32 * _14704) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    _21888 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    mem[(32 * _14704) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                    mem[mem[64] + 96] = (32 * _21888) + (32 * _14704) + 160
                    mem[(32 * _21888) + (32 * _14704) + mem[64] + 192] = mem[_7372]
                    _28775 = mem[_7372]
                    mem[(32 * _21888) + (32 * _14704) + mem[64] + 224 len floor32(mem[_7372])] = mem[_7372 + 32 len floor32(mem[_7372])]
                    _35606 = mem[64]
                    mem[mem[64]] = (32 * _28775) + (32 * _21888) + (32 * _14704) + 192
                    mem[64] = (32 * _28775) + (32 * _21888) + (32 * _14704) + mem[64] + 224
                    require 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_7372]
                    if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                        _35742 = mem[_7372 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35838 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 228] = _35838
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 260] = 0
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 292] = this.address
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 324] = 128
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 356] = mem[_35606]
                        _35841 = mem[_35606]
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 388 len ceil32(mem[_35606])] = mem[_35606 + 32 len ceil32(mem[_35606])]
                        if not _35841 % 32:
                            require ext_code.size(address(_35742))
                            call address(_35742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35838, 0, address(this.address), 128, mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 356 len _35841 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42590 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 228] = this.address
                            require ext_code.size(address(_42590))
                            staticcall address(_42590).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43038 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 260] = arg1
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 292] = ext_call.return_data[0]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 224] = 68
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 324] = 32
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43038)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 480 len 4] = 0
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 452 len 0] = 0
                            call address(_43038) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 452 len 4]
                        else:
                            mem[floor32(_35841) + (32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 388] = mem[floor32(_35841) + (32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + -(_35841 % 32) + 420 len _35841 % 32]
                            require ext_code.size(address(_35742))
                            call address(_35742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35838, 0, address(this.address), 128, mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 356 len floor32(_35841) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42702 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 228] = this.address
                            require ext_code.size(address(_42702))
                            staticcall address(_42702).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43169 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 260] = arg1
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 292] = ext_call.return_data[0]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 224] = 68
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 324] = 32
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43169)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 480 len 4] = 0
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 452 len 0] = 0
                            call address(_43169) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 452 len 4]
                    else:
                        _35744 = mem[_7372 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35842 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 228] = 0
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 260] = _35842
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 292] = this.address
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 324] = 128
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 356] = mem[_35606]
                        _35845 = mem[_35606]
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 388 len ceil32(mem[_35606])] = mem[_35606 + 32 len ceil32(mem[_35606])]
                        if not _35845 % 32:
                            require ext_code.size(address(_35744))
                            call address(_35744).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35842, address(this.address), 128, mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 356 len _35845 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42594 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 228] = this.address
                            require ext_code.size(address(_42594))
                            staticcall address(_42594).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43042 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 260] = arg1
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 292] = ext_call.return_data[0]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 224] = 68
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 324] = 32
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43042)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 480 len 4] = 0
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 452 len 0] = 0
                            call address(_43042) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 452 len 4]
                        else:
                            mem[floor32(_35845) + (32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 388] = mem[floor32(_35845) + (32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + -(_35845 % 32) + 420 len _35845 % 32]
                            require ext_code.size(address(_35744))
                            call address(_35744).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35842, address(this.address), 128, mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 356 len floor32(_35845) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42705 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 228] = this.address
                            require ext_code.size(address(_42705))
                            staticcall address(_42705).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43173 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 260] = arg1
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 292] = ext_call.return_data[0]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 224] = 68
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 324] = 32
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43173)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 480 len 4] = 0
                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 452 len 0] = 0
                            call address(_43173) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 452 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 498 len 22]
                    else:
                        mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + 420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28775) + (32 * _21888) + (32 * _14704) + _14702 + ceil32(return_data.size) + 499 len 22]
                else:
                    mem[_7372 + 32 len 32 * _7362 - 1] = call.data[calldata.size len 32 * _7362 - 1]
                    _14661 = mem[(32 * arg4.length) + 128]
                    idx = 0
                    while idx < _14661 - 1:
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx + 1 < mem[(32 * arg4.length) + 128]
                        _15026 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = address(_15026)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_15026)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[_7372]
                        mem[(32 * idx) + _7372 + 32] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    _14706 = mem[64]
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                    _14708 = mem[(32 * arg4.length) + 128]
                    mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                    mem[mem[64] + 64] = (32 * _14708) + 128
                    mem[(32 * _14708) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    _21891 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    mem[(32 * _14708) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                    mem[mem[64] + 96] = (32 * _21891) + (32 * _14708) + 160
                    mem[(32 * _21891) + (32 * _14708) + mem[64] + 192] = mem[_7372]
                    _28778 = mem[_7372]
                    mem[(32 * _21891) + (32 * _14708) + mem[64] + 224 len floor32(mem[_7372])] = mem[_7372 + 32 len floor32(mem[_7372])]
                    _35609 = mem[64]
                    mem[mem[64]] = (32 * _28778) + (32 * _21891) + (32 * _14708) + 192
                    mem[64] = (32 * _28778) + (32 * _21891) + (32 * _14708) + mem[64] + 224
                    require 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_7372]
                    if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                        _35746 = mem[_7372 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35846 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 228] = _35846
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 260] = 0
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 292] = this.address
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 324] = 128
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 356] = mem[_35609]
                        _35849 = mem[_35609]
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 388 len ceil32(mem[_35609])] = mem[_35609 + 32 len ceil32(mem[_35609])]
                        if not _35849 % 32:
                            require ext_code.size(address(_35746))
                            call address(_35746).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35846, 0, address(this.address), 128, mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 356 len _35849 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42598 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 228] = this.address
                            require ext_code.size(address(_42598))
                            staticcall address(_42598).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43046 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 260] = arg1
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 292] = ext_call.return_data[0]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 224] = 68
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 324] = 32
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43046)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 480 len 4] = 0
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 452 len 0] = 0
                            call address(_43046) with:
                               funct Mask(32, 224, (32 * _28778) + (32 * _21891) + (32 * _14708) + 192) >> 224
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 452 len 4]
                        else:
                            mem[floor32(_35849) + (32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 388] = mem[floor32(_35849) + (32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + -(_35849 % 32) + 420 len _35849 % 32]
                            require ext_code.size(address(_35746))
                            call address(_35746).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35846, 0, address(this.address), 128, mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 356 len floor32(_35849) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42708 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 228] = this.address
                            require ext_code.size(address(_42708))
                            staticcall address(_42708).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43177 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 260] = arg1
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 292] = ext_call.return_data[0]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 224] = 68
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 324] = 32
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43177)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 480 len 4] = 0
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 452 len 0] = 0
                            call address(_43177) with:
                               funct Mask(32, 224, (32 * _28778) + (32 * _21891) + (32 * _14708) + 192) >> 224
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 452 len 4]
                    else:
                        _35748 = mem[_7372 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35850 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 228] = 0
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 260] = _35850
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 292] = this.address
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 324] = 128
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 356] = mem[_35609]
                        _35853 = mem[_35609]
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 388 len ceil32(mem[_35609])] = mem[_35609 + 32 len ceil32(mem[_35609])]
                        if not _35853 % 32:
                            require ext_code.size(address(_35748))
                            call address(_35748).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35850, address(this.address), 128, mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 356 len _35853 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42602 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 228] = this.address
                            require ext_code.size(address(_42602))
                            staticcall address(_42602).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43050 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 260] = arg1
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 292] = ext_call.return_data[0]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 224] = 68
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 324] = 32
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43050)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 480 len 4] = 0
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 452 len 0] = 0
                            call address(_43050) with:
                               funct Mask(32, 224, (32 * _28778) + (32 * _21891) + (32 * _14708) + 192) >> 224
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 452 len 4]
                        else:
                            mem[floor32(_35853) + (32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 388] = mem[floor32(_35853) + (32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + -(_35853 % 32) + 420 len _35853 % 32]
                            require ext_code.size(address(_35748))
                            call address(_35748).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35850, address(this.address), 128, mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 356 len floor32(_35853) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42711 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 228] = this.address
                            require ext_code.size(address(_42711))
                            staticcall address(_42711).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43181 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 260] = arg1
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 292] = ext_call.return_data[0]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 224] = 68
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 324] = 32
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43181)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 480 len 4] = 0
                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 452 len 0] = 0
                            call address(_43181) with:
                               funct Mask(32, 224, (32 * _28778) + (32 * _21891) + (32 * _14708) + 192) >> 224
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 452 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 498 len 22]
                    else:
                        mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + 420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28778) + (32 * _21891) + (32 * _14708) + _14706 + ceil32(return_data.size) + 499 len 22]
            else:
                require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                if mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] >= arg3 + arg2:
                    _7382 = mem[(32 * arg4.length) + 128]
                    require mem[(32 * arg4.length) + 128] - 1 <= test266151307()
                    _7393 = mem[64]
                    mem[mem[64]] = mem[(32 * arg4.length) + 128] - 1
                    mem[64] = mem[64] + (32 * _7382 - 1) + 32
                    if not _7382 - 1:
                        _14662 = mem[(32 * arg4.length) + 128]
                        idx = 0
                        while idx < _14662 - 1:
                            require idx < mem[96]
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx + 1 < mem[(32 * arg4.length) + 128]
                            _15032 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = address(_15032)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15032)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[_7393]
                            mem[(32 * idx) + _7393 + 32] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        _14710 = mem[64]
                        mem[mem[64] + 32] = 96
                        mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                        _14712 = mem[(32 * arg4.length) + 128]
                        mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                        mem[mem[64] + 64] = (32 * _14712) + 128
                        mem[(32 * _14712) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _21894 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        mem[(32 * _14712) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                        mem[mem[64] + 96] = (32 * _21894) + (32 * _14712) + 160
                        mem[(32 * _21894) + (32 * _14712) + mem[64] + 192] = mem[_7393]
                        _28781 = mem[_7393]
                        mem[(32 * _21894) + (32 * _14712) + mem[64] + 224 len floor32(mem[_7393])] = mem[_7393 + 32 len floor32(mem[_7393])]
                        _35612 = mem[64]
                        mem[mem[64]] = (32 * _28781) + (32 * _21894) + (32 * _14712) + 192
                        mem[64] = (32 * _28781) + (32 * _21894) + (32 * _14712) + mem[64] + 224
                        require 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_7393]
                        if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                            _35750 = mem[_7393 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35854 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 228] = _35854
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 260] = 0
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 292] = this.address
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 324] = 128
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 356] = mem[_35612]
                            _35857 = mem[_35612]
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 388 len ceil32(mem[_35612])] = mem[_35612 + 32 len ceil32(mem[_35612])]
                            if not _35857 % 32:
                                require ext_code.size(address(_35750))
                                call address(_35750).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35854, 0, address(this.address), 128, mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 356 len _35857 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42606 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 228] = this.address
                                require ext_code.size(address(_42606))
                                staticcall address(_42606).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43054 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 260] = arg1
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 292] = ext_call.return_data[0]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 224] = 68
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 324] = 32
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43054)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 480 len 4] = 0
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 452 len 0] = 0
                                call address(_43054) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 452 len 4]
                            else:
                                mem[floor32(_35857) + (32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 388] = mem[floor32(_35857) + (32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + -(_35857 % 32) + 420 len _35857 % 32]
                                require ext_code.size(address(_35750))
                                call address(_35750).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35854, 0, address(this.address), 128, mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 356 len floor32(_35857) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42714 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 228] = this.address
                                require ext_code.size(address(_42714))
                                staticcall address(_42714).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43185 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 260] = arg1
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 292] = ext_call.return_data[0]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 224] = 68
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 324] = 32
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43185)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 480 len 4] = 0
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 452 len 0] = 0
                                call address(_43185) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 452 len 4]
                        else:
                            _35752 = mem[_7393 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35858 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 228] = 0
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 260] = _35858
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 292] = this.address
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 324] = 128
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 356] = mem[_35612]
                            _35861 = mem[_35612]
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 388 len ceil32(mem[_35612])] = mem[_35612 + 32 len ceil32(mem[_35612])]
                            if not _35861 % 32:
                                require ext_code.size(address(_35752))
                                call address(_35752).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35858, address(this.address), 128, mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 356 len _35861 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42610 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 228] = this.address
                                require ext_code.size(address(_42610))
                                staticcall address(_42610).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43058 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 260] = arg1
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 292] = ext_call.return_data[0]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 224] = 68
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 324] = 32
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43058)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 480 len 4] = 0
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 452 len 0] = 0
                                call address(_43058) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 452 len 4]
                            else:
                                mem[floor32(_35861) + (32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 388] = mem[floor32(_35861) + (32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + -(_35861 % 32) + 420 len _35861 % 32]
                                require ext_code.size(address(_35752))
                                call address(_35752).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35858, address(this.address), 128, mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 356 len floor32(_35861) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42717 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 228] = this.address
                                require ext_code.size(address(_42717))
                                staticcall address(_42717).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43189 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 260] = arg1
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 292] = ext_call.return_data[0]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 224] = 68
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 324] = 32
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43189)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 480 len 4] = 0
                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 452 len 0] = 0
                                call address(_43189) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 452 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 498 len 22]
                        else:
                            mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + 420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28781) + (32 * _21894) + (32 * _14712) + _14710 + ceil32(return_data.size) + 499 len 22]
                    else:
                        mem[_7393 + 32 len 32 * _7382 - 1] = call.data[calldata.size len 32 * _7382 - 1]
                        _14663 = mem[(32 * arg4.length) + 128]
                        idx = 0
                        while idx < _14663 - 1:
                            require idx < mem[96]
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx + 1 < mem[(32 * arg4.length) + 128]
                            _15038 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = address(_15038)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15038)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[_7393]
                            mem[(32 * idx) + _7393 + 32] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        _14714 = mem[64]
                        mem[mem[64] + 32] = 96
                        mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                        _14716 = mem[(32 * arg4.length) + 128]
                        mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                        mem[mem[64] + 64] = (32 * _14716) + 128
                        mem[(32 * _14716) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _21897 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        mem[(32 * _14716) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                        mem[mem[64] + 96] = (32 * _21897) + (32 * _14716) + 160
                        mem[(32 * _21897) + (32 * _14716) + mem[64] + 192] = mem[_7393]
                        _28784 = mem[_7393]
                        mem[(32 * _21897) + (32 * _14716) + mem[64] + 224 len floor32(mem[_7393])] = mem[_7393 + 32 len floor32(mem[_7393])]
                        _35615 = mem[64]
                        mem[mem[64]] = (32 * _28784) + (32 * _21897) + (32 * _14716) + 192
                        mem[64] = (32 * _28784) + (32 * _21897) + (32 * _14716) + mem[64] + 224
                        require 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_7393]
                        if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                            _35754 = mem[_7393 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35862 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 228] = _35862
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 260] = 0
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 292] = this.address
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 324] = 128
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 356] = mem[_35615]
                            _35865 = mem[_35615]
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 388 len ceil32(mem[_35615])] = mem[_35615 + 32 len ceil32(mem[_35615])]
                            if not _35865 % 32:
                                require ext_code.size(address(_35754))
                                call address(_35754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35862, 0, address(this.address), 128, mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 356 len _35865 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42614 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 228] = this.address
                                require ext_code.size(address(_42614))
                                staticcall address(_42614).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43062 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 260] = arg1
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 292] = ext_call.return_data[0]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 224] = 68
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 324] = 32
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43062)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 480 len 4] = 0
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 452 len 0] = 0
                                call address(_43062) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 452 len 4]
                            else:
                                mem[floor32(_35865) + (32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 388] = mem[floor32(_35865) + (32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + -(_35865 % 32) + 420 len _35865 % 32]
                                require ext_code.size(address(_35754))
                                call address(_35754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35862, 0, address(this.address), 128, mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 356 len floor32(_35865) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42720 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 228] = this.address
                                require ext_code.size(address(_42720))
                                staticcall address(_42720).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43193 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 260] = arg1
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 292] = ext_call.return_data[0]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 224] = 68
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 324] = 32
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43193)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 480 len 4] = 0
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 452 len 0] = 0
                                call address(_43193) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 452 len 4]
                        else:
                            _35756 = mem[_7393 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35866 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 228] = 0
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 260] = _35866
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 292] = this.address
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 324] = 128
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 356] = mem[_35615]
                            _35869 = mem[_35615]
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 388 len ceil32(mem[_35615])] = mem[_35615 + 32 len ceil32(mem[_35615])]
                            if not _35869 % 32:
                                require ext_code.size(address(_35756))
                                call address(_35756).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35866, address(this.address), 128, mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 356 len _35869 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42618 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 228] = this.address
                                require ext_code.size(address(_42618))
                                staticcall address(_42618).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43066 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 260] = arg1
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 292] = ext_call.return_data[0]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 224] = 68
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 324] = 32
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43066)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 480 len 4] = 0
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 452 len 0] = 0
                                call address(_43066) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 452 len 4]
                            else:
                                mem[floor32(_35869) + (32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 388] = mem[floor32(_35869) + (32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + -(_35869 % 32) + 420 len _35869 % 32]
                                require ext_code.size(address(_35756))
                                call address(_35756).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35866, address(this.address), 128, mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 356 len floor32(_35869) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42723 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 228] = this.address
                                require ext_code.size(address(_42723))
                                staticcall address(_42723).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43197 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 260] = arg1
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 292] = ext_call.return_data[0]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 224] = 68
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 324] = 32
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43197)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 480 len 4] = 0
                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 452 len 0] = 0
                                call address(_43197) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 452 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 498 len 22]
                        else:
                            mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + 420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28784) + (32 * _21897) + (32 * _14716) + _14714 + ceil32(return_data.size) + 499 len 22]
        else:
            require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
            if not arg3:
                _7383 = mem[(32 * arg4.length) + 128]
                require mem[(32 * arg4.length) + 128] - 1 <= test266151307()
                _7394 = mem[64]
                mem[mem[64]] = mem[(32 * arg4.length) + 128] - 1
                mem[64] = mem[64] + (32 * _7383 - 1) + 32
                if not _7383 - 1:
                    _14664 = mem[(32 * arg4.length) + 128]
                    idx = 0
                    while idx < _14664 - 1:
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx + 1 < mem[(32 * arg4.length) + 128]
                        _15044 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = address(_15044)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_15044)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[_7394]
                        mem[(32 * idx) + _7394 + 32] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    _14718 = mem[64]
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                    _14720 = mem[(32 * arg4.length) + 128]
                    mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                    mem[mem[64] + 64] = (32 * _14720) + 128
                    mem[(32 * _14720) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    _21900 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    mem[(32 * _14720) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                    mem[mem[64] + 96] = (32 * _21900) + (32 * _14720) + 160
                    mem[(32 * _21900) + (32 * _14720) + mem[64] + 192] = mem[_7394]
                    _28787 = mem[_7394]
                    mem[(32 * _21900) + (32 * _14720) + mem[64] + 224 len floor32(mem[_7394])] = mem[_7394 + 32 len floor32(mem[_7394])]
                    _35618 = mem[64]
                    mem[mem[64]] = (32 * _28787) + (32 * _21900) + (32 * _14720) + 192
                    mem[64] = (32 * _28787) + (32 * _21900) + (32 * _14720) + mem[64] + 224
                    require 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_7394]
                    if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                        _35758 = mem[_7394 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35870 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 228] = _35870
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 260] = 0
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 292] = this.address
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 324] = 128
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 356] = mem[_35618]
                        _35873 = mem[_35618]
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 388 len ceil32(mem[_35618])] = mem[_35618 + 32 len ceil32(mem[_35618])]
                        if not _35873 % 32:
                            require ext_code.size(address(_35758))
                            call address(_35758).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35870, 0, address(this.address), 128, mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 356 len _35873 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42622 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 228] = this.address
                            require ext_code.size(address(_42622))
                            staticcall address(_42622).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43070 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 260] = arg1
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 292] = ext_call.return_data[0]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 224] = 68
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 324] = 32
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43070)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 480 len 4] = 0
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 452 len 0] = 0
                            call address(_43070) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 452 len 4]
                        else:
                            mem[floor32(_35873) + (32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 388] = mem[floor32(_35873) + (32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + -(_35873 % 32) + 420 len _35873 % 32]
                            require ext_code.size(address(_35758))
                            call address(_35758).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35870, 0, address(this.address), 128, mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 356 len floor32(_35873) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42726 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 228] = this.address
                            require ext_code.size(address(_42726))
                            staticcall address(_42726).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43201 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 260] = arg1
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 292] = ext_call.return_data[0]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 224] = 68
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 324] = 32
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43201)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 480 len 4] = 0
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 452 len 0] = 0
                            call address(_43201) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 452 len 4]
                    else:
                        _35760 = mem[_7394 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35874 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 228] = 0
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 260] = _35874
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 292] = this.address
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 324] = 128
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 356] = mem[_35618]
                        _35877 = mem[_35618]
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 388 len ceil32(mem[_35618])] = mem[_35618 + 32 len ceil32(mem[_35618])]
                        if not _35877 % 32:
                            require ext_code.size(address(_35760))
                            call address(_35760).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35874, address(this.address), 128, mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 356 len _35877 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42626 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 228] = this.address
                            require ext_code.size(address(_42626))
                            staticcall address(_42626).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43074 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 260] = arg1
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 292] = ext_call.return_data[0]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 224] = 68
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 324] = 32
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43074)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 480 len 4] = 0
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 452 len 0] = 0
                            call address(_43074) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 452 len 4]
                        else:
                            mem[floor32(_35877) + (32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 388] = mem[floor32(_35877) + (32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + -(_35877 % 32) + 420 len _35877 % 32]
                            require ext_code.size(address(_35760))
                            call address(_35760).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35874, address(this.address), 128, mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 356 len floor32(_35877) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42729 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 228] = this.address
                            require ext_code.size(address(_42729))
                            staticcall address(_42729).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43205 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 260] = arg1
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 292] = ext_call.return_data[0]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 224] = 68
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 324] = 32
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43205)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 480 len 4] = 0
                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 452 len 0] = 0
                            call address(_43205) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 452 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 498 len 22]
                    else:
                        mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + 420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28787) + (32 * _21900) + (32 * _14720) + _14718 + ceil32(return_data.size) + 499 len 22]
                else:
                    mem[_7394 + 32 len 32 * _7383 - 1] = call.data[calldata.size len 32 * _7383 - 1]
                    _14665 = mem[(32 * arg4.length) + 128]
                    idx = 0
                    while idx < _14665 - 1:
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx + 1 < mem[(32 * arg4.length) + 128]
                        _15050 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = address(_15050)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_15050)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[_7394]
                        mem[(32 * idx) + _7394 + 32] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    _14722 = mem[64]
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                    _14724 = mem[(32 * arg4.length) + 128]
                    mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                    mem[mem[64] + 64] = (32 * _14724) + 128
                    mem[(32 * _14724) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    _21903 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    mem[(32 * _14724) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                    mem[mem[64] + 96] = (32 * _21903) + (32 * _14724) + 160
                    mem[(32 * _21903) + (32 * _14724) + mem[64] + 192] = mem[_7394]
                    _28790 = mem[_7394]
                    mem[(32 * _21903) + (32 * _14724) + mem[64] + 224 len floor32(mem[_7394])] = mem[_7394 + 32 len floor32(mem[_7394])]
                    _35621 = mem[64]
                    mem[mem[64]] = (32 * _28790) + (32 * _21903) + (32 * _14724) + 192
                    mem[64] = (32 * _28790) + (32 * _21903) + (32 * _14724) + mem[64] + 224
                    require 1 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[_7394]
                    if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                        _35762 = mem[_7394 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35878 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 228] = _35878
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 260] = 0
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 292] = this.address
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 324] = 128
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 356] = mem[_35621]
                        _35881 = mem[_35621]
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 388 len ceil32(mem[_35621])] = mem[_35621 + 32 len ceil32(mem[_35621])]
                        if not _35881 % 32:
                            require ext_code.size(address(_35762))
                            call address(_35762).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35878, 0, address(this.address), 128, mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 356 len _35881 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42630 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 228] = this.address
                            require ext_code.size(address(_42630))
                            staticcall address(_42630).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43078 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 260] = arg1
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 292] = ext_call.return_data[0]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 224] = 68
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 324] = 32
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43078)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 480 len 4] = 0
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 452 len 0] = 0
                            call address(_43078) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 452 len 4]
                        else:
                            mem[floor32(_35881) + (32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 388] = mem[floor32(_35881) + (32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + -(_35881 % 32) + 420 len _35881 % 32]
                            require ext_code.size(address(_35762))
                            call address(_35762).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _35878, 0, address(this.address), 128, mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 356 len floor32(_35881) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42732 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 228] = this.address
                            require ext_code.size(address(_42732))
                            staticcall address(_42732).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43209 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 260] = arg1
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 292] = ext_call.return_data[0]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 224] = 68
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 324] = 32
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43209)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 480 len 4] = 0
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 452 len 0] = 0
                            call address(_43209) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 452 len 4]
                    else:
                        _35764 = mem[_7394 + 32]
                        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _35882 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 228] = 0
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 260] = _35882
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 292] = this.address
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 324] = 128
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 356] = mem[_35621]
                        _35885 = mem[_35621]
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 388 len ceil32(mem[_35621])] = mem[_35621 + 32 len ceil32(mem[_35621])]
                        if not _35885 % 32:
                            require ext_code.size(address(_35764))
                            call address(_35764).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35882, address(this.address), 128, mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 356 len _35885 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42634 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 228] = this.address
                            require ext_code.size(address(_42634))
                            staticcall address(_42634).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43082 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 260] = arg1
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 292] = ext_call.return_data[0]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 224] = 68
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 324] = 32
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43082)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 480 len 4] = 0
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 452 len 0] = 0
                            call address(_43082) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 452 len 4]
                        else:
                            mem[floor32(_35885) + (32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 388] = mem[floor32(_35885) + (32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + -(_35885 % 32) + 420 len _35885 % 32]
                            require ext_code.size(address(_35764))
                            call address(_35764).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _35882, address(this.address), 128, mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 356 len floor32(_35885) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[(32 * arg4.length) + 128]
                            _42735 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 228] = this.address
                            require ext_code.size(address(_42735))
                            staticcall address(_42735).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'low return'
                            require 0 < mem[(32 * arg4.length) + 128]
                            _43213 = mem[(32 * arg4.length) + 160]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 260] = arg1
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 292] = ext_call.return_data[0]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 224] = 68
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 260 len 28] = address(arg1) << 64
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 324] = 32
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_43213)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 480 len 4] = 0
                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 452 len 0] = 0
                            call address(_43213) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 452 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 498 len 22]
                    else:
                        mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + 420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _28790) + (32 * _21903) + (32 * _14724) + _14722 + ceil32(return_data.size) + 499 len 22]
            else:
                require mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                if mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + 192] >= arg3 + arg2:
                    _7409 = mem[(32 * arg4.length) + 128]
                    require mem[(32 * arg4.length) + 128] - 1 <= test266151307()
                    _7434 = mem[64]
                    mem[mem[64]] = mem[(32 * arg4.length) + 128] - 1
                    mem[64] = mem[64] + (32 * _7409 - 1) + 32
                    if not _7409 - 1:
                        _14666 = mem[(32 * arg4.length) + 128]
                        idx = 0
                        while idx < _14666 - 1:
                            require idx < mem[96]
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx + 1 < mem[(32 * arg4.length) + 128]
                            _15056 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = address(_15056)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15056)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[_7434]
                            mem[(32 * idx) + _7434 + 32] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        _14726 = mem[64]
                        mem[mem[64] + 32] = 96
                        mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                        _14728 = mem[(32 * arg4.length) + 128]
                        mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                        mem[mem[64] + 64] = (32 * _14728) + 128
                        mem[(32 * _14728) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _21906 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        mem[(32 * _14728) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                        mem[mem[64] + 96] = (32 * _21906) + (32 * _14728) + 160
                        mem[(32 * _21906) + (32 * _14728) + mem[64] + 192] = mem[_7434]
                        _28793 = mem[_7434]
                        mem[(32 * _21906) + (32 * _14728) + mem[64] + 224 len floor32(mem[_7434])] = mem[_7434 + 32 len floor32(mem[_7434])]
                        _35624 = mem[64]
                        mem[mem[64]] = (32 * _28793) + (32 * _21906) + (32 * _14728) + 192
                        mem[64] = (32 * _28793) + (32 * _21906) + (32 * _14728) + mem[64] + 224
                        require 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_7434]
                        if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                            _35766 = mem[_7434 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35886 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 228] = _35886
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 260] = 0
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 292] = this.address
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 324] = 128
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 356] = mem[_35624]
                            _35889 = mem[_35624]
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 388 len ceil32(mem[_35624])] = mem[_35624 + 32 len ceil32(mem[_35624])]
                            if not _35889 % 32:
                                require ext_code.size(address(_35766))
                                call address(_35766).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35886, 0, address(this.address), 128, mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 356 len _35889 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42638 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 228] = this.address
                                require ext_code.size(address(_42638))
                                staticcall address(_42638).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43086 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 260] = arg1
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 292] = ext_call.return_data[0]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 224] = 68
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 324] = 32
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43086)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 480 len 4] = 0
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 452 len 0] = 0
                                call address(_43086) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 452 len 4]
                            else:
                                mem[floor32(_35889) + (32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 388] = mem[floor32(_35889) + (32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + -(_35889 % 32) + 420 len _35889 % 32]
                                require ext_code.size(address(_35766))
                                call address(_35766).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35886, 0, address(this.address), 128, mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 356 len floor32(_35889) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42738 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 228] = this.address
                                require ext_code.size(address(_42738))
                                staticcall address(_42738).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43217 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 260] = arg1
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 292] = ext_call.return_data[0]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 224] = 68
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 324] = 32
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43217)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 480 len 4] = 0
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 452 len 0] = 0
                                call address(_43217) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 452 len 4]
                        else:
                            _35768 = mem[_7434 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35890 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 228] = 0
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 260] = _35890
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 292] = this.address
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 324] = 128
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 356] = mem[_35624]
                            _35893 = mem[_35624]
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 388 len ceil32(mem[_35624])] = mem[_35624 + 32 len ceil32(mem[_35624])]
                            if not _35893 % 32:
                                require ext_code.size(address(_35768))
                                call address(_35768).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35890, address(this.address), 128, mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 356 len _35893 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42642 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 228] = this.address
                                require ext_code.size(address(_42642))
                                staticcall address(_42642).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43090 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 260] = arg1
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 292] = ext_call.return_data[0]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 224] = 68
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 324] = 32
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43090)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 480 len 4] = 0
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 452 len 0] = 0
                                call address(_43090) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 452 len 4]
                            else:
                                mem[floor32(_35893) + (32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 388] = mem[floor32(_35893) + (32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + -(_35893 % 32) + 420 len _35893 % 32]
                                require ext_code.size(address(_35768))
                                call address(_35768).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35890, address(this.address), 128, mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 356 len floor32(_35893) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42741 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 228] = this.address
                                require ext_code.size(address(_42741))
                                staticcall address(_42741).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43221 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 260] = arg1
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 292] = ext_call.return_data[0]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 224] = 68
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 324] = 32
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43221)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 480 len 4] = 0
                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 452 len 0] = 0
                                call address(_43221) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 452 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 498 len 22]
                        else:
                            mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + 420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28793) + (32 * _21906) + (32 * _14728) + _14726 + ceil32(return_data.size) + 499 len 22]
                    else:
                        mem[_7434 + 32 len 32 * _7409 - 1] = call.data[calldata.size len 32 * _7409 - 1]
                        _14667 = mem[(32 * arg4.length) + 128]
                        idx = 0
                        while idx < _14667 - 1:
                            require idx < mem[96]
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx + 1 < mem[(32 * arg4.length) + 128]
                            _15062 = mem[(32 * idx + 1) + (32 * arg4.length) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = address(_15062)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15062)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[_7434]
                            mem[(32 * idx) + _7434 + 32] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        _14730 = mem[64]
                        mem[mem[64] + 32] = 96
                        mem[mem[64] + 128] = mem[(32 * arg4.length) + 128]
                        _14732 = mem[(32 * arg4.length) + 128]
                        mem[mem[64] + 160 len floor32(mem[(32 * arg4.length) + 128])] = mem[(32 * arg4.length) + 160 len floor32(mem[(32 * arg4.length) + 128])]
                        mem[mem[64] + 64] = (32 * _14732) + 128
                        mem[(32 * _14732) + mem[64] + 160] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        _21909 = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                        mem[(32 * _14732) + mem[64] + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])] = mem[(32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + 160])]
                        mem[mem[64] + 96] = (32 * _21909) + (32 * _14732) + 160
                        mem[(32 * _21909) + (32 * _14732) + mem[64] + 192] = mem[_7434]
                        _28796 = mem[_7434]
                        mem[(32 * _21909) + (32 * _14732) + mem[64] + 224 len floor32(mem[_7434])] = mem[_7434 + 32 len floor32(mem[_7434])]
                        _35627 = mem[64]
                        mem[mem[64]] = (32 * _28796) + (32 * _21909) + (32 * _14732) + 192
                        mem[64] = (32 * _28796) + (32 * _21909) + (32 * _14732) + mem[64] + 224
                        require 1 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[_7434]
                        if mem[(32 * arg4.length) + 172 len 20] >= mem[(32 * arg4.length) + 204 len 20]:
                            _35770 = mem[_7434 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35894 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 228] = _35894
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 260] = 0
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 292] = this.address
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 324] = 128
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 356] = mem[_35627]
                            _35897 = mem[_35627]
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 388 len ceil32(mem[_35627])] = mem[_35627 + 32 len ceil32(mem[_35627])]
                            if not _35897 % 32:
                                require ext_code.size(address(_35770))
                                call address(_35770).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35894, 0, address(this.address), 128, mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 356 len _35897 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42646 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 228] = this.address
                                require ext_code.size(address(_42646))
                                staticcall address(_42646).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43094 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 260] = arg1
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 292] = ext_call.return_data[0]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 224] = 68
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 324] = 32
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43094)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 480 len 4] = 0
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 452 len 0] = 0
                                call address(_43094) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 452 len 4]
                            else:
                                mem[floor32(_35897) + (32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 388] = mem[floor32(_35897) + (32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + -(_35897 % 32) + 420 len _35897 % 32]
                                require ext_code.size(address(_35770))
                                call address(_35770).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _35894, 0, address(this.address), 128, mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 356 len floor32(_35897) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42744 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 228] = this.address
                                require ext_code.size(address(_42744))
                                staticcall address(_42744).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43225 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 260] = arg1
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 292] = ext_call.return_data[0]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 224] = 68
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 324] = 32
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43225)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 480 len 4] = 0
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 452 len 0] = 0
                                call address(_43225) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 452 len 4]
                        else:
                            _35772 = mem[_7434 + 32]
                            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                            _35898 = mem[(32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 228] = 0
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 260] = _35898
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 292] = this.address
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 324] = 128
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 356] = mem[_35627]
                            _35901 = mem[_35627]
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 388 len ceil32(mem[_35627])] = mem[_35627 + 32 len ceil32(mem[_35627])]
                            if not _35901 % 32:
                                require ext_code.size(address(_35772))
                                call address(_35772).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35898, address(this.address), 128, mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 356 len _35901 + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42650 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 228] = this.address
                                require ext_code.size(address(_42650))
                                staticcall address(_42650).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43098 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 260] = arg1
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 292] = ext_call.return_data[0]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 224] = 68
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 324] = 32
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43098)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 480 len 4] = 0
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 452 len 0] = 0
                                call address(_43098) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 452 len 4]
                            else:
                                mem[floor32(_35901) + (32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 388] = mem[floor32(_35901) + (32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + -(_35901 % 32) + 420 len _35901 % 32]
                                require ext_code.size(address(_35772))
                                call address(_35772).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _35898, address(this.address), 128, mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 356 len floor32(_35901) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[(32 * arg4.length) + 128]
                                _42747 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 228] = this.address
                                require ext_code.size(address(_42747))
                                staticcall address(_42747).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'low return'
                                require 0 < mem[(32 * arg4.length) + 128]
                                _43229 = mem[(32 * arg4.length) + 160]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 260] = arg1
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 292] = ext_call.return_data[0]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 224] = 68
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 260 len 28] = address(arg1) << 64
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 324] = 32
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 356] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(_43229)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 480 len 4] = 0
                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 452 len 0] = 0
                                call address(_43229) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 452 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 498 len 22]
                        else:
                            mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + 420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _28796) + (32 * _21909) + (32 * _14732) + _14730 + ceil32(return_data.size) + 499 len 22]
    require ext_code.size(gasTokenAddress)
    if gas_remaining < 27710:
        if (16 * calldata.size) + 35154 / 41947 <= 0:
            call gasTokenAddress.freeFromUpTo(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_74b78d28Address, (16 * calldata.size) + 35154 / 41947
        else:
            call gasTokenAddress.freeFromUpTo(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_74b78d28Address, 0
    else:
        if (16 * calldata.size) + 35154 / 41947 <= gas_remaining - 27710 / 7020:
            call gasTokenAddress.freeFromUpTo(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_74b78d28Address, (16 * calldata.size) + 35154 / 41947
        else:
            call gasTokenAddress.freeFromUpTo(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_74b78d28Address, gas_remaining - 27710 / 7020
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
