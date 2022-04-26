contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_12bacace(?)
#  - sub_611f7fb7(?)
#  - sub_9d8502de(?)
#  - sub_b14a2151(?)
#
const sub_2adff7a4(?) = 0xfd3e096138a6b9570957a57f723c53f739b98ffb

const sub_dea430cf(?) = 0x85659e7f611add6c0cc95c90249d9db54071ca2e


address adminAddress;
mapping of uint8 stor1;
address sub_19ca9178Address;
address sub_ffc0d003Address;
uint256 stor3;
address sub_aa50c0b8Address;
mapping of address sub_36d94240;

function sub_19ca9178(?) {
    return sub_19ca9178Address
}

function sub_36d94240(?) {
    require calldata.size - 4 >= 64
    return sub_36d94240[arg1][arg2]
}

function sub_aa50c0b8(?) {
    return sub_aa50c0b8Address
}

function admin() {
    return adminAddress
}

function sub_ffc0d003(?) {
    return address(sub_ffc0d003Address)
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

function sub_eebeb379(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    sub_19ca9178Address = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
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

function sub_c43a0b48(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[164] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(sub_ffc0d003Address))
        staticcall address(sub_ffc0d003Address).0xeb787f61 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        sub_36d94240[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[((32 * idx) + cd[36] + 36)])] = address(cd[((32 * idx) + cd[68] + 36)])
        require idx < ('cd', 68).length
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 5)
        sub_36d94240[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[68] + 36)])
        idx = idx + 1
        continue 
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
            v = _101 + 164
            t = mem[_102]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_101 + floor32(mem[_102]) + 164] = mem[_102 + -(mem[_102] % 32) + floor32(mem[_102]) + 64 len mem[_102] % 32] or Mask(8 * -(mem[_102] % 32) + 32, -(8 * -(mem[_102] % 32) + 32) + 256, mem[_101 + floor32(mem[_102]) + 164])
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[_101 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_101 + 168 len _108 - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_101 + 274 len 22]
                    s = s + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_101 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_101 + 168] = 32
                mem[_101 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _101 + 232] = mem[idx + _101 + 132]
                    idx = idx + 32
                    continue 
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 264
            mem[64] = _101 + ceil32(return_data.size) + 165
            mem[_101 + 164] = return_data.size
            mem[_101 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_101 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_101 + ceil32(return_data.size) + 275 len 22]
                s = s + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_101 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_101 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[idx + _101 + ceil32(return_data.size) + 233] = mem[idx + _101 + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_101 + ceil32(return_data.size) + 233]
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
    require arg2.length >= 96
    _5 = mem[128]
    require mem[128] <= 4294967296
    require mem[128] + 64 <= arg2.length + 32
    require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 64 <= arg2.length + 32
    mem[ceil32(arg2.length) + 128] = mem[mem[128] + 128]
    _8 = mem[_5 + 128]
    mem[ceil32(arg2.length) + 160 len floor32(mem[_5 + 128])] = mem[_5 + 160 len floor32(mem[_5 + 128])]
    _399 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 64 <= arg2.length + 32
    require mem[mem[160] + 128] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 128]) + 64 <= arg2.length + 32
    mem[(32 * _8) + ceil32(arg2.length) + 160] = mem[mem[160] + 128]
    _403 = mem[_399 + 128]
    mem[(32 * _8) + ceil32(arg2.length) + 192 len floor32(mem[_399 + 128])] = mem[_399 + 160 len floor32(mem[_399 + 128])]
    _789 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 64 <= arg2.length + 32
    require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= arg2.length + 32
    mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192] = mem[mem[192] + 128]
    _793 = mem[_789 + 128]
    mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 224 len floor32(mem[_789 + 128])] = mem[_789 + 160 len floor32(mem[_789 + 128])]
    require 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
    require 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
    require 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 260] = mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 268 len 20]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 292] = mem[(32 * _8) + ceil32(arg2.length) + 224]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224] = 68
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 256 len 4] = unknown_0xa9059cbb(?????)
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 324] = 32
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 356] = 'SafeERC20: low-level call failed'
    if not ext_code.size(mem[ceil32(arg2.length) + 204 len 20]):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 388 len 64] = 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 260 len 60]
    mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 480 len 4] = 0
    call mem[ceil32(arg2.length) + 204 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 288 len 4] with:
         gas gas_remaining wei
        args mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 292], 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 452 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg2.length:
                revert with arg2[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg2.length:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    if mem[(32 * idx) + ceil32(arg2.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg2.length) + 172 len 20]:
                        _2023 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2047 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 392] = _2047
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 520] = 0
                        require ext_code.size(address(_2023))
                        call address(_2023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2047, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 552]
                    else:
                        _2025 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2050 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 424] = _2050
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 520] = 0
                        require ext_code.size(address(_2025))
                        call address(_2025).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2050, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    _1953 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    if mem[(32 * idx) + ceil32(arg2.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg2.length) + 172 len 20]:
                        _2053 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2087 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 392] = _2087
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 520] = 0
                        require ext_code.size(address(_2053))
                        call address(_2053).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2087, 0, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 552]
                    else:
                        _2055 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2090 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 424] = _2090
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 456] = address(_1953)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 520] = 0
                        require ext_code.size(address(_2055))
                        call address(_2055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2090, address(_1953), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require arg2.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 498 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    if mem[(32 * idx) + ceil32(arg2.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg2.length) + 172 len 20]:
                        _2029 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2057 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 392] = _2057
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 520] = 0
                        require ext_code.size(address(_2029))
                        call address(_2029).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2057, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 552]
                    else:
                        _2031 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2060 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 424] = _2060
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 456] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 520] = 0
                        require ext_code.size(address(_2031))
                        call address(_2031).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2060, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 552]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    _1957 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    if mem[(32 * idx) + ceil32(arg2.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg2.length) + 172 len 20]:
                        _2063 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2093 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 392] = _2093
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 424] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 520] = 0
                        require ext_code.size(address(_2063))
                        call address(_2063).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2093, 0, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 552]
                    else:
                        _2065 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2096 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 388] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 392] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 424] = _2096
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 456] = address(_1957)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 488] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 520] = 0
                        require ext_code.size(address(_2065))
                        call address(_2065).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2096, address(_1957), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg2.length) + 160]
        require 0 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 424] = mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg2.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 552 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 236 len 20], mem[(32 * _8) + ceil32(arg2.length) + 192 len 28]
        call mem[ceil32(arg2.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 452 len 4] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg2.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 488 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 616 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 662 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 584]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 663 len 22]
    else:
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 388] = return_data.size
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    if mem[(32 * idx) + ceil32(arg2.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg2.length) + 172 len 20]:
                        _2035 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2067 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 393] = _2067
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2035))
                        call address(_2035).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2067, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 553]
                    else:
                        _2037 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2070 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 425] = _2070
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2037))
                        call address(_2037).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2070, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    _1962 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    if mem[(32 * idx) + ceil32(arg2.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg2.length) + 172 len 20]:
                        _2073 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2099 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 393] = _2099
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2073))
                        call address(_2073).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2099, 0, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 553]
                    else:
                        _2075 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2102 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 425] = _2102
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 457] = address(_1962)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2075))
                        call address(_2075).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2102, address(_1962), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 420]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 499 len 22]
            idx = 1
            while idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]:
                if idx == mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192] - 1:
                    require idx + 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    if mem[(32 * idx) + ceil32(arg2.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg2.length) + 172 len 20]:
                        _2041 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2077 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 393] = _2077
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2041))
                        call address(_2041).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2077, 0, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 553]
                    else:
                        _2043 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2080 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 425] = _2080
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 457] = this.address
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2043))
                        call address(_2043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2080, address(this.address), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 553]
                else:
                    require idx + 1 < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    _1966 = mem[(32 * idx + 1) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                    require idx + 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    require idx < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
                    if mem[(32 * idx) + ceil32(arg2.length) + 172 len 20] >= mem[(32 * idx + 1) + ceil32(arg2.length) + 172 len 20]:
                        _2083 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2105 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 393] = _2105
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 425] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2083))
                        call address(_2083).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2105, 0, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 553]
                    else:
                        _2085 = mem[(32 * idx) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + 224]
                        require idx + 1 < mem[(32 * _8) + ceil32(arg2.length) + 160]
                        _2108 = mem[(32 * idx + 1) + (32 * _8) + ceil32(arg2.length) + 192]
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 393] = 0
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 425] = _2108
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 457] = address(_1966)
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 489] = 128
                        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 521] = 0
                        require ext_code.size(address(_2085))
                        call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2108, address(_1966), 128, 0, mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 0 < mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 192]
        require 0 < mem[(32 * _8) + ceil32(arg2.length) + 160]
        require 0 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 425] = mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg2.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 553 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg2.length) + 236 len 20], mem[(32 * _8) + ceil32(arg2.length) + 192 len 28]
        call mem[ceil32(arg2.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 453 len 4] with:
             gas gas_remaining wei
            args mem[(32 * _8) + ceil32(arg2.length) + 192], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 489 len 28], mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 617 len 4]
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
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 663 len 22]
        else:
            mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 664 len 22]
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
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 4] with:
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
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
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
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 4] with:
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
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
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
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 4] with:
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
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
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
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 4] with:
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
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
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
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 424] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 552 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + 452 len 4] with:
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
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20]
        if not ext_code.size(mem[ceil32(arg4.length) + 172 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 64] = 0, mem[(32 * _403) + (32 * _8) + ceil32(arg4.length) + 236 len 20], mem[(32 * _8) + ceil32(arg4.length) + 192 len 28]
        call mem[ceil32(arg4.length) + 172 len 20].mem[(32 * _793) + (32 * _403) + (32 * _8) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
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



}
