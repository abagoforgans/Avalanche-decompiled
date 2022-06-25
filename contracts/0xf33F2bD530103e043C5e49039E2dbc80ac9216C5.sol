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
            mem[(32 * paths[address(arg1)][address(arg2)].field_0) + 288 len 0] = None
            return Array(len=2, data=mem[(32 * paths[address(arg1)][address(arg2)].field_0) + 288 len 64])
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
        mem[(32 * paths[address(arg1)][address(arg2)].field_0) + 288 len 0] = None
        return Array(len=2, data=mem[(32 * paths[address(arg1)][address(arg2)].field_0) + 288 len 64])
    mem[(32 * paths[address(arg1)][address(arg2)].field_0) + 192 len floor32(paths[address(arg1)][address(arg2)].field_0)] = mem[128 len floor32(paths[address(arg1)][address(arg2)].field_0)]
    return Array(len=paths[address(arg1)][address(arg2)].field_0, data=mem[128 len floor32(paths[address(arg1)][address(arg2)].field_0)], mem[(32 * paths[address(arg1)][address(arg2)].field_0) + floor32(paths[address(arg1)][address(arg2)].field_0) + 192 len (32 * paths[address(arg1)][address(arg2)].field_0) - floor32(paths[address(arg1)][address(arg2)].field_0)]), 
}

function sub_b35255ea(?) payable {
    require calldata.size - 4 >= 128
    mem[100] = arg2
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[32] = sha3(address(arg3), 2)
    mem[96] = paths[address(arg3)][address(arg4)].field_0
    if not paths[address(arg3)][address(arg4)].field_0:
        if paths[address(arg3)][address(arg4)].field_0 != 0:
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
        else:
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 192] = arg4
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 228] = arg1
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 260] = -1
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 324] = arg2
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 356] = block.number
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 292] = 160
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 388] = 2
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 420 len 0] = None
            require ext_code.size(sub_2faff427Address)
            call sub_2faff427Address.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, -1, Array(len=2, data=mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 420 len 64]), address(arg2), block.number
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * paths[address(arg3)][address(arg4)].field_0) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[(32 * paths[address(arg3)][address(arg4)].field_0) + mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * paths[address(arg3)][address(arg4)].field_0) + mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
    else:
        mem[0] = sha3(address(arg4), sha3(address(arg3), 2))
        mem[128] = paths[address(arg3)][address(arg4)].field_0
        idx = 128
        s = 0
        while (32 * paths[address(arg3)][address(arg4)].field_0) + 96 > idx:
            mem[idx + 32] = paths[address(arg3)][address(arg4)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if paths[address(arg3)][address(arg4)].field_0 != 0:
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
        else:
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 128] = 2
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 160] = arg3
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 192] = arg4
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 228] = arg1
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 260] = -1
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 324] = arg2
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 356] = block.number
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 292] = 160
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 388] = 2
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 420 len 0] = None
            require ext_code.size(sub_2faff427Address)
            call sub_2faff427Address.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, -1, Array(len=2, data=mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 420 len 64]), address(arg2), block.number
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * paths[address(arg3)][address(arg4)].field_0) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[(32 * paths[address(arg3)][address(arg4)].field_0) + mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * paths[address(arg3)][address(arg4)].field_0) + mem[(32 * paths[address(arg3)][address(arg4)].field_0) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
}

function sub_ff02368a(?) payable {
    require calldata.size - 4 >= 96
    mem[0] = arg3
    mem[32] = sha3(address(arg2), 2)
    mem[96] = paths[address(arg2)][address(arg3)].field_0
    if not paths[address(arg2)][address(arg3)].field_0:
        if 0 == paths[address(arg2)][address(arg3)].field_0:
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128] = 2
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 160] = arg2
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 192] = arg3
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224] = 2
            mem[64] = (32 * paths[address(arg2)][address(arg3)].field_0) + 320
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 256 len 64] = call.data[calldata.size len 64]
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 256] = arg1
            idx = 0
            while idx < 1:
                require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                _725 = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]
                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                _738 = mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]
                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] == mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] < mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] == mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] < mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _845 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160])
                        mem[mem[64] + 52] = address(_738)
                        _846 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _848 = sha3(mem[_846 + 32 len mem[_846]])
                        mem[_845 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_845 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_845 + 125] = _848
                        mem[_845 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_845 + 72] = 85
                        mem[64] = _845 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _848, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _848, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_845 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                        if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_725) == address(_725):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_845 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_845 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_845 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_845 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _852 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160])
                        mem[mem[64] + 52] = address(_725)
                        _853 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _855 = sha3(mem[_853 + 32 len mem[_853]])
                        mem[_852 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_852 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_852 + 125] = _855
                        mem[_852 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_852 + 72] = 85
                        mem[64] = _852 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _855, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _855, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_852 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                        if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_725) == address(_725):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_852 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_852 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_852 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_852 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                else:
                    if not mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] == mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] < mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _859 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160])
                        mem[mem[64] + 52] = address(_738)
                        _860 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _862 = sha3(mem[_860 + 32 len mem[_860]])
                        mem[_859 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_859 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_859 + 125] = _862
                        mem[_859 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_859 + 72] = 85
                        mem[64] = _859 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _862, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _862, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_859 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                        if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_738) == address(_725):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_859 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_859 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_859 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_859 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _866 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160])
                        mem[mem[64] + 52] = address(_725)
                        _867 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _869 = sha3(mem[_867 + 32 len mem[_867]])
                        mem[_866 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_866 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_866 + 125] = _869
                        mem[_866 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_866 + 72] = 85
                        mem[64] = _866 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _869, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _869, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_866 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                        if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_738) == address(_725):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_866 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_866 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_866 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_866 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                idx = idx + 1
                continue 
            require mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128] - 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
            mem[mem[64]] = mem[(32 * mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128] - 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]
        else:
            require paths[address(arg2)][address(arg3)].field_0 <= test266151307()
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128] = paths[address(arg2)][address(arg3)].field_0
            mem[64] = (64 * paths[address(arg2)][address(arg3)].field_0) + 160
            if not paths[address(arg2)][address(arg3)].field_0:
                require 0 < paths[address(arg2)][address(arg3)].field_0
                mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 160] = arg1
                idx = 0
                while idx < paths[address(arg2)][address(arg3)].field_0 - 1:
                    require idx < mem[96]
                    _728 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _741 = mem[(32 * idx + 1) + 128]
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
                            _873 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_741)
                            _874 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _876 = sha3(mem[_874 + 32 len mem[_874]])
                            mem[_873 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_873 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_873 + 125] = _876
                            mem[_873 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_873 + 72] = 85
                            mem[64] = _873 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _876, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _876, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_873 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_728) == address(_728):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_873 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_873 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_873 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_873 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _880 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_728)
                            _881 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _883 = sha3(mem[_881 + 32 len mem[_881]])
                            mem[_880 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_880 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_880 + 125] = _883
                            mem[_880 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_880 + 72] = 85
                            mem[64] = _880 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _883, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _883, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_880 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_728) == address(_728):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_880 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_880 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_880 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_880 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _887 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_741)
                            _888 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _890 = sha3(mem[_888 + 32 len mem[_888]])
                            mem[_887 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_887 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_887 + 125] = _890
                            mem[_887 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_887 + 72] = 85
                            mem[64] = _887 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _890, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _890, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_887 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_741) == address(_728):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_887 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_887 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_887 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_887 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _894 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_728)
                            _895 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _897 = sha3(mem[_895 + 32 len mem[_895]])
                            mem[_894 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_894 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_894 + 125] = _897
                            mem[_894 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_894 + 72] = 85
                            mem[64] = _894 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _897, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _897, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_894 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_741) == address(_728):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_894 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_894 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_894 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_894 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    idx = idx + 1
                    continue 
            else:
                mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 160 len 32 * paths[address(arg2)][address(arg3)].field_0] = call.data[calldata.size len 32 * paths[address(arg2)][address(arg3)].field_0]
                require 0 < paths[address(arg2)][address(arg3)].field_0
                mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 160] = arg1
                idx = 0
                while idx < paths[address(arg2)][address(arg3)].field_0 - 1:
                    require idx < mem[96]
                    _731 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _744 = mem[(32 * idx + 1) + 128]
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
                            _901 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_744)
                            _902 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _904 = sha3(mem[_902 + 32 len mem[_902]])
                            mem[_901 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_901 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_901 + 125] = _904
                            mem[_901 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_901 + 72] = 85
                            mem[64] = _901 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _904, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _904, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_901 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_731) == address(_731):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_901 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_901 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_901 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_901 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _908 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_731)
                            _909 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _911 = sha3(mem[_909 + 32 len mem[_909]])
                            mem[_908 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_908 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_908 + 125] = _911
                            mem[_908 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_908 + 72] = 85
                            mem[64] = _908 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _911, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _911, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_908 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_731) == address(_731):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_908 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_908 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_908 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_908 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _915 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_744)
                            _916 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _918 = sha3(mem[_916 + 32 len mem[_916]])
                            mem[_915 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_915 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_915 + 125] = _918
                            mem[_915 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_915 + 72] = 85
                            mem[64] = _915 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _918, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _918, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_915 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_744) == address(_731):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_915 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_915 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_915 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_915 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _922 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_731)
                            _923 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _925 = sha3(mem[_923 + 32 len mem[_923]])
                            mem[_922 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_922 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_922 + 125] = _925
                            mem[_922 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_922 + 72] = 85
                            mem[64] = _922 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _925, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _925, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_922 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_744) == address(_731):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_922 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_922 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_922 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_922 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    idx = idx + 1
                    continue 
            require mem[96] - 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
            mem[mem[64]] = mem[(32 * mem[96] - 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]
    else:
        mem[0] = sha3(address(arg3), sha3(address(arg2), 2))
        mem[128] = paths[address(arg2)][address(arg3)].field_0
        idx = 128
        s = 0
        while (32 * paths[address(arg2)][address(arg3)].field_0) + 96 > idx:
            mem[idx + 32] = paths[address(arg2)][address(arg3)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if 0 == paths[address(arg2)][address(arg3)].field_0:
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128] = 2
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 160] = arg2
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 192] = arg3
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224] = 2
            mem[64] = (32 * paths[address(arg2)][address(arg3)].field_0) + 320
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 256 len 64] = call.data[calldata.size len 64]
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 256] = arg1
            idx = 0
            while idx < 1:
                require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                _2113 = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]
                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                _2126 = mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]
                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] == mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] < mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] == mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] < mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _2233 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160])
                        mem[mem[64] + 52] = address(_2126)
                        _2234 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2236 = sha3(mem[_2234 + 32 len mem[_2234]])
                        mem[_2233 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2233 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_2233 + 125] = _2236
                        mem[_2233 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_2233 + 72] = 85
                        mem[64] = _2233 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _2236, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _2236, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2233 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                        if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_2113) == address(_2113):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2233 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2233 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2233 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2233 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _2240 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160])
                        mem[mem[64] + 52] = address(_2113)
                        _2241 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2243 = sha3(mem[_2241 + 32 len mem[_2241]])
                        mem[_2240 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2240 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_2240 + 125] = _2243
                        mem[_2240 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_2240 + 72] = 85
                        mem[64] = _2240 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _2243, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _2243, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2240 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                        if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_2113) == address(_2113):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2240 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2240 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2240 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2240 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                else:
                    if not mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] == mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20] < mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _2247 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160])
                        mem[mem[64] + 52] = address(_2126)
                        _2248 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2250 = sha3(mem[_2248 + 32 len mem[_2248]])
                        mem[_2247 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2247 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_2247 + 125] = _2250
                        mem[_2247 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_2247 + 72] = 85
                        mem[64] = _2247 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _2250, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _2250, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2247 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                        if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_2126) == address(_2113):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2247 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2247 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2247 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2247 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 172 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _2254 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160])
                        mem[mem[64] + 52] = address(_2113)
                        _2255 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _2257 = sha3(mem[_2255 + 32 len mem[_2255]])
                        mem[_2254 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2254 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_2254 + 125] = _2257
                        mem[_2254 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_2254 + 72] = 85
                        mem[64] = _2254 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _2257, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _2257, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2254 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                        if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] <= 0:
                            revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                        if address(_2126) == address(_2113):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2254 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2254 + 291 len 30]
                            if not ext_call.return_data[50 len 14]:
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[18 len 14]
                            else:
                                require ext_call.return_data[50 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2254 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2254 + 291 len 30]
                            if not ext_call.return_data[18 len 14]:
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = 0 / ext_call.return_data[50 len 14]
                            else:
                                require ext_call.return_data[18 len 14]
                                if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
                                mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                idx = idx + 1
                continue 
            require mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128] - 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 224]
            mem[mem[64]] = mem[(32 * mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128] - 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 256]
        else:
            require paths[address(arg2)][address(arg3)].field_0 <= test266151307()
            mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128] = paths[address(arg2)][address(arg3)].field_0
            mem[64] = (64 * paths[address(arg2)][address(arg3)].field_0) + 160
            if not paths[address(arg2)][address(arg3)].field_0:
                require 0 < paths[address(arg2)][address(arg3)].field_0
                mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 160] = arg1
                idx = 0
                while idx < paths[address(arg2)][address(arg3)].field_0 - 1:
                    require idx < mem[96]
                    _2116 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _2129 = mem[(32 * idx + 1) + 128]
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
                            _2261 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_2129)
                            _2262 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2264 = sha3(mem[_2262 + 32 len mem[_2262]])
                            mem[_2261 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2261 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_2261 + 125] = _2264
                            mem[_2261 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_2261 + 72] = 85
                            mem[64] = _2261 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _2264, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _2264, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2261 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_2116) == address(_2116):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2261 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2261 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2261 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2261 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _2268 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_2116)
                            _2269 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2271 = sha3(mem[_2269 + 32 len mem[_2269]])
                            mem[_2268 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2268 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_2268 + 125] = _2271
                            mem[_2268 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_2268 + 72] = 85
                            mem[64] = _2268 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _2271, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _2271, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2268 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_2116) == address(_2116):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2268 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2268 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2268 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2268 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _2275 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_2129)
                            _2276 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2278 = sha3(mem[_2276 + 32 len mem[_2276]])
                            mem[_2275 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2275 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_2275 + 125] = _2278
                            mem[_2275 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_2275 + 72] = 85
                            mem[64] = _2275 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _2278, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _2278, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2275 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_2129) == address(_2116):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2275 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2275 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2275 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2275 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _2282 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_2116)
                            _2283 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2285 = sha3(mem[_2283 + 32 len mem[_2283]])
                            mem[_2282 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2282 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_2282 + 125] = _2285
                            mem[_2282 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_2282 + 72] = 85
                            mem[64] = _2282 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _2285, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _2285, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2282 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_2129) == address(_2116):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2282 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2282 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2282 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2282 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    idx = idx + 1
                    continue 
            else:
                mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 160 len 32 * paths[address(arg2)][address(arg3)].field_0] = call.data[calldata.size len 32 * paths[address(arg2)][address(arg3)].field_0]
                require 0 < paths[address(arg2)][address(arg3)].field_0
                mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 160] = arg1
                idx = 0
                while idx < paths[address(arg2)][address(arg3)].field_0 - 1:
                    require idx < mem[96]
                    _2119 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _2132 = mem[(32 * idx + 1) + 128]
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
                            _2289 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_2132)
                            _2290 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2292 = sha3(mem[_2290 + 32 len mem[_2290]])
                            mem[_2289 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2289 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_2289 + 125] = _2292
                            mem[_2289 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_2289 + 72] = 85
                            mem[64] = _2289 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _2292, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _2292, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2289 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_2119) == address(_2119):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2289 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2289 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2289 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2289 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _2296 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_2119)
                            _2297 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2299 = sha3(mem[_2297 + 32 len mem[_2297]])
                            mem[_2296 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2296 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_2296 + 125] = _2299
                            mem[_2296 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_2296 + 72] = 85
                            mem[64] = _2296 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _2299, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _2299, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2296 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_2119) == address(_2119):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2296 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2296 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2296 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2296 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _2303 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_2132)
                            _2304 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2306 = sha3(mem[_2304 + 32 len mem[_2304]])
                            mem[_2303 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2303 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_2303 + 125] = _2306
                            mem[_2303 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_2303 + 72] = 85
                            mem[64] = _2303 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _2306, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _2306, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2303 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_2132) == address(_2119):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2303 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2303 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2303 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2303 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _2310 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_2119)
                            _2311 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2313 = sha3(mem[_2311 + 32 len mem[_2311]])
                            mem[_2310 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2310 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                            mem[_2310 + 125] = _2313
                            mem[_2310 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_2310 + 72] = 85
                            mem[64] = _2310 + 189
                            require ext_code.size(address(sha3(0, 11157320132538271434, _2313, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, 11157320132538271434, _2313, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2310 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                            if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] <= 0:
                                revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                            if address(_2132) == address(_2119):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2310 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2310 + 291 len 30]
                                if not ext_call.return_data[50 len 14]:
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[18 len 14]
                                else:
                                    require ext_call.return_data[50 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2310 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2310 + 291 len 30]
                                if not ext_call.return_data[18 len 14]:
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = 0 / ext_call.return_data[50 len 14]
                                else:
                                    require ext_call.return_data[18 len 14]
                                    if mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
                                    mem[(32 * idx + 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] = mem[(32 * idx) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]
                    idx = idx + 1
                    continue 
            require mem[96] - 1 < mem[(32 * paths[address(arg2)][address(arg3)].field_0) + 128]
            mem[mem[64]] = mem[(32 * mem[96] - 1) + (32 * paths[address(arg2)][address(arg3)].field_0) + 160]
    return memory
      from mem[64]
       len 32
}



}
