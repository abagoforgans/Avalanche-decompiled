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
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_f7c7724f(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
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
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        t = 0
        while t < 32 * mem[96]:
            mem[mem[64] + t + 196] = mem[t + 128]
            t = t + 32
            continue 
        require ext_code.size(address(sub_6338a7c0[idx]))
        call address(sub_6338a7c0[idx]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args s, 1, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _48 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _49 = mem[_48]
        require mem[_48] <= 4294967296
        require mem[_48] + 32 <= return_data.size
        require mem[mem[_48] + _48] <= 4294967296 and mem[_48] + (32 * mem[mem[_48] + _48]) + 32 <= return_data.size
        mem[_48 + ceil32(return_data.size)] = mem[mem[_48] + _48]
        _52 = mem[_49 + _48]
        s = 0
        while s < 32 * _52:
            mem[_48 + ceil32(return_data.size) + s + 32] = mem[_49 + _48 + s + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _52) + _48 + ceil32(return_data.size) + 32
        if 1 < mem[_48 + ceil32(return_data.size)]:
            idx = idx + 1
            s = mem[_48 + ceil32(return_data.size) + 64]
            continue 
        revert
    if arg1 >= s:
        revert with 0, 'Not enough profit'
    return 1
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
        if not ('cd', 68).length:
            idx = 0
            while sub_6338a7c0.length > idx:
                uint256(sub_6338a7c0[idx]) = 0
                idx = idx + 1
                continue 
            mem[96] = 1
            require 0 < tokens.length
            mem[0] = 1
            mem[128] = address(tokens.field_0)
            mem[160] = 1
            mem[192] = cd[4]
            mem[224] = 1
            mem[256] = 0
            mem[288] = 0
            idx = 1
            while idx < tokens.length:
                require idx - 1 < tokens.length
                require idx - 1 < sub_6338a7c0.length
                mem[0] = 0
                mem[324] = this.address
                mem[356] = address(sub_6338a7c0[idx])
                require ext_code.size(tokens[idx].field_0)
                staticcall tokens[idx].field_0.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_6338a7c0[idx])
                mem[320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require idx - 1 < tokens.length
                    require idx - 1 < sub_6338a7c0.length
                    mem[0] = 0
                    mem[324] = address(sub_6338a7c0[idx])
                    mem[356] = stor4
                    require ext_code.size(tokens[idx].field_0)
                    call tokens[idx].field_0.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_6338a7c0[idx]), stor4
                    mem[320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                idx = idx + 1
                continue 
            require msg.sender == owner
            mem[320] = 2
            mem[64] = 416
            mem[352 len 64] = call.data[calldata.size len 64]
            idx = 0
            s = cd[4]
            while idx < tokens.length - 1:
                require 0 < mem[320]
                mem[352] = tokens[idx].field_0
                require idx + 1 < tokens.length
                require 1 < mem[320]
                mem[384] = tokens[idx].field_256
                require idx < sub_6338a7c0.length
                mem[0] = 0
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[320]
                _677 = mem[320]
                t = 0
                while t < 32 * _677:
                    mem[mem[64] + t + 196] = mem[t + 352]
                    t = t + 32
                    continue 
                require ext_code.size(address(sub_6338a7c0[idx]))
                call address(sub_6338a7c0[idx]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 1, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _677) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _793 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _797 = mem[_793]
                require mem[_793] <= 4294967296
                require mem[_793] + 32 <= return_data.size
                require mem[mem[_793] + _793] <= 4294967296 and mem[_793] + (32 * mem[mem[_793] + _793]) + 32 <= return_data.size
                mem[_793 + ceil32(return_data.size)] = mem[mem[_793] + _793]
                _815 = mem[_797 + _793]
                s = 0
                while s < 32 * _815:
                    mem[_793 + ceil32(return_data.size) + s + 32] = mem[_797 + _793 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _815) + _793 + ceil32(return_data.size) + 32
                if 1 < mem[_793 + ceil32(return_data.size)]:
                    idx = idx + 1
                    s = mem[_793 + ceil32(return_data.size) + 64]
                    continue 
                revert
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
            mem[96] = 1
            require 0 < tokens.length
            mem[0] = 1
            mem[128] = address(tokens.field_0)
            mem[160] = 1
            mem[192] = cd[4]
            mem[224] = 1
            mem[256] = 0
            mem[288] = 0
            idx = 1
            while idx < tokens.length:
                require idx - 1 < tokens.length
                require idx - 1 < sub_6338a7c0.length
                mem[0] = 0
                mem[324] = this.address
                mem[356] = address(sub_6338a7c0[idx])
                require ext_code.size(tokens[idx].field_0)
                staticcall tokens[idx].field_0.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_6338a7c0[idx])
                mem[320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require idx - 1 < tokens.length
                    require idx - 1 < sub_6338a7c0.length
                    mem[0] = 0
                    mem[324] = address(sub_6338a7c0[idx])
                    mem[356] = stor4
                    require ext_code.size(tokens[idx].field_0)
                    call tokens[idx].field_0.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_6338a7c0[idx]), stor4
                    mem[320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                idx = idx + 1
                continue 
            require msg.sender == owner
            mem[320] = 2
            mem[64] = 416
            mem[352 len 64] = call.data[calldata.size len 64]
            idx = 0
            s = cd[4]
            while idx < tokens.length - 1:
                require 0 < mem[320]
                mem[352] = tokens[idx].field_0
                require idx + 1 < tokens.length
                require 1 < mem[320]
                mem[384] = tokens[idx].field_256
                require idx < sub_6338a7c0.length
                mem[0] = 0
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[320]
                _809 = mem[320]
                t = 0
                while t < 32 * _809:
                    mem[mem[64] + t + 196] = mem[t + 352]
                    t = t + 32
                    continue 
                require ext_code.size(address(sub_6338a7c0[idx]))
                call address(sub_6338a7c0[idx]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 1, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _809) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _876 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _878 = mem[_876]
                require mem[_876] <= 4294967296
                require mem[_876] + 32 <= return_data.size
                require mem[mem[_876] + _876] <= 4294967296 and mem[_876] + (32 * mem[mem[_876] + _876]) + 32 <= return_data.size
                mem[_876 + ceil32(return_data.size)] = mem[mem[_876] + _876]
                _890 = mem[_878 + _876]
                s = 0
                while s < 32 * _890:
                    mem[_876 + ceil32(return_data.size) + s + 32] = mem[_878 + _876 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _890) + _876 + ceil32(return_data.size) + 32
                if 1 < mem[_876 + ceil32(return_data.size)]:
                    idx = idx + 1
                    s = mem[_876 + ceil32(return_data.size) + 64]
                    continue 
                revert
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
        if not ('cd', 68).length:
            idx = 0
            while sub_6338a7c0.length > idx:
                uint256(sub_6338a7c0[idx]) = 0
                idx = idx + 1
                continue 
            mem[96] = 1
            require 0 < tokens.length
            mem[0] = 1
            mem[128] = address(tokens.field_0)
            mem[160] = 1
            mem[192] = cd[4]
            mem[224] = 1
            mem[256] = 0
            mem[288] = 0
            idx = 1
            while idx < tokens.length:
                require idx - 1 < tokens.length
                require idx - 1 < sub_6338a7c0.length
                mem[0] = 0
                mem[324] = this.address
                mem[356] = address(sub_6338a7c0[idx])
                require ext_code.size(tokens[idx].field_0)
                staticcall tokens[idx].field_0.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_6338a7c0[idx])
                mem[320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require idx - 1 < tokens.length
                    require idx - 1 < sub_6338a7c0.length
                    mem[0] = 0
                    mem[324] = address(sub_6338a7c0[idx])
                    mem[356] = stor4
                    require ext_code.size(tokens[idx].field_0)
                    call tokens[idx].field_0.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_6338a7c0[idx]), stor4
                    mem[320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                idx = idx + 1
                continue 
            require msg.sender == owner
            mem[320] = 2
            mem[64] = 416
            mem[352 len 64] = call.data[calldata.size len 64]
            idx = 0
            s = cd[4]
            while idx < tokens.length - 1:
                require 0 < mem[320]
                mem[352] = tokens[idx].field_0
                require idx + 1 < tokens.length
                require 1 < mem[320]
                mem[384] = tokens[idx].field_256
                require idx < sub_6338a7c0.length
                mem[0] = 0
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[320]
                _813 = mem[320]
                t = 0
                while t < 32 * _813:
                    mem[mem[64] + t + 196] = mem[t + 352]
                    t = t + 32
                    continue 
                require ext_code.size(address(sub_6338a7c0[idx]))
                call address(sub_6338a7c0[idx]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 1, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _813) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _877 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _880 = mem[_877]
                require mem[_877] <= 4294967296
                require mem[_877] + 32 <= return_data.size
                require mem[mem[_877] + _877] <= 4294967296 and mem[_877] + (32 * mem[mem[_877] + _877]) + 32 <= return_data.size
                mem[_877 + ceil32(return_data.size)] = mem[mem[_877] + _877]
                _891 = mem[_880 + _877]
                s = 0
                while s < 32 * _891:
                    mem[_877 + ceil32(return_data.size) + s + 32] = mem[_880 + _877 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _891) + _877 + ceil32(return_data.size) + 32
                if 1 < mem[_877 + ceil32(return_data.size)]:
                    idx = idx + 1
                    s = mem[_877 + ceil32(return_data.size) + 64]
                    continue 
                revert
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
            mem[96] = 1
            require 0 < tokens.length
            mem[0] = 1
            mem[128] = address(tokens.field_0)
            mem[160] = 1
            mem[192] = cd[4]
            mem[224] = 1
            mem[256] = 0
            mem[288] = 0
            idx = 1
            while idx < tokens.length:
                require idx - 1 < tokens.length
                require idx - 1 < sub_6338a7c0.length
                mem[0] = 0
                mem[324] = this.address
                mem[356] = address(sub_6338a7c0[idx])
                require ext_code.size(tokens[idx].field_0)
                staticcall tokens[idx].field_0.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_6338a7c0[idx])
                mem[320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require idx - 1 < tokens.length
                    require idx - 1 < sub_6338a7c0.length
                    mem[0] = 0
                    mem[324] = address(sub_6338a7c0[idx])
                    mem[356] = stor4
                    require ext_code.size(tokens[idx].field_0)
                    call tokens[idx].field_0.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_6338a7c0[idx]), stor4
                    mem[320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                idx = idx + 1
                continue 
            require msg.sender == owner
            mem[320] = 2
            mem[64] = 416
            mem[352 len 64] = call.data[calldata.size len 64]
            idx = 0
            s = cd[4]
            while idx < tokens.length - 1:
                require 0 < mem[320]
                mem[352] = tokens[idx].field_0
                require idx + 1 < tokens.length
                require 1 < mem[320]
                mem[384] = tokens[idx].field_256
                require idx < sub_6338a7c0.length
                mem[0] = 0
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[320]
                _889 = mem[320]
                t = 0
                while t < 32 * _889:
                    mem[mem[64] + t + 196] = mem[t + 352]
                    t = t + 32
                    continue 
                require ext_code.size(address(sub_6338a7c0[idx]))
                call address(sub_6338a7c0[idx]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args s, 1, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _889) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _916 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _917 = mem[_916]
                require mem[_916] <= 4294967296
                require mem[_916] + 32 <= return_data.size
                require mem[mem[_916] + _916] <= 4294967296 and mem[_916] + (32 * mem[mem[_916] + _916]) + 32 <= return_data.size
                mem[_916 + ceil32(return_data.size)] = mem[mem[_916] + _916]
                _920 = mem[_917 + _916]
                s = 0
                while s < 32 * _920:
                    mem[_916 + ceil32(return_data.size) + s + 32] = mem[_917 + _916 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _920) + _916 + ceil32(return_data.size) + 32
                if 1 < mem[_916 + ceil32(return_data.size)]:
                    idx = idx + 1
                    s = mem[_916 + ceil32(return_data.size) + 64]
                    continue 
                revert
    if cd[4] >= s:
        revert with 0, 'Not enough profit'
}



}
