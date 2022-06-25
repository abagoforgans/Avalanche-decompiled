contract main {




// =====================  Runtime code  =====================


const joeFactory = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const UINT256_MAX = -1


mapping of uint8 stor0;
address sub_2faff427Address;
array of struct paths;

function sub_2faff427(?) payable {
    return sub_2faff427Address
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor0[arg1][address(arg2)])
}

function paths(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 < paths[arg1][arg2].field_0
    return paths[arg1][arg2][arg3].field_0
}

function _fallback() payable {
    revert
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, ''
    if stor0[arg1][address(arg2)]:
        stor0[arg1][address(arg2)] = 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, ''
    if not stor0[arg1][address(arg2)]:
        stor0[arg1][address(arg2)] = 1
}

function setPath(address arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, ''
    paths[address(arg1)][address(arg2)].field_0 = arg3.length
    if not arg3.length:
        idx = 0
        while paths[address(arg1)][address(arg2)].field_0 > idx:
            paths[address(arg1)][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            paths[address(arg1)][address(arg2)][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while paths[address(arg1)][address(arg2)].field_0 > idx:
            paths[address(arg1)][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function getPath(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not paths[address(arg1)][address(arg2)].field_0:
        if 0 == paths[address(arg1)][address(arg2)].field_0:
            require 0 < paths[address(arg1)][address(arg2)].field_0
            mem[128] = arg1
            require 1 < paths[address(arg1)][address(arg2)].field_0
            mem[160] = arg2
        mem[(32 * paths[address(arg1)][address(arg2)].field_0) + 128] = 32
        mem[(32 * paths[address(arg1)][address(arg2)].field_0) + 160] = paths[address(arg1)][address(arg2)].field_0
        mem[(32 * paths[address(arg1)][address(arg2)].field_0) + 192 len floor32(paths[address(arg1)][address(arg2)].field_0)] = mem[128 len floor32(paths[address(arg1)][address(arg2)].field_0)]
        return memory
          from (32 * paths[address(arg1)][address(arg2)].field_0) + 128
           len (96 * paths[address(arg1)][address(arg2)].field_0) + 64
    mem[128] = paths[address(arg1)][address(arg2)].field_0
    idx = 128
    s = 0
    while (32 * paths[address(arg1)][address(arg2)].field_0) + 96 > idx:
        mem[idx + 32] = paths[address(arg1)][address(arg2)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == paths[address(arg1)][address(arg2)].field_0:
        require 0 < paths[address(arg1)][address(arg2)].field_0
        mem[128] = arg1
        require 1 < paths[address(arg1)][address(arg2)].field_0
        mem[160] = arg2
    mem[(32 * paths[address(arg1)][address(arg2)].field_0) + 192 len floor32(paths[address(arg1)][address(arg2)].field_0)] = mem[128 len floor32(paths[address(arg1)][address(arg2)].field_0)]
    return Array(len=paths[address(arg1)][address(arg2)].field_0, data=mem[128 len floor32(paths[address(arg1)][address(arg2)].field_0)], mem[(32 * paths[address(arg1)][address(arg2)].field_0) + floor32(paths[address(arg1)][address(arg2)].field_0) + 192 len (32 * paths[address(arg1)][address(arg2)].field_0) - floor32(paths[address(arg1)][address(arg2)].field_0)]), 
}

function sub_b35255ea(?) payable {
    require calldata.size - 4 >= 128
    mem[100] = arg2
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(arg3)
    call arg3.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = arg4
    mem[32] = sha3(address(arg3), 2)
    mem[96] = paths[address(arg3)][address(arg4)].field_0
    if paths[address(arg3)][address(arg4)].field_0:
        mem[0] = sha3(address(arg4), sha3(address(arg3), 2))
        mem[128] = paths[address(arg3)][address(arg4)].field_0
        idx = 128
        s = 0
        while (32 * paths[address(arg3)][address(arg4)].field_0) + 96 > idx:
            mem[idx + 32] = paths[address(arg3)][address(arg4)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if 0 == paths[address(arg3)][address(arg4)].field_0:
        require 0 < paths[address(arg3)][address(arg4)].field_0
        mem[128] = arg3
        require 1 < paths[address(arg3)][address(arg4)].field_0
        mem[160] = arg4
    mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 132] = arg1
    mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 164] = -1
    mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 228] = arg2
    mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 260] = block.number
    mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 196] = 160
    mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 292] = paths[address(arg3)][address(arg4)].field_0
    mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 324 len floor32(paths[address(arg3)][address(arg4)].field_0)] = mem[128 len floor32(paths[address(arg3)][address(arg4)].field_0)]
    require ext_code.size(sub_2faff427Address)
    call sub_2faff427Address.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, -1, Array(len=paths[address(arg3)][address(arg4)].field_0, data=mem[128 len floor32(paths[address(arg3)][address(arg4)].field_0)], mem[(32 * paths[address(arg3)][address(arg4)].field_0) + floor32(paths[address(arg3)][address(arg4)].field_0) + 324 len (32 * paths[address(arg3)][address(arg4)].field_0) - floor32(paths[address(arg3)][address(arg4)].field_0)]), address(arg2), block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * paths[address(arg3)][address(arg4)].field_0) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[(32 * paths[address(arg3)][address(arg4)].field_0) + mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] <= 4294967296 and mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * paths[address(arg3)][address(arg4)].field_0) + mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 32 <= return_data.size
}

function sub_ff02368a(?) payable {
    require calldata.size - 4 >= 96
    mem[0] = arg3
    mem[32] = sha3(address(arg2), 2)
    mem[64] = (32 * paths[address(arg2)][address(arg3)].field_0) + 128
    mem[96] = paths[address(arg2)][address(arg3)].field_0
    if not paths[address(arg2)][address(arg3)].field_0:
        require 0 < paths[address(arg2)][address(arg3)].field_0
        if paths[address(arg2)][address(arg3)].field_0 != 0:
            mem[128] = arg1
            idx = 0
            while idx < paths[address(arg2)][address(arg3)].field_0 - 1:
                require idx < mem[96]
                _363 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _370 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _410 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_370)
                        _411 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _413 = sha3(mem[_411 + 32 len mem[_411]])
                        mem[_410 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_410 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_410 + 125] = _413
                        mem[_410 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_410 + 72] = 85
                        mem[64] = _410 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _413, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _413, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_410 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_363) == address(_363):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_410 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_410 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_410 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_410 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _417 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_363)
                        _418 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _420 = sha3(mem[_418 + 32 len mem[_418]])
                        mem[_417 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_417 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_417 + 125] = _420
                        mem[_417 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_417 + 72] = 85
                        mem[64] = _417 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _420, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _420, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_417 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_363) == address(_363):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_417 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_417 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_417 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_417 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _424 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_370)
                        _425 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _427 = sha3(mem[_425 + 32 len mem[_425]])
                        mem[_424 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_424 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_424 + 125] = _427
                        mem[_424 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_424 + 72] = 85
                        mem[64] = _424 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _427, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _427, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_424 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_370) == address(_363):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_424 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_424 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_424 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_424 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _431 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_363)
                        _432 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _434 = sha3(mem[_432 + 32 len mem[_432]])
                        mem[_431 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_431 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_431 + 125] = _434
                        mem[_431 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_431 + 72] = 85
                        mem[64] = _431 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _434, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _434, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_431 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_370) == address(_363):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_431 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_431 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_431 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_431 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                idx = idx + 1
                continue 
        else:
            require 1 < paths[address(arg2)][address(arg3)].field_0
            mem[160] = arg3
            require 0 < paths[address(arg2)][address(arg3)].field_0
            mem[128] = arg1
            idx = 0
            while idx < paths[address(arg2)][address(arg3)].field_0 - 1:
                require idx < mem[96]
                _366 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _373 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _438 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_373)
                        _439 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _441 = sha3(mem[_439 + 32 len mem[_439]])
                        mem[_438 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_438 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_438 + 125] = _441
                        mem[_438 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_438 + 72] = 85
                        mem[64] = _438 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _441, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _441, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_438 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_366) == address(_366):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_438 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_438 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_438 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_438 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _445 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_366)
                        _446 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _448 = sha3(mem[_446 + 32 len mem[_446]])
                        mem[_445 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_445 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_445 + 125] = _448
                        mem[_445 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_445 + 72] = 85
                        mem[64] = _445 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _448, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _448, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_445 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_366) == address(_366):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_445 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_445 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_445 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_445 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _452 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_373)
                        _453 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _455 = sha3(mem[_453 + 32 len mem[_453]])
                        mem[_452 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_452 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_452 + 125] = _455
                        mem[_452 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_452 + 72] = 85
                        mem[64] = _452 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _455, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _455, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_452 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_373) == address(_366):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_452 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_452 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_452 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_452 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _459 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_366)
                        _460 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _462 = sha3(mem[_460 + 32 len mem[_460]])
                        mem[_459 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_459 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_459 + 125] = _462
                        mem[_459 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_459 + 72] = 85
                        mem[64] = _459 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _462, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _462, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_459 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_373) == address(_366):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_459 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_459 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_459 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_459 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                idx = idx + 1
                continue 
    else:
        mem[0] = sha3(address(arg3), sha3(address(arg2), 2))
        idx = 128
        s = 0
        while (32 * paths[address(arg2)][address(arg3)].field_0) + 96 > idx:
            mem[idx + 32] = paths[address(arg2)][address(arg3)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < paths[address(arg2)][address(arg3)].field_0
        if paths[address(arg2)][address(arg3)].field_0 != 0:
            mem[128] = arg1
            idx = 0
            while idx < paths[address(arg2)][address(arg3)].field_0 - 1:
                require idx < mem[96]
                _1056 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _1063 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _1103 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_1063)
                        _1104 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1106 = sha3(mem[_1104 + 32 len mem[_1104]])
                        mem[_1103 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1103 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_1103 + 125] = _1106
                        mem[_1103 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_1103 + 72] = 85
                        mem[64] = _1103 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _1106, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _1106, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1103 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_1056) == address(_1056):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1103 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1103 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1103 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1103 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _1110 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_1056)
                        _1111 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1113 = sha3(mem[_1111 + 32 len mem[_1111]])
                        mem[_1110 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1110 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_1110 + 125] = _1113
                        mem[_1110 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_1110 + 72] = 85
                        mem[64] = _1110 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _1113, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _1113, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1110 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_1056) == address(_1056):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1110 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1110 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1110 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1110 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _1117 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_1063)
                        _1118 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1120 = sha3(mem[_1118 + 32 len mem[_1118]])
                        mem[_1117 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1117 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_1117 + 125] = _1120
                        mem[_1117 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_1117 + 72] = 85
                        mem[64] = _1117 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _1120, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _1120, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1117 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_1063) == address(_1056):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1117 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1117 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1117 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1117 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _1124 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_1056)
                        _1125 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1127 = sha3(mem[_1125 + 32 len mem[_1125]])
                        mem[_1124 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1124 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_1124 + 125] = _1127
                        mem[_1124 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_1124 + 72] = 85
                        mem[64] = _1124 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _1127, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _1127, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1124 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_1063) == address(_1056):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1124 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1124 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1124 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1124 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                idx = idx + 1
                continue 
        else:
            require 1 < paths[address(arg2)][address(arg3)].field_0
            mem[160] = arg3
            require 0 < paths[address(arg2)][address(arg3)].field_0
            mem[128] = arg1
            idx = 0
            while idx < paths[address(arg2)][address(arg3)].field_0 - 1:
                require idx < mem[96]
                _1059 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _1066 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _1131 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_1066)
                        _1132 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1134 = sha3(mem[_1132 + 32 len mem[_1132]])
                        mem[_1131 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1131 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_1131 + 125] = _1134
                        mem[_1131 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_1131 + 72] = 85
                        mem[64] = _1131 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _1134, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _1134, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1131 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_1059) == address(_1059):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1131 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1131 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1131 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1131 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _1138 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_1059)
                        _1139 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1141 = sha3(mem[_1139 + 32 len mem[_1139]])
                        mem[_1138 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1138 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_1138 + 125] = _1141
                        mem[_1138 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_1138 + 72] = 85
                        mem[64] = _1138 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _1141, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _1141, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1138 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_1059) == address(_1059):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1138 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1138 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1138 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1138 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _1145 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_1066)
                        _1146 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1148 = sha3(mem[_1146 + 32 len mem[_1146]])
                        mem[_1145 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1145 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_1145 + 125] = _1148
                        mem[_1145 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_1145 + 72] = 85
                        mem[64] = _1145 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _1148, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _1148, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1145 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_1066) == address(_1059):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1145 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1145 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1145 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1145 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _1152 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_1059)
                        _1153 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _1155 = sha3(mem[_1153 + 32 len mem[_1153]])
                        mem[_1152 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1152 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_1152 + 125] = _1155
                        mem[_1152 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_1152 + 72] = 85
                        mem[64] = _1152 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _1155, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _1155, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_1152 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[96]
                        if mem[(32 * idx) + 128] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_1066) == address(_1059):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1152 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1152 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1152 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1152 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[96]
                                mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                idx = idx + 1
                continue 
    require mem[96] - 1 < mem[96]
    mem[mem[64]] = mem[(32 * mem[96] - 1) + 128]
    return memory
      from mem[64]
       len 32
}



}
