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

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if not arg2:
        mem[96] = 2
        mem[64] = 192
        mem[128 len 64] = call.data[calldata.size len 64]
        idx = 0
        s = arg3
        while idx < tokens.length - 1:
            require 0 < mem[96]
            mem[128] = tokens[idx].field_0
            require idx + 1 < tokens.length
            require 1 < mem[96]
            mem[160] = tokens[idx].field_256
            require idx < sub_6338a7c0.length
            mem[0] = 0
            _90 = mem[64]
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
                args mem[mem[64] + 4 len (32 * mem[96]) + _90 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _151 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _153 = mem[_151]
            require mem[_151] <= 4294967296
            require mem[_151] + 32 <= return_data.size
            require mem[mem[_151] + _151] <= 4294967296 and mem[_151] + (32 * mem[mem[_151] + _151]) + 32 <= return_data.size
            mem[_151 + ceil32(return_data.size)] = mem[mem[_151] + _151]
            _159 = mem[_153 + _151]
            s = 0
            while s < 32 * _159:
                mem[_151 + ceil32(return_data.size) + s + 32] = mem[_153 + _151 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _159) + _151 + ceil32(return_data.size) + 32
            if 1 < mem[_151 + ceil32(return_data.size)]:
                idx = idx + 1
                s = mem[_151 + ceil32(return_data.size) + 64]
                continue 
            revert
        if not arg3:
            if 1 >= s:
                revert with 0, 'Not enough profit'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 1
        else:
            require arg3
            if 1000 * arg3 / arg3 != 1000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (1000 * arg3 / 997) + 1 < 1000 * arg3 / 997:
                revert with 0, 'SafeMath: addition overflow'
            if (1000 * arg3 / 997) + 1 >= s:
                revert with 0, 'Not enough profit'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * arg3 / 997) + 1
    else:
        require not arg3
        mem[96] = 2
        mem[64] = 192
        mem[128 len 64] = call.data[calldata.size len 64]
        idx = 0
        s = arg2
        while idx < tokens.length - 1:
            require 0 < mem[96]
            mem[128] = tokens[idx].field_0
            require idx + 1 < tokens.length
            require 1 < mem[96]
            mem[160] = tokens[idx].field_256
            require idx < sub_6338a7c0.length
            mem[0] = 0
            _96 = mem[64]
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
                args mem[mem[64] + 4 len (32 * mem[96]) + _96 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _152 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _155 = mem[_152]
            require mem[_152] <= 4294967296
            require mem[_152] + 32 <= return_data.size
            require mem[mem[_152] + _152] <= 4294967296 and mem[_152] + (32 * mem[mem[_152] + _152]) + 32 <= return_data.size
            mem[_152 + ceil32(return_data.size)] = mem[mem[_152] + _152]
            _160 = mem[_155 + _152]
            s = 0
            while s < 32 * _160:
                mem[_152 + ceil32(return_data.size) + s + 32] = mem[_155 + _152 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _160) + _152 + ceil32(return_data.size) + 32
            if 1 < mem[_152 + ceil32(return_data.size)]:
                idx = idx + 1
                s = mem[_152 + ceil32(return_data.size) + 64]
                continue 
            revert
        if not arg2:
            if 1 >= s:
                revert with 0, 'Not enough profit'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 1
        else:
            require arg2
            if 1000 * arg2 / arg2 != 1000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (1000 * arg2 / 997) + 1 < 1000 * arg2 / 997:
                revert with 0, 'SafeMath: addition overflow'
            if (1000 * arg2 / 997) + 1 >= s:
                revert with 0, 'Not enough profit'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * arg2 / 997) + 1
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
    if not arg2:
        mem[96] = 2
        mem[64] = 192
        mem[128 len 64] = call.data[calldata.size len 64]
        idx = 0
        s = arg3
        while idx < tokens.length - 1:
            require 0 < mem[96]
            mem[128] = tokens[idx].field_0
            require idx + 1 < tokens.length
            require 1 < mem[96]
            mem[160] = tokens[idx].field_256
            require idx < sub_6338a7c0.length
            mem[0] = 0
            _90 = mem[64]
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
                args mem[mem[64] + 4 len (32 * mem[96]) + _90 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _151 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _153 = mem[_151]
            require mem[_151] <= 4294967296
            require mem[_151] + 32 <= return_data.size
            require mem[mem[_151] + _151] <= 4294967296 and mem[_151] + (32 * mem[mem[_151] + _151]) + 32 <= return_data.size
            mem[_151 + ceil32(return_data.size)] = mem[mem[_151] + _151]
            _159 = mem[_153 + _151]
            s = 0
            while s < 32 * _159:
                mem[_151 + ceil32(return_data.size) + s + 32] = mem[_153 + _151 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _159) + _151 + ceil32(return_data.size) + 32
            if 1 < mem[_151 + ceil32(return_data.size)]:
                idx = idx + 1
                s = mem[_151 + ceil32(return_data.size) + 64]
                continue 
            revert
        if not arg3:
            if 1 >= s:
                revert with 0, 'Not enough profit'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 1
        else:
            require arg3
            if 1000 * arg3 / arg3 != 1000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (1000 * arg3 / 997) + 1 < 1000 * arg3 / 997:
                revert with 0, 'SafeMath: addition overflow'
            if (1000 * arg3 / 997) + 1 >= s:
                revert with 0, 'Not enough profit'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * arg3 / 997) + 1
    else:
        require not arg3
        mem[96] = 2
        mem[64] = 192
        mem[128 len 64] = call.data[calldata.size len 64]
        idx = 0
        s = arg2
        while idx < tokens.length - 1:
            require 0 < mem[96]
            mem[128] = tokens[idx].field_0
            require idx + 1 < tokens.length
            require 1 < mem[96]
            mem[160] = tokens[idx].field_256
            require idx < sub_6338a7c0.length
            mem[0] = 0
            _96 = mem[64]
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
                args mem[mem[64] + 4 len (32 * mem[96]) + _96 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _152 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _155 = mem[_152]
            require mem[_152] <= 4294967296
            require mem[_152] + 32 <= return_data.size
            require mem[mem[_152] + _152] <= 4294967296 and mem[_152] + (32 * mem[mem[_152] + _152]) + 32 <= return_data.size
            mem[_152 + ceil32(return_data.size)] = mem[mem[_152] + _152]
            _160 = mem[_155 + _152]
            s = 0
            while s < 32 * _160:
                mem[_152 + ceil32(return_data.size) + s + 32] = mem[_155 + _152 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _160) + _152 + ceil32(return_data.size) + 32
            if 1 < mem[_152 + ceil32(return_data.size)]:
                idx = idx + 1
                s = mem[_152 + ceil32(return_data.size) + 64]
                continue 
            revert
        if not arg2:
            if 1 >= s:
                revert with 0, 'Not enough profit'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 1
        else:
            require arg2
            if 1000 * arg2 / arg2 != 1000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (1000 * arg2 / 997) + 1 < 1000 * arg2 / 997:
                revert with 0, 'SafeMath: addition overflow'
            if (1000 * arg2 / 997) + 1 >= s:
                revert with 0, 'Not enough profit'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * arg2 / 997) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_bccad8d3(?) payable {
    require calldata.size - 4 >= 160
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
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not cd[132]:
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
                    _924 = mem[64]
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _924 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1099 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1108 = mem[_1099]
                    require mem[_1099] <= 4294967296
                    require mem[_1099] + 32 <= return_data.size
                    require mem[mem[_1099] + _1099] <= 4294967296 and mem[_1099] + (32 * mem[mem[_1099] + _1099]) + 32 <= return_data.size
                    mem[_1099 + ceil32(return_data.size)] = mem[mem[_1099] + _1099]
                    _1129 = mem[_1108 + _1099]
                    s = 0
                    while s < 32 * _1129:
                        mem[_1099 + ceil32(return_data.size) + s + 32] = mem[_1108 + _1099 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1129) + _1099 + ceil32(return_data.size) + 32
                    if 1 < mem[_1099 + ceil32(return_data.size)]:
                        idx = idx + 1
                        s = mem[_1099 + ceil32(return_data.size) + 64]
                        continue 
                    revert
            else:
                require 0 < ('cd', 36).length
                idx = 32
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) != address(('cd', 36)[0]):
                    call address(cd[100]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, cd[4], address(this.address), 128, 9, Mask(72, 0, 'not empty')
                else:
                    call address(cd[100]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args cd[4], 0, address(this.address), 128, 9, Mask(72, 0, 'not empty')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not cd[132]:
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
                    _1120 = mem[64]
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _1120 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1210 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1214 = mem[_1210]
                    require mem[_1210] <= 4294967296
                    require mem[_1210] + 32 <= return_data.size
                    require mem[mem[_1210] + _1210] <= 4294967296 and mem[_1210] + (32 * mem[mem[_1210] + _1210]) + 32 <= return_data.size
                    mem[_1210 + ceil32(return_data.size)] = mem[mem[_1210] + _1210]
                    _1226 = mem[_1214 + _1210]
                    s = 0
                    while s < 32 * _1226:
                        mem[_1210 + ceil32(return_data.size) + s + 32] = mem[_1214 + _1210 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1226) + _1210 + ceil32(return_data.size) + 32
                    if 1 < mem[_1210 + ceil32(return_data.size)]:
                        idx = idx + 1
                        s = mem[_1210 + ceil32(return_data.size) + 64]
                        continue 
                    revert
            else:
                require 0 < ('cd', 36).length
                idx = 32
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) != address(('cd', 36)[0]):
                    call address(cd[100]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, cd[4], address(this.address), 128, 9, Mask(72, 0, 'not empty')
                else:
                    call address(cd[100]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args cd[4], 0, address(this.address), 128, 9, Mask(72, 0, 'not empty')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not cd[132]:
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
                    _1124 = mem[64]
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _1124 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1211 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1216 = mem[_1211]
                    require mem[_1211] <= 4294967296
                    require mem[_1211] + 32 <= return_data.size
                    require mem[mem[_1211] + _1211] <= 4294967296 and mem[_1211] + (32 * mem[mem[_1211] + _1211]) + 32 <= return_data.size
                    mem[_1211 + ceil32(return_data.size)] = mem[mem[_1211] + _1211]
                    _1227 = mem[_1216 + _1211]
                    s = 0
                    while s < 32 * _1227:
                        mem[_1211 + ceil32(return_data.size) + s + 32] = mem[_1216 + _1211 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1227) + _1211 + ceil32(return_data.size) + 32
                    if 1 < mem[_1211 + ceil32(return_data.size)]:
                        idx = idx + 1
                        s = mem[_1211 + ceil32(return_data.size) + 64]
                        continue 
                    revert
            else:
                require 0 < ('cd', 36).length
                idx = 32
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) != address(('cd', 36)[0]):
                    call address(cd[100]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, cd[4], address(this.address), 128, 9, Mask(72, 0, 'not empty')
                else:
                    call address(cd[100]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args cd[4], 0, address(this.address), 128, 9, Mask(72, 0, 'not empty')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not cd[132]:
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
                    _1223 = mem[64]
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
                        args mem[mem[64] + 4 len (32 * mem[96]) + _1223 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1252 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1253 = mem[_1252]
                    require mem[_1252] <= 4294967296
                    require mem[_1252] + 32 <= return_data.size
                    require mem[mem[_1252] + _1252] <= 4294967296 and mem[_1252] + (32 * mem[mem[_1252] + _1252]) + 32 <= return_data.size
                    mem[_1252 + ceil32(return_data.size)] = mem[mem[_1252] + _1252]
                    _1256 = mem[_1253 + _1252]
                    s = 0
                    while s < 32 * _1256:
                        mem[_1252 + ceil32(return_data.size) + s + 32] = mem[_1253 + _1252 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1256) + _1252 + ceil32(return_data.size) + 32
                    if 1 < mem[_1252 + ceil32(return_data.size)]:
                        idx = idx + 1
                        s = mem[_1252 + ceil32(return_data.size) + 64]
                        continue 
                    revert
            else:
                require 0 < ('cd', 36).length
                idx = 32
                require ext_code.size(address(cd[100]))
                if address(ext_call.return_data[0]) != address(('cd', 36)[0]):
                    call address(cd[100]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, cd[4], address(this.address), 128, 9, Mask(72, 0, 'not empty')
                else:
                    call address(cd[100]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args cd[4], 0, address(this.address), 128, 9, Mask(72, 0, 'not empty')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
