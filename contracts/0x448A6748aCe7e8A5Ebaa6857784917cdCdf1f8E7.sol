contract main {




// =====================  Runtime code  =====================


#
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
uint256 sub_b85974fc;

function sub_1371a4c9(?) payable {
    return sub_b85974fc
}

function sub_b85974fc(?) payable {
    return sub_b85974fc
}

function _fallback() payable {
    revert
}

function sub_576aaa12(?) payable {
    require calldata.size - 4 >= 32
    sub_b85974fc = arg1
}

function sub_004bb481(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg1:
        if ext_call.return_data[50 len 14]:
            return ((5 * 1000 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 997) + (arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]) + 5000)
    else:
        if ext_call.return_data[18 len 14]:
            return ((5 * 1000 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 997) + (arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + 5000)
    revert
}

function sub_f90df43e(?) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(arg1)
    staticcall arg1.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg5:
        require ext_call.return_data[50 len 14]
        sub_b85974fc = (5 * 1000 * arg5 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 997) + (arg5 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]) + 5000
    else:
        require ext_call.return_data[18 len 14]
        sub_b85974fc = (5 * 1000 * arg6 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 997) + (arg6 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]) + 5000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args arg5, arg6, address(this.address), 128, 96, address(arg1), address(arg2), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function apeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    require ext_code.size(msg.sender)
    staticcall msg.sender.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not arg2:
        if arg2:
            require ext_call.return_data[50 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1914 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2058 = mem[ceil32(arg4.length) + _1914 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1914 + 224])] = mem[ceil32(arg4.length) + _1914 + 256 len floor32(mem[ceil32(arg4.length) + _1914 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2058) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1916 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2059 = mem[ceil32(arg4.length) + _1916 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1916 + 224])] = mem[ceil32(arg4.length) + _1916 + 256 len floor32(mem[ceil32(arg4.length) + _1916 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2059) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1918 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2060 = mem[ceil32(arg4.length) + _1918 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1918 + 224])] = mem[ceil32(arg4.length) + _1918 + 256 len floor32(mem[ceil32(arg4.length) + _1918 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2060) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1920 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2061 = mem[ceil32(arg4.length) + _1920 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1920 + 224])] = mem[ceil32(arg4.length) + _1920 + 256 len floor32(mem[ceil32(arg4.length) + _1920 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2061) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1922 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2062 = mem[ceil32(arg4.length) + _1922 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1922 + 224])] = mem[ceil32(arg4.length) + _1922 + 256 len floor32(mem[ceil32(arg4.length) + _1922 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2062) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1924 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2063 = mem[ceil32(arg4.length) + _1924 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1924 + 224])] = mem[ceil32(arg4.length) + _1924 + 256 len floor32(mem[ceil32(arg4.length) + _1924 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2063) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1926 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2064 = mem[ceil32(arg4.length) + _1926 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1926 + 224])] = mem[ceil32(arg4.length) + _1926 + 256 len floor32(mem[ceil32(arg4.length) + _1926 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2064) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1928 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2065 = mem[ceil32(arg4.length) + _1928 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1928 + 224])] = mem[ceil32(arg4.length) + _1928 + 256 len floor32(mem[ceil32(arg4.length) + _1928 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2065) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1930 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2066 = mem[ceil32(arg4.length) + _1930 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1930 + 224])] = mem[ceil32(arg4.length) + _1930 + 256 len floor32(mem[ceil32(arg4.length) + _1930 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2066) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1932 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2067 = mem[ceil32(arg4.length) + _1932 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1932 + 224])] = mem[ceil32(arg4.length) + _1932 + 256 len floor32(mem[ceil32(arg4.length) + _1932 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2067) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1934 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2068 = mem[ceil32(arg4.length) + _1934 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1934 + 224])] = mem[ceil32(arg4.length) + _1934 + 256 len floor32(mem[ceil32(arg4.length) + _1934 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2068) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1936 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2069 = mem[ceil32(arg4.length) + _1936 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1936 + 224])] = mem[ceil32(arg4.length) + _1936 + 256 len floor32(mem[ceil32(arg4.length) + _1936 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2069) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
        else:
            require ext_call.return_data[18 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1938 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2070 = mem[ceil32(arg4.length) + _1938 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1938 + 224])] = mem[ceil32(arg4.length) + _1938 + 256 len floor32(mem[ceil32(arg4.length) + _1938 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2070) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1940 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2071 = mem[ceil32(arg4.length) + _1940 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1940 + 224])] = mem[ceil32(arg4.length) + _1940 + 256 len floor32(mem[ceil32(arg4.length) + _1940 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2071) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1942 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2072 = mem[ceil32(arg4.length) + _1942 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1942 + 224])] = mem[ceil32(arg4.length) + _1942 + 256 len floor32(mem[ceil32(arg4.length) + _1942 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2072) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1944 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2073 = mem[ceil32(arg4.length) + _1944 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1944 + 224])] = mem[ceil32(arg4.length) + _1944 + 256 len floor32(mem[ceil32(arg4.length) + _1944 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2073) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1946 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2074 = mem[ceil32(arg4.length) + _1946 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1946 + 224])] = mem[ceil32(arg4.length) + _1946 + 256 len floor32(mem[ceil32(arg4.length) + _1946 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2074) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1948 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2075 = mem[ceil32(arg4.length) + _1948 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1948 + 224])] = mem[ceil32(arg4.length) + _1948 + 256 len floor32(mem[ceil32(arg4.length) + _1948 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2075) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1950 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2076 = mem[ceil32(arg4.length) + _1950 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1950 + 224])] = mem[ceil32(arg4.length) + _1950 + 256 len floor32(mem[ceil32(arg4.length) + _1950 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2076) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1952 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2077 = mem[ceil32(arg4.length) + _1952 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1952 + 224])] = mem[ceil32(arg4.length) + _1952 + 256 len floor32(mem[ceil32(arg4.length) + _1952 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2077) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1954 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2078 = mem[ceil32(arg4.length) + _1954 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1954 + 224])] = mem[ceil32(arg4.length) + _1954 + 256 len floor32(mem[ceil32(arg4.length) + _1954 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2078) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1956 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2079 = mem[ceil32(arg4.length) + _1956 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1956 + 224])] = mem[ceil32(arg4.length) + _1956 + 256 len floor32(mem[ceil32(arg4.length) + _1956 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2079) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1958 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2080 = mem[ceil32(arg4.length) + _1958 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1958 + 224])] = mem[ceil32(arg4.length) + _1958 + 256 len floor32(mem[ceil32(arg4.length) + _1958 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2080) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1960 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2081 = mem[ceil32(arg4.length) + _1960 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1960 + 224])] = mem[ceil32(arg4.length) + _1960 + 256 len floor32(mem[ceil32(arg4.length) + _1960 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2081) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
    else:
        if arg2:
            require ext_call.return_data[50 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1962 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2082 = mem[ceil32(arg4.length) + _1962 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1962 + 224])] = mem[ceil32(arg4.length) + _1962 + 256 len floor32(mem[ceil32(arg4.length) + _1962 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2082) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1964 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2083 = mem[ceil32(arg4.length) + _1964 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1964 + 224])] = mem[ceil32(arg4.length) + _1964 + 256 len floor32(mem[ceil32(arg4.length) + _1964 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2083) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1966 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2084 = mem[ceil32(arg4.length) + _1966 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1966 + 224])] = mem[ceil32(arg4.length) + _1966 + 256 len floor32(mem[ceil32(arg4.length) + _1966 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2084) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1968 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2085 = mem[ceil32(arg4.length) + _1968 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1968 + 224])] = mem[ceil32(arg4.length) + _1968 + 256 len floor32(mem[ceil32(arg4.length) + _1968 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2085) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1970 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2086 = mem[ceil32(arg4.length) + _1970 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1970 + 224])] = mem[ceil32(arg4.length) + _1970 + 256 len floor32(mem[ceil32(arg4.length) + _1970 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2086) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1972 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2087 = mem[ceil32(arg4.length) + _1972 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1972 + 224])] = mem[ceil32(arg4.length) + _1972 + 256 len floor32(mem[ceil32(arg4.length) + _1972 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2087) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1974 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2088 = mem[ceil32(arg4.length) + _1974 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1974 + 224])] = mem[ceil32(arg4.length) + _1974 + 256 len floor32(mem[ceil32(arg4.length) + _1974 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2088) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1976 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2089 = mem[ceil32(arg4.length) + _1976 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1976 + 224])] = mem[ceil32(arg4.length) + _1976 + 256 len floor32(mem[ceil32(arg4.length) + _1976 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2089) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1978 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2090 = mem[ceil32(arg4.length) + _1978 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1978 + 224])] = mem[ceil32(arg4.length) + _1978 + 256 len floor32(mem[ceil32(arg4.length) + _1978 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2090) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1980 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2091 = mem[ceil32(arg4.length) + _1980 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1980 + 224])] = mem[ceil32(arg4.length) + _1980 + 256 len floor32(mem[ceil32(arg4.length) + _1980 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2091) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1982 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2092 = mem[ceil32(arg4.length) + _1982 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1982 + 224])] = mem[ceil32(arg4.length) + _1982 + 256 len floor32(mem[ceil32(arg4.length) + _1982 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2092) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1984 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2093 = mem[ceil32(arg4.length) + _1984 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1984 + 224])] = mem[ceil32(arg4.length) + _1984 + 256 len floor32(mem[ceil32(arg4.length) + _1984 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2093) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
        else:
            require ext_call.return_data[18 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1986 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2094 = mem[ceil32(arg4.length) + _1986 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1986 + 224])] = mem[ceil32(arg4.length) + _1986 + 256 len floor32(mem[ceil32(arg4.length) + _1986 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2094) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1988 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2095 = mem[ceil32(arg4.length) + _1988 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1988 + 224])] = mem[ceil32(arg4.length) + _1988 + 256 len floor32(mem[ceil32(arg4.length) + _1988 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2095) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1990 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2096 = mem[ceil32(arg4.length) + _1990 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1990 + 224])] = mem[ceil32(arg4.length) + _1990 + 256 len floor32(mem[ceil32(arg4.length) + _1990 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2096) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1992 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2097 = mem[ceil32(arg4.length) + _1992 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1992 + 224])] = mem[ceil32(arg4.length) + _1992 + 256 len floor32(mem[ceil32(arg4.length) + _1992 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2097) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1994 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2098 = mem[ceil32(arg4.length) + _1994 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1994 + 224])] = mem[ceil32(arg4.length) + _1994 + 256 len floor32(mem[ceil32(arg4.length) + _1994 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2098) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1996 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2099 = mem[ceil32(arg4.length) + _1996 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1996 + 224])] = mem[ceil32(arg4.length) + _1996 + 256 len floor32(mem[ceil32(arg4.length) + _1996 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2099) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1998 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2100 = mem[ceil32(arg4.length) + _1998 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1998 + 224])] = mem[ceil32(arg4.length) + _1998 + 256 len floor32(mem[ceil32(arg4.length) + _1998 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2100) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _2000 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2101 = mem[ceil32(arg4.length) + _2000 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2000 + 224])] = mem[ceil32(arg4.length) + _2000 + 256 len floor32(mem[ceil32(arg4.length) + _2000 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2101) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _2002 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2102 = mem[ceil32(arg4.length) + _2002 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2002 + 224])] = mem[ceil32(arg4.length) + _2002 + 256 len floor32(mem[ceil32(arg4.length) + _2002 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2102) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _2004 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2103 = mem[ceil32(arg4.length) + _2004 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2004 + 224])] = mem[ceil32(arg4.length) + _2004 + 256 len floor32(mem[ceil32(arg4.length) + _2004 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2103) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _2006 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2104 = mem[ceil32(arg4.length) + _2006 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2006 + 224])] = mem[ceil32(arg4.length) + _2006 + 256 len floor32(mem[ceil32(arg4.length) + _2006 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2104) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _2008 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2105 = mem[ceil32(arg4.length) + _2008 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2008 + 224])] = mem[ceil32(arg4.length) + _2008 + 256 len floor32(mem[ceil32(arg4.length) + _2008 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2105) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
    ('gt', ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), ('mem', ('range', 192, 32)))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function canaryCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    require ext_code.size(msg.sender)
    staticcall msg.sender.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not arg2:
        if arg2:
            require ext_call.return_data[50 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1914 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2058 = mem[ceil32(arg4.length) + _1914 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1914 + 224])] = mem[ceil32(arg4.length) + _1914 + 256 len floor32(mem[ceil32(arg4.length) + _1914 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2058) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1916 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2059 = mem[ceil32(arg4.length) + _1916 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1916 + 224])] = mem[ceil32(arg4.length) + _1916 + 256 len floor32(mem[ceil32(arg4.length) + _1916 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2059) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1918 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2060 = mem[ceil32(arg4.length) + _1918 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1918 + 224])] = mem[ceil32(arg4.length) + _1918 + 256 len floor32(mem[ceil32(arg4.length) + _1918 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2060) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1920 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2061 = mem[ceil32(arg4.length) + _1920 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1920 + 224])] = mem[ceil32(arg4.length) + _1920 + 256 len floor32(mem[ceil32(arg4.length) + _1920 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2061) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1922 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2062 = mem[ceil32(arg4.length) + _1922 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1922 + 224])] = mem[ceil32(arg4.length) + _1922 + 256 len floor32(mem[ceil32(arg4.length) + _1922 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2062) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1924 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2063 = mem[ceil32(arg4.length) + _1924 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1924 + 224])] = mem[ceil32(arg4.length) + _1924 + 256 len floor32(mem[ceil32(arg4.length) + _1924 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2063) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1926 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2064 = mem[ceil32(arg4.length) + _1926 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1926 + 224])] = mem[ceil32(arg4.length) + _1926 + 256 len floor32(mem[ceil32(arg4.length) + _1926 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2064) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1928 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2065 = mem[ceil32(arg4.length) + _1928 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1928 + 224])] = mem[ceil32(arg4.length) + _1928 + 256 len floor32(mem[ceil32(arg4.length) + _1928 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2065) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1930 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2066 = mem[ceil32(arg4.length) + _1930 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1930 + 224])] = mem[ceil32(arg4.length) + _1930 + 256 len floor32(mem[ceil32(arg4.length) + _1930 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2066) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1932 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2067 = mem[ceil32(arg4.length) + _1932 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1932 + 224])] = mem[ceil32(arg4.length) + _1932 + 256 len floor32(mem[ceil32(arg4.length) + _1932 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2067) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1934 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2068 = mem[ceil32(arg4.length) + _1934 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1934 + 224])] = mem[ceil32(arg4.length) + _1934 + 256 len floor32(mem[ceil32(arg4.length) + _1934 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2068) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1936 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2069 = mem[ceil32(arg4.length) + _1936 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1936 + 224])] = mem[ceil32(arg4.length) + _1936 + 256 len floor32(mem[ceil32(arg4.length) + _1936 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2069) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
        else:
            require ext_call.return_data[18 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1938 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2070 = mem[ceil32(arg4.length) + _1938 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1938 + 224])] = mem[ceil32(arg4.length) + _1938 + 256 len floor32(mem[ceil32(arg4.length) + _1938 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2070) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1940 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2071 = mem[ceil32(arg4.length) + _1940 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1940 + 224])] = mem[ceil32(arg4.length) + _1940 + 256 len floor32(mem[ceil32(arg4.length) + _1940 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2071) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1942 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2072 = mem[ceil32(arg4.length) + _1942 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1942 + 224])] = mem[ceil32(arg4.length) + _1942 + 256 len floor32(mem[ceil32(arg4.length) + _1942 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2072) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1944 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2073 = mem[ceil32(arg4.length) + _1944 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1944 + 224])] = mem[ceil32(arg4.length) + _1944 + 256 len floor32(mem[ceil32(arg4.length) + _1944 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2073) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1946 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2074 = mem[ceil32(arg4.length) + _1946 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1946 + 224])] = mem[ceil32(arg4.length) + _1946 + 256 len floor32(mem[ceil32(arg4.length) + _1946 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2074) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1948 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2075 = mem[ceil32(arg4.length) + _1948 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1948 + 224])] = mem[ceil32(arg4.length) + _1948 + 256 len floor32(mem[ceil32(arg4.length) + _1948 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2075) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1950 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2076 = mem[ceil32(arg4.length) + _1950 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1950 + 224])] = mem[ceil32(arg4.length) + _1950 + 256 len floor32(mem[ceil32(arg4.length) + _1950 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2076) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1952 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2077 = mem[ceil32(arg4.length) + _1952 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1952 + 224])] = mem[ceil32(arg4.length) + _1952 + 256 len floor32(mem[ceil32(arg4.length) + _1952 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2077) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1954 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2078 = mem[ceil32(arg4.length) + _1954 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1954 + 224])] = mem[ceil32(arg4.length) + _1954 + 256 len floor32(mem[ceil32(arg4.length) + _1954 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2078) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1956 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2079 = mem[ceil32(arg4.length) + _1956 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1956 + 224])] = mem[ceil32(arg4.length) + _1956 + 256 len floor32(mem[ceil32(arg4.length) + _1956 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2079) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1958 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2080 = mem[ceil32(arg4.length) + _1958 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1958 + 224])] = mem[ceil32(arg4.length) + _1958 + 256 len floor32(mem[ceil32(arg4.length) + _1958 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2080) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1960 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2081 = mem[ceil32(arg4.length) + _1960 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1960 + 224])] = mem[ceil32(arg4.length) + _1960 + 256 len floor32(mem[ceil32(arg4.length) + _1960 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2081) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
    else:
        if arg2:
            require ext_call.return_data[50 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1962 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2082 = mem[ceil32(arg4.length) + _1962 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1962 + 224])] = mem[ceil32(arg4.length) + _1962 + 256 len floor32(mem[ceil32(arg4.length) + _1962 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2082) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1964 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2083 = mem[ceil32(arg4.length) + _1964 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1964 + 224])] = mem[ceil32(arg4.length) + _1964 + 256 len floor32(mem[ceil32(arg4.length) + _1964 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2083) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1966 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2084 = mem[ceil32(arg4.length) + _1966 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1966 + 224])] = mem[ceil32(arg4.length) + _1966 + 256 len floor32(mem[ceil32(arg4.length) + _1966 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2084) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1968 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2085 = mem[ceil32(arg4.length) + _1968 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1968 + 224])] = mem[ceil32(arg4.length) + _1968 + 256 len floor32(mem[ceil32(arg4.length) + _1968 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2085) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1970 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2086 = mem[ceil32(arg4.length) + _1970 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1970 + 224])] = mem[ceil32(arg4.length) + _1970 + 256 len floor32(mem[ceil32(arg4.length) + _1970 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2086) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1972 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2087 = mem[ceil32(arg4.length) + _1972 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1972 + 224])] = mem[ceil32(arg4.length) + _1972 + 256 len floor32(mem[ceil32(arg4.length) + _1972 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2087) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1974 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2088 = mem[ceil32(arg4.length) + _1974 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1974 + 224])] = mem[ceil32(arg4.length) + _1974 + 256 len floor32(mem[ceil32(arg4.length) + _1974 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2088) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1976 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2089 = mem[ceil32(arg4.length) + _1976 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1976 + 224])] = mem[ceil32(arg4.length) + _1976 + 256 len floor32(mem[ceil32(arg4.length) + _1976 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2089) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1978 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2090 = mem[ceil32(arg4.length) + _1978 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1978 + 224])] = mem[ceil32(arg4.length) + _1978 + 256 len floor32(mem[ceil32(arg4.length) + _1978 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2090) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1980 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2091 = mem[ceil32(arg4.length) + _1980 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1980 + 224])] = mem[ceil32(arg4.length) + _1980 + 256 len floor32(mem[ceil32(arg4.length) + _1980 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2091) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1982 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2092 = mem[ceil32(arg4.length) + _1982 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1982 + 224])] = mem[ceil32(arg4.length) + _1982 + 256 len floor32(mem[ceil32(arg4.length) + _1982 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2092) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1984 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2093 = mem[ceil32(arg4.length) + _1984 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1984 + 224])] = mem[ceil32(arg4.length) + _1984 + 256 len floor32(mem[ceil32(arg4.length) + _1984 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2093) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
        else:
            require ext_call.return_data[18 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1986 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2094 = mem[ceil32(arg4.length) + _1986 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1986 + 224])] = mem[ceil32(arg4.length) + _1986 + 256 len floor32(mem[ceil32(arg4.length) + _1986 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2094) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1988 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2095 = mem[ceil32(arg4.length) + _1988 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1988 + 224])] = mem[ceil32(arg4.length) + _1988 + 256 len floor32(mem[ceil32(arg4.length) + _1988 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2095) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1990 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2096 = mem[ceil32(arg4.length) + _1990 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1990 + 224])] = mem[ceil32(arg4.length) + _1990 + 256 len floor32(mem[ceil32(arg4.length) + _1990 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2096) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1992 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2097 = mem[ceil32(arg4.length) + _1992 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1992 + 224])] = mem[ceil32(arg4.length) + _1992 + 256 len floor32(mem[ceil32(arg4.length) + _1992 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2097) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1994 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2098 = mem[ceil32(arg4.length) + _1994 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1994 + 224])] = mem[ceil32(arg4.length) + _1994 + 256 len floor32(mem[ceil32(arg4.length) + _1994 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2098) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1996 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2099 = mem[ceil32(arg4.length) + _1996 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1996 + 224])] = mem[ceil32(arg4.length) + _1996 + 256 len floor32(mem[ceil32(arg4.length) + _1996 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2099) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1998 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2100 = mem[ceil32(arg4.length) + _1998 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1998 + 224])] = mem[ceil32(arg4.length) + _1998 + 256 len floor32(mem[ceil32(arg4.length) + _1998 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2100) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _2000 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2101 = mem[ceil32(arg4.length) + _2000 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2000 + 224])] = mem[ceil32(arg4.length) + _2000 + 256 len floor32(mem[ceil32(arg4.length) + _2000 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2101) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _2002 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2102 = mem[ceil32(arg4.length) + _2002 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2002 + 224])] = mem[ceil32(arg4.length) + _2002 + 256 len floor32(mem[ceil32(arg4.length) + _2002 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2102) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _2004 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2103 = mem[ceil32(arg4.length) + _2004 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2004 + 224])] = mem[ceil32(arg4.length) + _2004 + 256 len floor32(mem[ceil32(arg4.length) + _2004 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2103) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _2006 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2104 = mem[ceil32(arg4.length) + _2006 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2006 + 224])] = mem[ceil32(arg4.length) + _2006 + 256 len floor32(mem[ceil32(arg4.length) + _2006 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2104) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _2008 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2105 = mem[ceil32(arg4.length) + _2008 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2008 + 224])] = mem[ceil32(arg4.length) + _2008 + 256 len floor32(mem[ceil32(arg4.length) + _2008 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2105) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
    ('gt', ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), ('mem', ('range', 192, 32)))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    require ext_code.size(msg.sender)
    staticcall msg.sender.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not arg2:
        if arg2:
            require ext_call.return_data[50 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1914 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2058 = mem[ceil32(arg4.length) + _1914 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1914 + 224])] = mem[ceil32(arg4.length) + _1914 + 256 len floor32(mem[ceil32(arg4.length) + _1914 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2058) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1916 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2059 = mem[ceil32(arg4.length) + _1916 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1916 + 224])] = mem[ceil32(arg4.length) + _1916 + 256 len floor32(mem[ceil32(arg4.length) + _1916 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2059) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1918 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2060 = mem[ceil32(arg4.length) + _1918 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1918 + 224])] = mem[ceil32(arg4.length) + _1918 + 256 len floor32(mem[ceil32(arg4.length) + _1918 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2060) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1920 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2061 = mem[ceil32(arg4.length) + _1920 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1920 + 224])] = mem[ceil32(arg4.length) + _1920 + 256 len floor32(mem[ceil32(arg4.length) + _1920 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2061) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1922 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2062 = mem[ceil32(arg4.length) + _1922 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1922 + 224])] = mem[ceil32(arg4.length) + _1922 + 256 len floor32(mem[ceil32(arg4.length) + _1922 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2062) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1924 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2063 = mem[ceil32(arg4.length) + _1924 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1924 + 224])] = mem[ceil32(arg4.length) + _1924 + 256 len floor32(mem[ceil32(arg4.length) + _1924 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2063) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1926 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2064 = mem[ceil32(arg4.length) + _1926 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1926 + 224])] = mem[ceil32(arg4.length) + _1926 + 256 len floor32(mem[ceil32(arg4.length) + _1926 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2064) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1928 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2065 = mem[ceil32(arg4.length) + _1928 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1928 + 224])] = mem[ceil32(arg4.length) + _1928 + 256 len floor32(mem[ceil32(arg4.length) + _1928 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2065) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1930 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2066 = mem[ceil32(arg4.length) + _1930 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1930 + 224])] = mem[ceil32(arg4.length) + _1930 + 256 len floor32(mem[ceil32(arg4.length) + _1930 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2066) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1932 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2067 = mem[ceil32(arg4.length) + _1932 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1932 + 224])] = mem[ceil32(arg4.length) + _1932 + 256 len floor32(mem[ceil32(arg4.length) + _1932 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2067) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1934 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2068 = mem[ceil32(arg4.length) + _1934 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1934 + 224])] = mem[ceil32(arg4.length) + _1934 + 256 len floor32(mem[ceil32(arg4.length) + _1934 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2068) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1936 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2069 = mem[ceil32(arg4.length) + _1936 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1936 + 224])] = mem[ceil32(arg4.length) + _1936 + 256 len floor32(mem[ceil32(arg4.length) + _1936 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2069) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
        else:
            require ext_call.return_data[18 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1938 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2070 = mem[ceil32(arg4.length) + _1938 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1938 + 224])] = mem[ceil32(arg4.length) + _1938 + 256 len floor32(mem[ceil32(arg4.length) + _1938 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2070) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1940 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2071 = mem[ceil32(arg4.length) + _1940 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1940 + 224])] = mem[ceil32(arg4.length) + _1940 + 256 len floor32(mem[ceil32(arg4.length) + _1940 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2071) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1942 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2072 = mem[ceil32(arg4.length) + _1942 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1942 + 224])] = mem[ceil32(arg4.length) + _1942 + 256 len floor32(mem[ceil32(arg4.length) + _1942 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2072) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1944 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2073 = mem[ceil32(arg4.length) + _1944 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1944 + 224])] = mem[ceil32(arg4.length) + _1944 + 256 len floor32(mem[ceil32(arg4.length) + _1944 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2073) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1946 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2074 = mem[ceil32(arg4.length) + _1946 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1946 + 224])] = mem[ceil32(arg4.length) + _1946 + 256 len floor32(mem[ceil32(arg4.length) + _1946 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2074) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1948 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2075 = mem[ceil32(arg4.length) + _1948 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1948 + 224])] = mem[ceil32(arg4.length) + _1948 + 256 len floor32(mem[ceil32(arg4.length) + _1948 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2075) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1950 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2076 = mem[ceil32(arg4.length) + _1950 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1950 + 224])] = mem[ceil32(arg4.length) + _1950 + 256 len floor32(mem[ceil32(arg4.length) + _1950 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2076) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1952 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2077 = mem[ceil32(arg4.length) + _1952 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1952 + 224])] = mem[ceil32(arg4.length) + _1952 + 256 len floor32(mem[ceil32(arg4.length) + _1952 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2077) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1954 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2078 = mem[ceil32(arg4.length) + _1954 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1954 + 224])] = mem[ceil32(arg4.length) + _1954 + 256 len floor32(mem[ceil32(arg4.length) + _1954 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2078) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1956 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2079 = mem[ceil32(arg4.length) + _1956 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1956 + 224])] = mem[ceil32(arg4.length) + _1956 + 256 len floor32(mem[ceil32(arg4.length) + _1956 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2079) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1958 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2080 = mem[ceil32(arg4.length) + _1958 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1958 + 224])] = mem[ceil32(arg4.length) + _1958 + 256 len floor32(mem[ceil32(arg4.length) + _1958 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2080) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1960 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2081 = mem[ceil32(arg4.length) + _1960 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1960 + 224])] = mem[ceil32(arg4.length) + _1960 + 256 len floor32(mem[ceil32(arg4.length) + _1960 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2081) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
    else:
        if arg2:
            require ext_call.return_data[50 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1962 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2082 = mem[ceil32(arg4.length) + _1962 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1962 + 224])] = mem[ceil32(arg4.length) + _1962 + 256 len floor32(mem[ceil32(arg4.length) + _1962 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2082) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1964 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2083 = mem[ceil32(arg4.length) + _1964 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1964 + 224])] = mem[ceil32(arg4.length) + _1964 + 256 len floor32(mem[ceil32(arg4.length) + _1964 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2083) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1966 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2084 = mem[ceil32(arg4.length) + _1966 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1966 + 224])] = mem[ceil32(arg4.length) + _1966 + 256 len floor32(mem[ceil32(arg4.length) + _1966 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2084) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1968 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2085 = mem[ceil32(arg4.length) + _1968 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1968 + 224])] = mem[ceil32(arg4.length) + _1968 + 256 len floor32(mem[ceil32(arg4.length) + _1968 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2085) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1970 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2086 = mem[ceil32(arg4.length) + _1970 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1970 + 224])] = mem[ceil32(arg4.length) + _1970 + 256 len floor32(mem[ceil32(arg4.length) + _1970 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2086) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1972 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2087 = mem[ceil32(arg4.length) + _1972 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1972 + 224])] = mem[ceil32(arg4.length) + _1972 + 256 len floor32(mem[ceil32(arg4.length) + _1972 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2087) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1974 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2088 = mem[ceil32(arg4.length) + _1974 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1974 + 224])] = mem[ceil32(arg4.length) + _1974 + 256 len floor32(mem[ceil32(arg4.length) + _1974 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2088) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1976 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2089 = mem[ceil32(arg4.length) + _1976 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1976 + 224])] = mem[ceil32(arg4.length) + _1976 + 256 len floor32(mem[ceil32(arg4.length) + _1976 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2089) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1978 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2090 = mem[ceil32(arg4.length) + _1978 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1978 + 224])] = mem[ceil32(arg4.length) + _1978 + 256 len floor32(mem[ceil32(arg4.length) + _1978 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2090) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1980 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2091 = mem[ceil32(arg4.length) + _1980 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1980 + 224])] = mem[ceil32(arg4.length) + _1980 + 256 len floor32(mem[ceil32(arg4.length) + _1980 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2091) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1982 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2092 = mem[ceil32(arg4.length) + _1982 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1982 + 224])] = mem[ceil32(arg4.length) + _1982 + 256 len floor32(mem[ceil32(arg4.length) + _1982 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2092) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1984 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2093 = mem[ceil32(arg4.length) + _1984 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1984 + 224])] = mem[ceil32(arg4.length) + _1984 + 256 len floor32(mem[ceil32(arg4.length) + _1984 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2093) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
        else:
            require ext_call.return_data[18 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1986 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2094 = mem[ceil32(arg4.length) + _1986 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1986 + 224])] = mem[ceil32(arg4.length) + _1986 + 256 len floor32(mem[ceil32(arg4.length) + _1986 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2094) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1988 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2095 = mem[ceil32(arg4.length) + _1988 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1988 + 224])] = mem[ceil32(arg4.length) + _1988 + 256 len floor32(mem[ceil32(arg4.length) + _1988 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2095) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1990 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2096 = mem[ceil32(arg4.length) + _1990 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1990 + 224])] = mem[ceil32(arg4.length) + _1990 + 256 len floor32(mem[ceil32(arg4.length) + _1990 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2096) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1992 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2097 = mem[ceil32(arg4.length) + _1992 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1992 + 224])] = mem[ceil32(arg4.length) + _1992 + 256 len floor32(mem[ceil32(arg4.length) + _1992 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2097) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1994 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2098 = mem[ceil32(arg4.length) + _1994 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1994 + 224])] = mem[ceil32(arg4.length) + _1994 + 256 len floor32(mem[ceil32(arg4.length) + _1994 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2098) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1996 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2099 = mem[ceil32(arg4.length) + _1996 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1996 + 224])] = mem[ceil32(arg4.length) + _1996 + 256 len floor32(mem[ceil32(arg4.length) + _1996 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2099) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1998 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2100 = mem[ceil32(arg4.length) + _1998 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1998 + 224])] = mem[ceil32(arg4.length) + _1998 + 256 len floor32(mem[ceil32(arg4.length) + _1998 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2100) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _2000 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2101 = mem[ceil32(arg4.length) + _2000 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2000 + 224])] = mem[ceil32(arg4.length) + _2000 + 256 len floor32(mem[ceil32(arg4.length) + _2000 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2101) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _2002 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2102 = mem[ceil32(arg4.length) + _2002 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2002 + 224])] = mem[ceil32(arg4.length) + _2002 + 256 len floor32(mem[ceil32(arg4.length) + _2002 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2102) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _2004 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2103 = mem[ceil32(arg4.length) + _2004 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2004 + 224])] = mem[ceil32(arg4.length) + _2004 + 256 len floor32(mem[ceil32(arg4.length) + _2004 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2103) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _2006 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2104 = mem[ceil32(arg4.length) + _2006 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2006 + 224])] = mem[ceil32(arg4.length) + _2006 + 256 len floor32(mem[ceil32(arg4.length) + _2006 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2104) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _2008 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2105 = mem[ceil32(arg4.length) + _2008 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2008 + 224])] = mem[ceil32(arg4.length) + _2008 + 256 len floor32(mem[ceil32(arg4.length) + _2008 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2105) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
    ('gt', ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), ('mem', ('range', 192, 32)))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    require ext_code.size(msg.sender)
    staticcall msg.sender.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(arg4.length) + 128 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not arg2:
        if arg2:
            require ext_call.return_data[50 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1914 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2058 = mem[ceil32(arg4.length) + _1914 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1914 + 224])] = mem[ceil32(arg4.length) + _1914 + 256 len floor32(mem[ceil32(arg4.length) + _1914 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2058) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1916 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2059 = mem[ceil32(arg4.length) + _1916 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1916 + 224])] = mem[ceil32(arg4.length) + _1916 + 256 len floor32(mem[ceil32(arg4.length) + _1916 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2059) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1918 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2060 = mem[ceil32(arg4.length) + _1918 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1918 + 224])] = mem[ceil32(arg4.length) + _1918 + 256 len floor32(mem[ceil32(arg4.length) + _1918 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2060) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1920 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2061 = mem[ceil32(arg4.length) + _1920 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1920 + 224])] = mem[ceil32(arg4.length) + _1920 + 256 len floor32(mem[ceil32(arg4.length) + _1920 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2061) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1922 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2062 = mem[ceil32(arg4.length) + _1922 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1922 + 224])] = mem[ceil32(arg4.length) + _1922 + 256 len floor32(mem[ceil32(arg4.length) + _1922 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2062) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1924 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2063 = mem[ceil32(arg4.length) + _1924 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1924 + 224])] = mem[ceil32(arg4.length) + _1924 + 256 len floor32(mem[ceil32(arg4.length) + _1924 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2063) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1926 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2064 = mem[ceil32(arg4.length) + _1926 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1926 + 224])] = mem[ceil32(arg4.length) + _1926 + 256 len floor32(mem[ceil32(arg4.length) + _1926 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2064) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1928 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2065 = mem[ceil32(arg4.length) + _1928 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1928 + 224])] = mem[ceil32(arg4.length) + _1928 + 256 len floor32(mem[ceil32(arg4.length) + _1928 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2065) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1930 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2066 = mem[ceil32(arg4.length) + _1930 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1930 + 224])] = mem[ceil32(arg4.length) + _1930 + 256 len floor32(mem[ceil32(arg4.length) + _1930 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2066) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1932 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2067 = mem[ceil32(arg4.length) + _1932 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1932 + 224])] = mem[ceil32(arg4.length) + _1932 + 256 len floor32(mem[ceil32(arg4.length) + _1932 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2067) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1934 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2068 = mem[ceil32(arg4.length) + _1934 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1934 + 224])] = mem[ceil32(arg4.length) + _1934 + 256 len floor32(mem[ceil32(arg4.length) + _1934 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2068) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1936 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2069 = mem[ceil32(arg4.length) + _1936 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1936 + 224])] = mem[ceil32(arg4.length) + _1936 + 256 len floor32(mem[ceil32(arg4.length) + _1936 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2069) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
        else:
            require ext_call.return_data[18 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1938 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2070 = mem[ceil32(arg4.length) + _1938 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1938 + 224])] = mem[ceil32(arg4.length) + _1938 + 256 len floor32(mem[ceil32(arg4.length) + _1938 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2070) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1940 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2071 = mem[ceil32(arg4.length) + _1940 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1940 + 224])] = mem[ceil32(arg4.length) + _1940 + 256 len floor32(mem[ceil32(arg4.length) + _1940 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2071) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1942 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2072 = mem[ceil32(arg4.length) + _1942 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1942 + 224])] = mem[ceil32(arg4.length) + _1942 + 256 len floor32(mem[ceil32(arg4.length) + _1942 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2072) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1944 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2073 = mem[ceil32(arg4.length) + _1944 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1944 + 224])] = mem[ceil32(arg4.length) + _1944 + 256 len floor32(mem[ceil32(arg4.length) + _1944 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2073) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1946 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2074 = mem[ceil32(arg4.length) + _1946 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1946 + 224])] = mem[ceil32(arg4.length) + _1946 + 256 len floor32(mem[ceil32(arg4.length) + _1946 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2074) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1948 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2075 = mem[ceil32(arg4.length) + _1948 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1948 + 224])] = mem[ceil32(arg4.length) + _1948 + 256 len floor32(mem[ceil32(arg4.length) + _1948 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2075) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1950 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2076 = mem[ceil32(arg4.length) + _1950 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1950 + 224])] = mem[ceil32(arg4.length) + _1950 + 256 len floor32(mem[ceil32(arg4.length) + _1950 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2076) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1952 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2077 = mem[ceil32(arg4.length) + _1952 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1952 + 224])] = mem[ceil32(arg4.length) + _1952 + 256 len floor32(mem[ceil32(arg4.length) + _1952 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2077) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1954 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2078 = mem[ceil32(arg4.length) + _1954 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1954 + 224])] = mem[ceil32(arg4.length) + _1954 + 256 len floor32(mem[ceil32(arg4.length) + _1954 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2078) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1956 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2079 = mem[ceil32(arg4.length) + _1956 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1956 + 224])] = mem[ceil32(arg4.length) + _1956 + 256 len floor32(mem[ceil32(arg4.length) + _1956 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2079) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg3
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1958 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2080 = mem[ceil32(arg4.length) + _1958 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1958 + 224])] = mem[ceil32(arg4.length) + _1958 + 256 len floor32(mem[ceil32(arg4.length) + _1958 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2080) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1960 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _2081 = mem[ceil32(arg4.length) + _1960 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1960 + 224])] = mem[ceil32(arg4.length) + _1960 + 256 len floor32(mem[ceil32(arg4.length) + _1960 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2081) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
    else:
        if arg2:
            require ext_call.return_data[50 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1962 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2082 = mem[ceil32(arg4.length) + _1962 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1962 + 224])] = mem[ceil32(arg4.length) + _1962 + 256 len floor32(mem[ceil32(arg4.length) + _1962 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2082) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1964 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2083 = mem[ceil32(arg4.length) + _1964 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1964 + 224])] = mem[ceil32(arg4.length) + _1964 + 256 len floor32(mem[ceil32(arg4.length) + _1964 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2083) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1966 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2084 = mem[ceil32(arg4.length) + _1966 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1966 + 224])] = mem[ceil32(arg4.length) + _1966 + 256 len floor32(mem[ceil32(arg4.length) + _1966 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2084) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1968 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2085 = mem[ceil32(arg4.length) + _1968 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1968 + 224])] = mem[ceil32(arg4.length) + _1968 + 256 len floor32(mem[ceil32(arg4.length) + _1968 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2085) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1970 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2086 = mem[ceil32(arg4.length) + _1970 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1970 + 224])] = mem[ceil32(arg4.length) + _1970 + 256 len floor32(mem[ceil32(arg4.length) + _1970 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2086) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1972 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2087 = mem[ceil32(arg4.length) + _1972 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1972 + 224])] = mem[ceil32(arg4.length) + _1972 + 256 len floor32(mem[ceil32(arg4.length) + _1972 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2087) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1974 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2088 = mem[ceil32(arg4.length) + _1974 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1974 + 224])] = mem[ceil32(arg4.length) + _1974 + 256 len floor32(mem[ceil32(arg4.length) + _1974 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2088) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1976 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2089 = mem[ceil32(arg4.length) + _1976 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1976 + 224])] = mem[ceil32(arg4.length) + _1976 + 256 len floor32(mem[ceil32(arg4.length) + _1976 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2089) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1978 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2090 = mem[ceil32(arg4.length) + _1978 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1978 + 224])] = mem[ceil32(arg4.length) + _1978 + 256 len floor32(mem[ceil32(arg4.length) + _1978 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2090) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1980 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2091 = mem[ceil32(arg4.length) + _1980 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1980 + 224])] = mem[ceil32(arg4.length) + _1980 + 256 len floor32(mem[ceil32(arg4.length) + _1980 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2091) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1982 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2092 = mem[ceil32(arg4.length) + _1982 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1982 + 224])] = mem[ceil32(arg4.length) + _1982 + 256 len floor32(mem[ceil32(arg4.length) + _1982 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2092) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1984 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2093 = mem[ceil32(arg4.length) + _1984 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1984 + 224])] = mem[ceil32(arg4.length) + _1984 + 256 len floor32(mem[ceil32(arg4.length) + _1984 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2093) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
        else:
            require ext_call.return_data[18 len 14]
            mem[ceil32(arg4.length) + 128] = 2
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require arg4.length >= 96
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!pair'
            if arg1 != this.address:
                revert with 0, '!sender'
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1986 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2094 = mem[ceil32(arg4.length) + _1986 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1986 + 224])] = mem[ceil32(arg4.length) + _1986 + 256 len floor32(mem[ceil32(arg4.length) + _1986 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2094) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1988 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2095 = mem[ceil32(arg4.length) + _1988 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1988 + 224])] = mem[ceil32(arg4.length) + _1988 + 256 len floor32(mem[ceil32(arg4.length) + _1988 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2095) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1990 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2096 = mem[ceil32(arg4.length) + _1990 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1990 + 224])] = mem[ceil32(arg4.length) + _1990 + 256 len floor32(mem[ceil32(arg4.length) + _1990 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2096) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1992 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2097 = mem[ceil32(arg4.length) + _1992 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1992 + 224])] = mem[ceil32(arg4.length) + _1992 + 256 len floor32(mem[ceil32(arg4.length) + _1992 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2097) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _1994 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2098 = mem[ceil32(arg4.length) + _1994 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1994 + 224])] = mem[ceil32(arg4.length) + _1994 + 256 len floor32(mem[ceil32(arg4.length) + _1994 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2098) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _1996 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2099 = mem[ceil32(arg4.length) + _1996 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1996 + 224])] = mem[ceil32(arg4.length) + _1996 + 256 len floor32(mem[ceil32(arg4.length) + _1996 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2099) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
            else:
                if not arg2:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1998 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2100 = mem[ceil32(arg4.length) + _1998 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _1998 + 224])] = mem[ceil32(arg4.length) + _1998 + 256 len floor32(mem[ceil32(arg4.length) + _1998 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2100) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _2000 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2101 = mem[ceil32(arg4.length) + _2000 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2000 + 224])] = mem[ceil32(arg4.length) + _2000 + 256 len floor32(mem[ceil32(arg4.length) + _2000 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2101) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _2002 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2102 = mem[ceil32(arg4.length) + _2002 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2002 + 224])] = mem[ceil32(arg4.length) + _2002 + 256 len floor32(mem[ceil32(arg4.length) + _2002 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2102) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                else:
                    if not arg2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _2004 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2103 = mem[ceil32(arg4.length) + _2004 + 224]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2004 + 224])] = mem[ceil32(arg4.length) + _2004 + 256 len floor32(mem[ceil32(arg4.length) + _2004 + 224])]
                        require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                        if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                        mem[(32 * _2103) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                    else:
                        if arg3:
                            revert with 0, 'both amounts zero'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[172 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = mem[192]
                        mem[ceil32(arg4.length) + 324] = this.address
                        mem[ceil32(arg4.length) + 356] = block.timestamp + 60
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 228 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        if not arg2:
                            _2006 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2104 = mem[ceil32(arg4.length) + _2006 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2006 + 224])] = mem[ceil32(arg4.length) + _2006 + 256 len floor32(mem[ceil32(arg4.length) + _2006 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2104) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
                        else:
                            _2008 = mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            _2105 = mem[ceil32(arg4.length) + _2008 + 224]
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg4.length) + _2008 + 224])] = mem[ceil32(arg4.length) + _2008 + 256 len floor32(mem[ceil32(arg4.length) + _2008 + 224])]
                            require 1 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 224]
                            if mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] <= mem[192]:
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe7472616e736174696f6e206e6f742070726f66697461626c652c2063616e6e6f742072657061,
                                            mem[(32 * _2105) + ceil32(arg4.length) + ceil32(return_data.size) + 363 len 25]
    ('gt', ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4'))))), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), ('mem', ('range', 192, 32)))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(arg4.length) + ceil32(return_data.size) + 288] - mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
