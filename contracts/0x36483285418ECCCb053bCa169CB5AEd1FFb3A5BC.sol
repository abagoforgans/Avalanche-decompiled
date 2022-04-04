contract main {




// =====================  Runtime code  =====================


array of address sub_6338a7c0;
array of struct tokens;
address sub_8d87c4ebAddress;
address sushiswapRouterAddress;
uint256 stor4;
address owner;

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1].field_0
}

function sub_6338a7c0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6338a7c0.length
    return address(sub_6338a7c0[arg1])
}

function sub_8d87c4eb(?) payable {
    return sub_8d87c4ebAddress
}

function owner() payable {
    return owner
}

function sushiswapRouter() payable {
    return sushiswapRouterAddress
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_f7c7724f(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    idx = 0
    s = arg1
    while idx < tokens.length - 1:
        require 0 < mem[96]
        mem[128] = tokens[idx].field_0
        require idx + 1 < tokens.length
        require 1 < mem[96]
        mem[160] = tokens[idx].field_256
        require idx < sub_6338a7c0.length
        mem[0] = 0
        _29 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        s = 0
        while s < 32 * mem[96]:
            mem[mem[64] + s + 196] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(address(sub_6338a7c0[idx]))
        call address(sub_6338a7c0[idx]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (32 * mem[96]) + _29 + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _45 = mem[_44]
        require mem[_44] <= 4294967296
        require mem[_44] + 32 <= return_data.size
        require mem[mem[_44] + _44] <= 4294967296 and mem[_44] + (32 * mem[mem[_44] + _44]) + 32 <= return_data.size
        mem[_44 + ceil32(return_data.size)] = mem[mem[_44] + _44]
        _48 = mem[_45 + _44]
        s = 0
        while s < 32 * _48:
            mem[_44 + ceil32(return_data.size) + s + 32] = mem[_45 + _44 + s + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _48) + _44 + ceil32(return_data.size) + 32
        if 1 < mem[_44 + ceil32(return_data.size)]:
            idx = idx + 1
            s = mem[_44 + ceil32(return_data.size) + 64]
            continue 
        revert
    return s
}

function sub_25fafccc(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require msg.sender == owner
    tokens.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while tokens.length > idx:
            tokens[idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_6338a7c0.length = ('cd', 68).length
        mem[0] = 0
        if not ('cd', 68).length:
            idx = 0
            while sub_6338a7c0.length > idx:
                uint256(sub_6338a7c0[idx]) = 0
                idx = idx + 1
                continue 
            idx = 1
            while idx < tokens.length:
                require idx - 1 < tokens.length
                require idx - 1 < sub_6338a7c0.length
                mem[0] = 0
                mem[100] = this.address
                mem[132] = address(sub_6338a7c0[idx])
                require ext_code.size(tokens[idx].field_0)
                staticcall tokens[idx].field_0.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_6338a7c0[idx])
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require idx - 1 < tokens.length
                    require idx - 1 < sub_6338a7c0.length
                    mem[0] = 0
                    mem[100] = address(sub_6338a7c0[idx])
                    mem[132] = stor4
                    require ext_code.size(tokens[idx].field_0)
                    call tokens[idx].field_0.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_6338a7c0[idx]), stor4
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                idx = idx + 1
                continue 
            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0x39cf1bd5f15fb22ec3d9ff86b0727afc203427cc, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                revert with 0, 'This pool does not exist'
            if not cd[100]:
                mem[96] = 2
                mem[64] = 192
                mem[128 len 64] = call.data[calldata.size len 64]
                idx = 0
                s = cd[4]
                while idx < tokens.length - 1:
                    require 0 < mem[96]
                    mem[128] = tokens[idx].field_0
                    require idx + 1 < tokens.length
                    require 1 < mem[96]
                    mem[160] = tokens[idx].field_256
                    require idx < sub_6338a7c0.length
                    mem[0] = 0
                    _1016 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[mem[64] + s + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(address(sub_6338a7c0[idx]))
                    call address(sub_6338a7c0[idx]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _1016 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1219 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1226 = mem[_1219]
                    require mem[_1219] <= 4294967296
                    require mem[_1219] + 32 <= return_data.size
                    require mem[mem[_1219] + _1219] <= 4294967296 and mem[_1219] + (32 * mem[mem[_1219] + _1219]) + 32 <= return_data.size
                    mem[_1219 + ceil32(return_data.size)] = mem[mem[_1219] + _1219]
                    _1254 = mem[_1226 + _1219]
                    s = 0
                    while s < 32 * _1254:
                        mem[_1219 + ceil32(return_data.size) + s + 32] = mem[_1226 + _1219 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1254) + _1219 + ceil32(return_data.size) + 32
                    if 1 < mem[_1219 + ceil32(return_data.size)]:
                        idx = idx + 1
                        s = mem[_1219 + ceil32(return_data.size) + 64]
                        continue 
                    revert
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, cd[4], address(this.address), 128, 9, Mask(72, 0, 'not empty')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < ('cd', 36).length
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            s = 0
            idx = cd[68] + 36
            while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                address(sub_6338a7c0[s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
            while sub_6338a7c0.length > idx:
                uint256(sub_6338a7c0[idx]) = 0
                idx = idx + 1
                continue 
            idx = 1
            while idx < tokens.length:
                require idx - 1 < tokens.length
                require idx - 1 < sub_6338a7c0.length
                mem[0] = 0
                mem[100] = this.address
                mem[132] = address(sub_6338a7c0[idx])
                require ext_code.size(tokens[idx].field_0)
                staticcall tokens[idx].field_0.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_6338a7c0[idx])
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require idx - 1 < tokens.length
                    require idx - 1 < sub_6338a7c0.length
                    mem[0] = 0
                    mem[100] = address(sub_6338a7c0[idx])
                    mem[132] = stor4
                    require ext_code.size(tokens[idx].field_0)
                    call tokens[idx].field_0.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_6338a7c0[idx]), stor4
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                idx = idx + 1
                continue 
            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0x39cf1bd5f15fb22ec3d9ff86b0727afc203427cc, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                revert with 0, 'This pool does not exist'
            if not cd[100]:
                mem[96] = 2
                mem[64] = 192
                mem[128 len 64] = call.data[calldata.size len 64]
                idx = 0
                s = cd[4]
                while idx < tokens.length - 1:
                    require 0 < mem[96]
                    mem[128] = tokens[idx].field_0
                    require idx + 1 < tokens.length
                    require 1 < mem[96]
                    mem[160] = tokens[idx].field_256
                    require idx < sub_6338a7c0.length
                    mem[0] = 0
                    _1238 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[mem[64] + s + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(address(sub_6338a7c0[idx]))
                    call address(sub_6338a7c0[idx]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _1238 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1363 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1366 = mem[_1363]
                    require mem[_1363] <= 4294967296
                    require mem[_1363] + 32 <= return_data.size
                    require mem[mem[_1363] + _1363] <= 4294967296 and mem[_1363] + (32 * mem[mem[_1363] + _1363]) + 32 <= return_data.size
                    mem[_1363 + ceil32(return_data.size)] = mem[mem[_1363] + _1363]
                    _1380 = mem[_1366 + _1363]
                    s = 0
                    while s < 32 * _1380:
                        mem[_1363 + ceil32(return_data.size) + s + 32] = mem[_1366 + _1363 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1380) + _1363 + ceil32(return_data.size) + 32
                    if 1 < mem[_1363 + ceil32(return_data.size)]:
                        idx = idx + 1
                        s = mem[_1363 + ceil32(return_data.size) + 64]
                        continue 
                    revert
            else:
                var41001 = 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, cd[4], address(this.address), 128, 9, Mask(72, 0, 'not empty')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < ('cd', 36).length
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            tokens[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while tokens.length > idx:
            tokens[idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_6338a7c0.length = ('cd', 68).length
        mem[0] = 0
        if not ('cd', 68).length:
            idx = 0
            while sub_6338a7c0.length > idx:
                uint256(sub_6338a7c0[idx]) = 0
                idx = idx + 1
                continue 
            idx = 1
            while idx < tokens.length:
                require idx - 1 < tokens.length
                require idx - 1 < sub_6338a7c0.length
                mem[0] = 0
                mem[100] = this.address
                mem[132] = address(sub_6338a7c0[idx])
                require ext_code.size(tokens[idx].field_0)
                staticcall tokens[idx].field_0.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_6338a7c0[idx])
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require idx - 1 < tokens.length
                    require idx - 1 < sub_6338a7c0.length
                    mem[0] = 0
                    mem[100] = address(sub_6338a7c0[idx])
                    mem[132] = stor4
                    require ext_code.size(tokens[idx].field_0)
                    call tokens[idx].field_0.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_6338a7c0[idx]), stor4
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                idx = idx + 1
                continue 
            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0x39cf1bd5f15fb22ec3d9ff86b0727afc203427cc, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                revert with 0, 'This pool does not exist'
            if not cd[100]:
                mem[96] = 2
                mem[64] = 192
                mem[128 len 64] = call.data[calldata.size len 64]
                idx = 0
                s = cd[4]
                while idx < tokens.length - 1:
                    require 0 < mem[96]
                    mem[128] = tokens[idx].field_0
                    require idx + 1 < tokens.length
                    require 1 < mem[96]
                    mem[160] = tokens[idx].field_256
                    require idx < sub_6338a7c0.length
                    mem[0] = 0
                    _1244 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[mem[64] + s + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(address(sub_6338a7c0[idx]))
                    call address(sub_6338a7c0[idx]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _1244 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1364 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1368 = mem[_1364]
                    require mem[_1364] <= 4294967296
                    require mem[_1364] + 32 <= return_data.size
                    require mem[mem[_1364] + _1364] <= 4294967296 and mem[_1364] + (32 * mem[mem[_1364] + _1364]) + 32 <= return_data.size
                    mem[_1364 + ceil32(return_data.size)] = mem[mem[_1364] + _1364]
                    _1381 = mem[_1368 + _1364]
                    s = 0
                    while s < 32 * _1381:
                        mem[_1364 + ceil32(return_data.size) + s + 32] = mem[_1368 + _1364 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1381) + _1364 + ceil32(return_data.size) + 32
                    if 1 < mem[_1364 + ceil32(return_data.size)]:
                        idx = idx + 1
                        s = mem[_1364 + ceil32(return_data.size) + 64]
                        continue 
                    revert
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, cd[4], address(this.address), 128, 9, Mask(72, 0, 'not empty')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < ('cd', 36).length
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            s = 0
            idx = cd[68] + 36
            while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                address(sub_6338a7c0[s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
            while sub_6338a7c0.length > idx:
                uint256(sub_6338a7c0[idx]) = 0
                idx = idx + 1
                continue 
            idx = 1
            while idx < tokens.length:
                require idx - 1 < tokens.length
                require idx - 1 < sub_6338a7c0.length
                mem[0] = 0
                mem[100] = this.address
                mem[132] = address(sub_6338a7c0[idx])
                require ext_code.size(tokens[idx].field_0)
                staticcall tokens[idx].field_0.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_6338a7c0[idx])
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require idx - 1 < tokens.length
                    require idx - 1 < sub_6338a7c0.length
                    mem[0] = 0
                    mem[100] = address(sub_6338a7c0[idx])
                    mem[132] = stor4
                    require ext_code.size(tokens[idx].field_0)
                    call tokens[idx].field_0.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_6338a7c0[idx]), stor4
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                idx = idx + 1
                continue 
            require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
            staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0x39cf1bd5f15fb22ec3d9ff86b0727afc203427cc, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                revert with 0, 'This pool does not exist'
            if not cd[100]:
                mem[96] = 2
                mem[64] = 192
                mem[128 len 64] = call.data[calldata.size len 64]
                idx = 0
                s = cd[4]
                while idx < tokens.length - 1:
                    require 0 < mem[96]
                    mem[128] = tokens[idx].field_0
                    require idx + 1 < tokens.length
                    require 1 < mem[96]
                    mem[160] = tokens[idx].field_256
                    require idx < sub_6338a7c0.length
                    mem[0] = 0
                    _1375 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[mem[64] + s + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(address(sub_6338a7c0[idx]))
                    call address(sub_6338a7c0[idx]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _1375 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1420 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1421 = mem[_1420]
                    require mem[_1420] <= 4294967296
                    require mem[_1420] + 32 <= return_data.size
                    require mem[mem[_1420] + _1420] <= 4294967296 and mem[_1420] + (32 * mem[mem[_1420] + _1420]) + 32 <= return_data.size
                    mem[_1420 + ceil32(return_data.size)] = mem[mem[_1420] + _1420]
                    _1424 = mem[_1421 + _1420]
                    s = 0
                    while s < 32 * _1424:
                        mem[_1420 + ceil32(return_data.size) + s + 32] = mem[_1421 + _1420 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1424) + _1420 + ceil32(return_data.size) + 32
                    if 1 < mem[_1420 + ceil32(return_data.size)]:
                        idx = idx + 1
                        s = mem[_1420 + ceil32(return_data.size) + 64]
                        continue 
                    revert
            else:
                var45001 = 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, cd[4], address(this.address), 128, 9, Mask(72, 0, 'not empty')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < ('cd', 36).length
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 5
    mem[128] = 'bor: '
    if arg2:
        mem[228] = arg2
        mem[196] = 64
        mem[260] = 5
        mem[292] = 'bor: ' % 1099511627776
        mem[160] = 132
        mem[196 len 28] = 0
        mem[192 len 4] = 2534451664
        staticcall 'console.log'.0x9710a9d0 with:
                gas gas_remaining wei
               args 0, 64, arg2, 5, 'bor: ' % 1099511627776
        if not arg2:
            mem[324] = 2
            mem[64] = 420
            mem[356 len 64] = call.data[calldata.size len 64]
            idx = 0
            s = arg2
            while idx < tokens.length - 1:
                require 0 < mem[324]
                mem[356] = tokens[idx].field_0
                require idx + 1 < tokens.length
                require 1 < mem[324]
                mem[388] = tokens[idx].field_256
                require idx < sub_6338a7c0.length
                mem[0] = 0
                _6842 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[324]
                _6844 = mem[324]
                s = 0
                while s < 32 * _6844:
                    mem[mem[64] + s + 196] = mem[s + 356]
                    s = s + 32
                    continue 
                require ext_code.size(address(sub_6338a7c0[idx]))
                call address(sub_6338a7c0[idx]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _6844) + _6842 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10329 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10371 = mem[_10329]
                require mem[_10329] <= 4294967296
                require mem[_10329] + 32 <= return_data.size
                require mem[mem[_10329] + _10329] <= 4294967296 and mem[_10329] + (32 * mem[mem[_10329] + _10329]) + 32 <= return_data.size
                mem[_10329 + ceil32(return_data.size)] = mem[mem[_10329] + _10329]
                _10577 = mem[_10371 + _10329]
                s = 0
                while s < 32 * _10577:
                    mem[_10329 + ceil32(return_data.size) + s + 32] = mem[_10371 + _10329 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _10577) + _10329 + ceil32(return_data.size) + 32
                if 1 < mem[_10329 + ceil32(return_data.size)]:
                    idx = idx + 1
                    s = mem[_10329 + ceil32(return_data.size) + 64]
                    continue 
                revert
            if not arg2:
                _6939 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6939] = 5
                mem[_6939 + 32] = 'add: '
                mem[mem[64] + 68] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 5
                mem[mem[64] + 132] = 'add: ' % 1099511627776
                _10324 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                staticcall 'console.log'.log(string rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[_10324 + 36 len mem[_10324] - 4]
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, 1, 5, 'owe: ' % 1099511627776
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, s, 5, 'out: ' % 1099511627776
                if 1 >= s:
                    revert with 0, 'Not enough profit'
            else:
                require arg2
                if 1000 * arg2 / arg2 != 1000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (1000 * arg2 / 997) + 1 < 1000 * arg2 / 997:
                    revert with 0, 'SafeMath: addition overflow'
                _7033 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7033] = 5
                mem[_7033 + 32] = 'add: '
                mem[mem[64] + 68] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 5
                mem[mem[64] + 132] = 'add: ' % 1099511627776
                _10327 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                staticcall 'console.log'.log(string rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[_10327 + 36 len mem[_10327] - 4]
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, (1000 * arg2 / 997) + 1, 5, 'owe: ' % 1099511627776
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, s, 5, 'out: ' % 1099511627776
                if (1000 * arg2 / 997) + 1 >= s:
                    revert with 0, 'Not enough profit'
        else:
            require not arg3
            mem[324] = 2
            mem[64] = 420
            mem[356 len 64] = call.data[calldata.size len 64]
            idx = 0
            s = arg2
            while idx < tokens.length - 1:
                require 0 < mem[324]
                mem[356] = tokens[idx].field_0
                require idx + 1 < tokens.length
                require 1 < mem[324]
                mem[388] = tokens[idx].field_256
                require idx < sub_6338a7c0.length
                mem[0] = 0
                _6846 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[324]
                _6848 = mem[324]
                s = 0
                while s < 32 * _6848:
                    mem[mem[64] + s + 196] = mem[s + 356]
                    s = s + 32
                    continue 
                require ext_code.size(address(sub_6338a7c0[idx]))
                call address(sub_6338a7c0[idx]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _6848) + _6846 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10336 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10375 = mem[_10336]
                require mem[_10336] <= 4294967296
                require mem[_10336] + 32 <= return_data.size
                require mem[mem[_10336] + _10336] <= 4294967296 and mem[_10336] + (32 * mem[mem[_10336] + _10336]) + 32 <= return_data.size
                mem[_10336 + ceil32(return_data.size)] = mem[mem[_10336] + _10336]
                _10584 = mem[_10375 + _10336]
                s = 0
                while s < 32 * _10584:
                    mem[_10336 + ceil32(return_data.size) + s + 32] = mem[_10375 + _10336 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _10584) + _10336 + ceil32(return_data.size) + 32
                if 1 < mem[_10336 + ceil32(return_data.size)]:
                    idx = idx + 1
                    s = mem[_10336 + ceil32(return_data.size) + 64]
                    continue 
                revert
            if not arg2:
                _6940 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6940] = 5
                mem[_6940 + 32] = 'add: '
                mem[mem[64] + 68] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 5
                mem[mem[64] + 132] = 'add: ' % 1099511627776
                _10331 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                staticcall 'console.log'.log(string rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[_10331 + 36 len mem[_10331] - 4]
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, 1, 5, 'owe: ' % 1099511627776
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, s, 5, 'out: ' % 1099511627776
                if 1 >= s:
                    revert with 0, 'Not enough profit'
            else:
                require arg2
                if 1000 * arg2 / arg2 != 1000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (1000 * arg2 / 997) + 1 < 1000 * arg2 / 997:
                    revert with 0, 'SafeMath: addition overflow'
                _7035 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7035] = 5
                mem[_7035 + 32] = 'add: '
                mem[mem[64] + 68] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 5
                mem[mem[64] + 132] = 'add: ' % 1099511627776
                _10334 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                staticcall 'console.log'.log(string rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[_10334 + 36 len mem[_10334] - 4]
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, (1000 * arg2 / 997) + 1, 5, 'owe: ' % 1099511627776
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, s, 5, 'out: ' % 1099511627776
                if (1000 * arg2 / 997) + 1 >= s:
                    revert with 0, 'Not enough profit'
    else:
        mem[228] = arg3
        mem[196] = 64
        mem[260] = 5
        mem[292] = 'bor: ' % 1099511627776
        mem[160] = 132
        mem[196 len 28] = 0
        mem[192 len 4] = 2534451664
        staticcall 'console.log'.0x9710a9d0 with:
                gas gas_remaining wei
               args 0, 64, arg3, 5, 'bor: ' % 1099511627776
        if not arg2:
            mem[324] = 2
            mem[64] = 420
            mem[356 len 64] = call.data[calldata.size len 64]
            idx = 0
            s = arg3
            while idx < tokens.length - 1:
                require 0 < mem[324]
                mem[356] = tokens[idx].field_0
                require idx + 1 < tokens.length
                require 1 < mem[324]
                mem[388] = tokens[idx].field_256
                require idx < sub_6338a7c0.length
                mem[0] = 0
                _6826 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[324]
                _6828 = mem[324]
                s = 0
                while s < 32 * _6828:
                    mem[mem[64] + s + 196] = mem[s + 356]
                    s = s + 32
                    continue 
                require ext_code.size(address(sub_6338a7c0[idx]))
                call address(sub_6338a7c0[idx]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _6828) + _6826 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10295 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10353 = mem[_10295]
                require mem[_10295] <= 4294967296
                require mem[_10295] + 32 <= return_data.size
                require mem[mem[_10295] + _10295] <= 4294967296 and mem[_10295] + (32 * mem[mem[_10295] + _10295]) + 32 <= return_data.size
                mem[_10295 + ceil32(return_data.size)] = mem[mem[_10295] + _10295]
                _10543 = mem[_10353 + _10295]
                s = 0
                while s < 32 * _10543:
                    mem[_10295 + ceil32(return_data.size) + s + 32] = mem[_10353 + _10295 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _10543) + _10295 + ceil32(return_data.size) + 32
                if 1 < mem[_10295 + ceil32(return_data.size)]:
                    idx = idx + 1
                    s = mem[_10295 + ceil32(return_data.size) + 64]
                    continue 
                revert
            if not arg2:
                if not arg3:
                    _6933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6933] = 5
                    mem[_6933 + 32] = 'add: '
                    mem[mem[64] + 68] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 5
                    mem[mem[64] + 132] = 'add: ' % 1099511627776
                    _10287 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    staticcall 'console.log'.log(string rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[_10287 + 36 len mem[_10287] - 4]
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, 1, 5, 'owe: ' % 1099511627776
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, s, 5, 'out: ' % 1099511627776
                    if 1 >= s:
                        revert with 0, 'Not enough profit'
                else:
                    require arg3
                    if 1000 * arg3 / arg3 != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (1000 * arg3 / 997) + 1 < 1000 * arg3 / 997:
                        revert with 0, 'SafeMath: addition overflow'
                    _7023 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7023] = 5
                    mem[_7023 + 32] = 'add: '
                    mem[mem[64] + 68] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 5
                    mem[mem[64] + 132] = 'add: ' % 1099511627776
                    _10284 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    staticcall 'console.log'.log(string rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[_10284 + 36 len mem[_10284] - 4]
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, (1000 * arg3 / 997) + 1, 5, 'owe: ' % 1099511627776
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, s, 5, 'out: ' % 1099511627776
                    if (1000 * arg3 / 997) + 1 >= s:
                        revert with 0, 'Not enough profit'
            else:
                if not arg3:
                    _6934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6934] = 5
                    mem[_6934 + 32] = 'add: '
                    mem[mem[64] + 68] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 5
                    mem[mem[64] + 132] = 'add: ' % 1099511627776
                    _10293 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    staticcall 'console.log'.log(string rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[_10293 + 36 len mem[_10293] - 4]
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, 1, 5, 'owe: ' % 1099511627776
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, s, 5, 'out: ' % 1099511627776
                    if 1 >= s:
                        revert with 0, 'Not enough profit'
                else:
                    require arg3
                    if 1000 * arg3 / arg3 != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (1000 * arg3 / 997) + 1 < 1000 * arg3 / 997:
                        revert with 0, 'SafeMath: addition overflow'
                    _7024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7024] = 5
                    mem[_7024 + 32] = 'add: '
                    mem[mem[64] + 68] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 5
                    mem[mem[64] + 132] = 'add: ' % 1099511627776
                    _10290 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    staticcall 'console.log'.log(string rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[_10290 + 36 len mem[_10290] - 4]
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, (1000 * arg3 / 997) + 1, 5, 'owe: ' % 1099511627776
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, s, 5, 'out: ' % 1099511627776
                    if (1000 * arg3 / 997) + 1 >= s:
                        revert with 0, 'Not enough profit'
        else:
            require not arg3
            mem[324] = 2
            mem[64] = 420
            mem[356 len 64] = call.data[calldata.size len 64]
            idx = 0
            s = arg3
            while idx < tokens.length - 1:
                require 0 < mem[324]
                mem[356] = tokens[idx].field_0
                require idx + 1 < tokens.length
                require 1 < mem[324]
                mem[388] = tokens[idx].field_256
                require idx < sub_6338a7c0.length
                mem[0] = 0
                _6830 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[324]
                _6832 = mem[324]
                s = 0
                while s < 32 * _6832:
                    mem[mem[64] + s + 196] = mem[s + 356]
                    s = s + 32
                    continue 
                require ext_code.size(address(sub_6338a7c0[idx]))
                call address(sub_6338a7c0[idx]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _6832) + _6830 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10308 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10359 = mem[_10308]
                require mem[_10308] <= 4294967296
                require mem[_10308] + 32 <= return_data.size
                require mem[mem[_10308] + _10308] <= 4294967296 and mem[_10308] + (32 * mem[mem[_10308] + _10308]) + 32 <= return_data.size
                mem[_10308 + ceil32(return_data.size)] = mem[mem[_10308] + _10308]
                _10556 = mem[_10359 + _10308]
                s = 0
                while s < 32 * _10556:
                    mem[_10308 + ceil32(return_data.size) + s + 32] = mem[_10359 + _10308 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _10556) + _10308 + ceil32(return_data.size) + 32
                if 1 < mem[_10308 + ceil32(return_data.size)]:
                    idx = idx + 1
                    s = mem[_10308 + ceil32(return_data.size) + 64]
                    continue 
                revert
            if not arg2:
                if not arg3:
                    _6935 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6935] = 5
                    mem[_6935 + 32] = 'add: '
                    mem[mem[64] + 68] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 5
                    mem[mem[64] + 132] = 'add: ' % 1099511627776
                    _10300 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    staticcall 'console.log'.log(string rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[_10300 + 36 len mem[_10300] - 4]
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, 1, 5, 'owe: ' % 1099511627776
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, s, 5, 'out: ' % 1099511627776
                    if 1 >= s:
                        revert with 0, 'Not enough profit'
                else:
                    require arg3
                    if 1000 * arg3 / arg3 != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (1000 * arg3 / 997) + 1 < 1000 * arg3 / 997:
                        revert with 0, 'SafeMath: addition overflow'
                    _7026 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7026] = 5
                    mem[_7026 + 32] = 'add: '
                    mem[mem[64] + 68] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 5
                    mem[mem[64] + 132] = 'add: ' % 1099511627776
                    _10297 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    staticcall 'console.log'.log(string rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[_10297 + 36 len mem[_10297] - 4]
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, (1000 * arg3 / 997) + 1, 5, 'owe: ' % 1099511627776
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, s, 5, 'out: ' % 1099511627776
                    if (1000 * arg3 / 997) + 1 >= s:
                        revert with 0, 'Not enough profit'
            else:
                if not arg3:
                    _6936 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6936] = 5
                    mem[_6936 + 32] = 'add: '
                    mem[mem[64] + 68] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 5
                    mem[mem[64] + 132] = 'add: ' % 1099511627776
                    _10306 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    staticcall 'console.log'.log(string rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[_10306 + 36 len mem[_10306] - 4]
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, 1, 5, 'owe: ' % 1099511627776
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, s, 5, 'out: ' % 1099511627776
                    if 1 >= s:
                        revert with 0, 'Not enough profit'
                else:
                    require arg3
                    if 1000 * arg3 / arg3 != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (1000 * arg3 / 997) + 1 < 1000 * arg3 / 997:
                        revert with 0, 'SafeMath: addition overflow'
                    _7027 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7027] = 5
                    mem[_7027 + 32] = 'add: '
                    mem[mem[64] + 68] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 5
                    mem[mem[64] + 132] = 'add: ' % 1099511627776
                    _10303 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    staticcall 'console.log'.log(string rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[_10303 + 36 len mem[_10303] - 4]
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, (1000 * arg3 / 997) + 1, 5, 'owe: ' % 1099511627776
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, s, 5, 'out: ' % 1099511627776
                    if (1000 * arg3 / 997) + 1 >= s:
                        revert with 0, 'Not enough profit'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
