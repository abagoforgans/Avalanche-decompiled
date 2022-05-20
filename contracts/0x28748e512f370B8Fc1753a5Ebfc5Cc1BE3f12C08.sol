contract main {




// =====================  Runtime code  =====================


#
#  - withdrawFrom(uint256 arg1)
#
const ROUTER = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const PRECISION = 10000

const TIME = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const MEMO = 0x136acd46c134e8269052c62a67042d6bdedde3c9


uint32 stor0;
address timeStakingAddress;
uint256 stor0;
uint256 sub_429859a6;
array of struct sub_6e55f699;
array of address sub_35bec28a;

function sub_35bec28a(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_35bec28a.length
    return sub_35bec28a[arg1]
}

function sub_429859a6(?) {
    return sub_429859a6
}

function sub_6e55f699(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_6e55f699.length
    return sub_6e55f699[arg1].field_0
}

function timeStaking() {
    return address(timeStakingAddress)
}

function _fallback() payable {
    revert
}

function _withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(timeStakingAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        if arg1:
            require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
            staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(timeStakingAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[218 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg1) >> 32
        call 0x136acd46c134e8269052c62a67042d6bdedde3c9 with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), arg1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor0):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(address(timeStakingAddress))
    call address(timeStakingAddress).unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_64fc6f33(?) payable {
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.value
    mem[132] = 64
    mem[164] = sub_6e55f699.length
    if not sub_6e55f699.length:
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args msg.value, 64, sub_6e55f699.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _5 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
        require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
        _8 = mem[_5 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_5 + 96])] = mem[_5 + 128 len floor32(mem[_5 + 96])]
        if 1 > mem[ceil32(return_data.size) + 96]:
            revert with 0, 'SafeMath: subtraction overflow'
        require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
        _328 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
        if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
            mem[(32 * _8) + ceil32(return_data.size) + 128] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[(32 * _8) + ceil32(return_data.size) + 132] = 0
            mem[(32 * _8) + ceil32(return_data.size) + 196] = this.address
            mem[(32 * _8) + ceil32(return_data.size) + 228] = block.timestamp
            mem[(32 * _8) + ceil32(return_data.size) + 164] = 128
            mem[(32 * _8) + ceil32(return_data.size) + 260] = sub_6e55f699.length
            if not sub_6e55f699.length:
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, sub_6e55f699.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _8) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _8) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _339 = mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0
                require mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
                require mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
                require mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 + (32 * mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 + 128]
                _345 = mem[(32 * _8) + ceil32(return_data.size) + _339 + 128]
                mem[(32 * _8) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _339 + 128])] = mem[(32 * _8) + ceil32(return_data.size) + _339 + 160 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _339 + 128])]
                require mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128]
                _645 = mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]
                require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(timeStakingAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]:
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160], msg.sender
                else:
                    if mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]:
                        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(timeStakingAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 282 len 10]
                    mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 196] = address(timeStakingAddress)
                    mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 228] = _645
                    mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor0)
                    mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
                    mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, _645) >> 32
                    mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, _645) << 224, mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not uint32(msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _345) + (32 * _8) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args _645, msg.sender
            else:
                mem[0] = 2
                mem[(32 * _8) + ceil32(return_data.size) + 292] = address(sub_6e55f699.field_0)
                idx = (32 * _8) + ceil32(return_data.size) + 292
                s = 0
                while (32 * _8) + ceil32(return_data.size) + (32 * sub_6e55f699.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_6e55f699[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, sub_6e55f699.length, mem[(32 * _8) + ceil32(return_data.size) + 292 len 32 * sub_6e55f699.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _8) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _8) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _1275 = mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0
                require mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
                require mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
                require mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 + (32 * mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], 0 + 128]
                _1323 = mem[(32 * _8) + ceil32(return_data.size) + _1275 + 128]
                mem[(32 * _8) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _1275 + 128])] = mem[(32 * _8) + ceil32(return_data.size) + _1275 + 160 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _1275 + 128])]
                require mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128]
                _2112 = mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]
                require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(timeStakingAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]:
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160], msg.sender
                else:
                    if mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]:
                        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(timeStakingAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 282 len 10]
                    mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 196] = address(timeStakingAddress)
                    mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 228] = _2112
                    mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor0)
                    mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
                    mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, _2112) >> 32
                    mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, _2112) << 224, mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not uint32(msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _1323) + (32 * _8) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args _2112, msg.sender
        else:
            if sub_429859a6 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] != sub_429859a6:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _8) + ceil32(return_data.size) + 229 len 31]
            mem[(32 * _8) + ceil32(return_data.size) + 128] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[(32 * _8) + ceil32(return_data.size) + 132] = sub_429859a6 * _328 / 10000
            mem[(32 * _8) + ceil32(return_data.size) + 196] = this.address
            mem[(32 * _8) + ceil32(return_data.size) + 228] = block.timestamp
            mem[(32 * _8) + ceil32(return_data.size) + 164] = 128
            mem[(32 * _8) + ceil32(return_data.size) + 260] = sub_6e55f699.length
            if not sub_6e55f699.length:
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args sub_429859a6 * _328 / 10000, 128, address(this.address), block.timestamp, sub_6e55f699.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _8) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _8) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _341 = mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32
                require mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 <= 4294967296
                require mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 + 32 <= return_data.size
                require mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 + 128] <= 4294967296 and mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 + (32 * mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 + 128]) + 32 <= return_data.size
                mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 + 128]
                _346 = mem[(32 * _8) + ceil32(return_data.size) + _341 + 128]
                mem[(32 * _8) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _341 + 128])] = mem[(32 * _8) + ceil32(return_data.size) + _341 + 160 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _341 + 128])]
                require mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128]
                _644 = mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]
                require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(timeStakingAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]:
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160], msg.sender
                else:
                    if mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]:
                        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(timeStakingAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 282 len 10]
                    mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 196] = address(timeStakingAddress)
                    mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 228] = _644
                    mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor0)
                    mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
                    mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, _644) >> 32
                    mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, _644) << 224, mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not uint32(msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _346) + (32 * _8) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args _644, msg.sender
            else:
                mem[0] = 2
                mem[(32 * _8) + ceil32(return_data.size) + 292] = address(sub_6e55f699.field_0)
                idx = (32 * _8) + ceil32(return_data.size) + 292
                s = 0
                while (32 * _8) + ceil32(return_data.size) + (32 * sub_6e55f699.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_6e55f699[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args sub_429859a6 * _328 / 10000, Array(len=sub_6e55f699.length, data=mem[(32 * _8) + ceil32(return_data.size) + 292 len 32 * sub_6e55f699.length]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _8) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _8) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _1273 = mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32
                require mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 <= 4294967296
                require mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 + 32 <= return_data.size
                require mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 + 128] <= 4294967296 and mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 + (32 * mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 + 128]) + 32 <= return_data.size
                mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _328 / 10000) >> 32 + 128]
                _1306 = mem[(32 * _8) + ceil32(return_data.size) + _1273 + 128]
                mem[(32 * _8) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _1273 + 128])] = mem[(32 * _8) + ceil32(return_data.size) + _1273 + 160 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _1273 + 128])]
                require mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128]
                _2103 = mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]
                require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(timeStakingAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]:
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160], msg.sender
                else:
                    if mem[(32 * mem[(32 * _8) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _8) + (2 * ceil32(return_data.size)) + 160]:
                        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(timeStakingAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 282 len 10]
                    mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 196] = address(timeStakingAddress)
                    mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 228] = _2103
                    mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor0)
                    mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
                    mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, _2103) >> 32
                    mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, _2103) << 224, mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not uint32(msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _1306) + (32 * _8) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args _2103, msg.sender
    else:
        mem[0] = 2
        mem[196] = address(sub_6e55f699.field_0)
        idx = 196
        s = 0
        while (32 * sub_6e55f699.length) + 196 > idx + 32:
            mem[idx + 32] = sub_6e55f699[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args msg.value, Array(len=sub_6e55f699.length, data=mem[196 len 32 * sub_6e55f699.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _647 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
        require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
        _654 = mem[_647 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_647 + 96])] = mem[_647 + 128 len floor32(mem[_647 + 96])]
        if 1 > mem[ceil32(return_data.size) + 96]:
            revert with 0, 'SafeMath: subtraction overflow'
        require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
        _1324 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
        if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
            mem[(32 * _654) + ceil32(return_data.size) + 128] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[(32 * _654) + ceil32(return_data.size) + 132] = 0
            mem[(32 * _654) + ceil32(return_data.size) + 196] = this.address
            mem[(32 * _654) + ceil32(return_data.size) + 228] = block.timestamp
            mem[(32 * _654) + ceil32(return_data.size) + 164] = 128
            mem[(32 * _654) + ceil32(return_data.size) + 260] = sub_6e55f699.length
            if not sub_6e55f699.length:
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, sub_6e55f699.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _654) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _654) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _1511 = mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0
                require mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
                require mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
                require mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 + (32 * mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 + 128]
                _1535 = mem[(32 * _654) + ceil32(return_data.size) + _1511 + 128]
                mem[(32 * _654) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _654) + ceil32(return_data.size) + _1511 + 128])] = mem[(32 * _654) + ceil32(return_data.size) + _1511 + 160 len floor32(mem[(32 * _654) + ceil32(return_data.size) + _1511 + 128])]
                require mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128]
                _2114 = mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]
                require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(timeStakingAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]:
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160], msg.sender
                else:
                    if mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]:
                        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(timeStakingAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 282 len 10]
                    mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 196] = address(timeStakingAddress)
                    mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 228] = _2114
                    mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor0)
                    mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
                    mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, _2114) >> 32
                    mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, _2114) << 224, mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not uint32(msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _1535) + (32 * _654) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args _2114, msg.sender
            else:
                mem[0] = 2
                mem[(32 * _654) + ceil32(return_data.size) + 292] = address(sub_6e55f699.field_0)
                idx = (32 * _654) + ceil32(return_data.size) + 292
                s = 0
                while (32 * _654) + ceil32(return_data.size) + (32 * sub_6e55f699.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_6e55f699[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, sub_6e55f699.length, mem[(32 * _654) + ceil32(return_data.size) + 292 len 32 * sub_6e55f699.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _654) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _654) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _2733 = mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0
                require mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
                require mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
                require mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 + (32 * mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], 0 + 128]
                _2818 = mem[(32 * _654) + ceil32(return_data.size) + _2733 + 128]
                mem[(32 * _654) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _654) + ceil32(return_data.size) + _2733 + 128])] = mem[(32 * _654) + ceil32(return_data.size) + _2733 + 160 len floor32(mem[(32 * _654) + ceil32(return_data.size) + _2733 + 128])]
                require mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128]
                _3468 = mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]
                require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(timeStakingAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]:
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160], msg.sender
                else:
                    if mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]:
                        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(timeStakingAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 282 len 10]
                    mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 196] = address(timeStakingAddress)
                    mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 228] = _3468
                    mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor0)
                    mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
                    mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, _3468) >> 32
                    mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, _3468) << 224, mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not uint32(msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2818) + (32 * _654) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args _3468, msg.sender
        else:
            if sub_429859a6 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] != sub_429859a6:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _654) + ceil32(return_data.size) + 229 len 31]
            mem[(32 * _654) + ceil32(return_data.size) + 128] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[(32 * _654) + ceil32(return_data.size) + 132] = sub_429859a6 * _1324 / 10000
            mem[(32 * _654) + ceil32(return_data.size) + 196] = this.address
            mem[(32 * _654) + ceil32(return_data.size) + 228] = block.timestamp
            mem[(32 * _654) + ceil32(return_data.size) + 164] = 128
            mem[(32 * _654) + ceil32(return_data.size) + 260] = sub_6e55f699.length
            if not sub_6e55f699.length:
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args sub_429859a6 * _1324 / 10000, 128, address(this.address), block.timestamp, sub_6e55f699.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _654) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _654) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _1523 = mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32
                require mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 <= 4294967296
                require mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 + 32 <= return_data.size
                require mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 + 128] <= 4294967296 and mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 + (32 * mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 + 128]) + 32 <= return_data.size
                mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 + 128]
                _1540 = mem[(32 * _654) + ceil32(return_data.size) + _1523 + 128]
                mem[(32 * _654) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _654) + ceil32(return_data.size) + _1523 + 128])] = mem[(32 * _654) + ceil32(return_data.size) + _1523 + 160 len floor32(mem[(32 * _654) + ceil32(return_data.size) + _1523 + 128])]
                require mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128]
                _2113 = mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]
                require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(timeStakingAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]:
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160], msg.sender
                else:
                    if mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]:
                        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(timeStakingAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 282 len 10]
                    mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 196] = address(timeStakingAddress)
                    mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 228] = _2113
                    mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor0)
                    mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
                    mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, _2113) >> 32
                    mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, _2113) << 224, mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not uint32(msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _1540) + (32 * _654) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args _2113, msg.sender
            else:
                mem[0] = 2
                mem[(32 * _654) + ceil32(return_data.size) + 292] = address(sub_6e55f699.field_0)
                idx = (32 * _654) + ceil32(return_data.size) + 292
                s = 0
                while (32 * _654) + ceil32(return_data.size) + (32 * sub_6e55f699.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_6e55f699[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args sub_429859a6 * _1324 / 10000, Array(len=sub_6e55f699.length, data=mem[(32 * _654) + ceil32(return_data.size) + 292 len 32 * sub_6e55f699.length]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _654) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _654) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _2731 = mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32
                require mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 <= 4294967296
                require mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 + 32 <= return_data.size
                require mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 + 128] <= 4294967296 and mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 + (32 * mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 + 128]) + 32 <= return_data.size
                mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _654) + ceil32(return_data.size) + mem[(32 * _654) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, sub_429859a6 * _1324 / 10000) >> 32 + 128]
                _2801 = mem[(32 * _654) + ceil32(return_data.size) + _2731 + 128]
                mem[(32 * _654) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _654) + ceil32(return_data.size) + _2731 + 128])] = mem[(32 * _654) + ceil32(return_data.size) + _2731 + 160 len floor32(mem[(32 * _654) + ceil32(return_data.size) + _2731 + 128])]
                require mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128]
                _3459 = mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]
                require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(timeStakingAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]:
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160], msg.sender
                else:
                    if mem[(32 * mem[(32 * _654) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _654) + (2 * ceil32(return_data.size)) + 160]:
                        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
                        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(timeStakingAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 282 len 10]
                    mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 196] = address(timeStakingAddress)
                    mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 228] = _3459
                    mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor0)
                    mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
                    mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, _3459) >> 32
                    mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, _3459) << 224, mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not uint32(msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2801) + (32 * _654) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(address(timeStakingAddress))
                    call address(timeStakingAddress).stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args _3459, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(timeStakingAddress))
    call address(timeStakingAddress).claim(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
