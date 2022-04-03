contract main {




// =====================  Runtime code  =====================


#
#  - buyLoop(uint256 arg1, uint256 arg2, address[] arg3, uint256 arg4, bool arg5, address arg6, bool arg7)
#
address managerAddress;
uint256 TEST_SELL_DIVISOR;
uint8 koffeeMode;
mapping of uint8 stor3;
address stor4;

function TEST_SELL_DIVISOR() {
    return TEST_SELL_DIVISOR
}

function manager() {
    return managerAddress
}

function koffeeMode() {
    return bool(koffeeMode)
}

function isWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function kill() {
    if managerAddress != msg.sender:
        revert with 0, 'manager allowed only'
    selfdestruct(managerAddress)
}

function _fallback() payable {
    revert
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        if managerAddress != msg.sender:
            revert with 0, 'not whitelisted'
    stor4 = arg1
}

function drainEth() {
    if managerAddress != msg.sender:
        revert with 0, 'manager allowed only'
    call managerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function setKoffeeMode(bool arg1) {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        if managerAddress != msg.sender:
            revert with 0, 'not whitelisted'
    koffeeMode = uint8(arg1)
}

function setTestSellDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        if managerAddress != msg.sender:
            revert with 0, 'not whitelisted'
    TEST_SELL_DIVISOR = arg1
}

function sendEth(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        if managerAddress != msg.sender:
            revert with 0, 'not whitelisted'
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function setWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if managerAddress != msg.sender:
        revert with 0, 'manager allowed only'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function drainToken(address arg1) {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'manager allowed only'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args managerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getBuyAmtLoop(uint256 arg1, uint256 arg2, address[] arg3, uint256 arg4, bool arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    idx = arg1
    s = 0
    t = 1
    while idx <= arg2:
        if idx <= eth.balance(this.address):
            if not arg4:
                _46 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _48 = mem[96]
                u = 0
                while u < 32 * _48:
                    mem[u + mem[64] + 100] = mem[u + 128]
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _48) + _46 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _83 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _86 = mem[_83]
                require mem[_83] <= 4294967296
                require mem[_83] + 32 <= return_data.size
                require mem[_83 + mem[_83]] <= 4294967296 and mem[_83] + (32 * mem[_83 + mem[_83]]) + 32 <= return_data.size
                mem[_83 + ceil32(return_data.size)] = mem[_83 + mem[_83]]
                _91 = mem[_83 + _86]
                u = 0
                while u < 32 * _91:
                    mem[u + _83 + ceil32(return_data.size) + 32] = mem[u + _83 + _86 + 32]
                    u = u + 32
                    continue 
                mem[64] = (32 * _91) + _83 + ceil32(return_data.size) + 32
                require mem[96] - 1 < mem[_83 + ceil32(return_data.size)]
                if mem[(32 * mem[96] - 1) + _83 + ceil32(return_data.size) + 32] >= 0:
                    u = floor32(_91) + arg1
                    s = floor32(_91)
                    t = t + 1
                    continue 
            else:
                if t * arg4 / arg4 != t:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _49 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _51 = mem[96]
                u = 0
                while u < 32 * _51:
                    mem[u + mem[64] + 100] = mem[u + 128]
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _51) + _49 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _82 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _84 = mem[_82]
                require mem[_82] <= 4294967296
                require mem[_82] + 32 <= return_data.size
                require mem[_82 + mem[_82]] <= 4294967296 and mem[_82] + (32 * mem[_82 + mem[_82]]) + 32 <= return_data.size
                mem[_82 + ceil32(return_data.size)] = mem[_82 + mem[_82]]
                _90 = mem[_82 + _84]
                u = 0
                while u < 32 * _90:
                    mem[u + _82 + ceil32(return_data.size) + 32] = mem[u + _82 + _84 + 32]
                    u = u + 32
                    continue 
                mem[64] = (32 * _90) + _82 + ceil32(return_data.size) + 32
                require mem[96] - 1 < mem[_82 + ceil32(return_data.size)]
                if mem[(32 * mem[96] - 1) + _82 + ceil32(return_data.size) + 32] >= t * arg4:
                    idx = idx + arg1
                    s = idx
                    t = t + 1
                    continue 
        return s
    return s
}

function buyMulti(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    mem[0] = msg.sender
    mem[32] = 3
    if 1 == bool(stor3[msg.sender]):
        stor4 = arg5
        koffeeMode = uint8(arg6)
        if not uint8(arg6):
            idx = 0
            while idx < arg4.length:
                require idx < mem[(32 * arg3.length) + 128]
                _58 = mem[(32 * idx) + (32 * arg3.length) + 160]
                _59 = mem[64]
                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 68] = address(_58)
                mem[mem[64] + 100] = block.timestamp
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[s + mem[64] + 164] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _59 + -mem[64] + 160]
                if ext_call.success:
                    _102 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _104 = mem[_102]
                    require mem[_102] <= 4294967296
                    require mem[_102] + 32 <= return_data.size
                    require mem[_102 + mem[_102]] <= 4294967296 and mem[_102] + (32 * mem[_102 + mem[_102]]) + 32 <= return_data.size
                    mem[_102 + ceil32(return_data.size)] = mem[_102 + mem[_102]]
                    _110 = mem[_102 + _104]
                    s = 0
                    while s < 32 * _110:
                        mem[s + _102 + ceil32(return_data.size) + 32] = mem[s + _102 + _104 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _110) + _102 + ceil32(return_data.size) + 32
                    if eth.balance(this.address) >= arg1:
                        idx = idx + 1
                        continue 
                koffeeMode = uint8(bool(koffeeMode))
        else:
            idx = 0
            while idx < arg4.length:
                require idx < mem[(32 * arg3.length) + 128]
                _62 = mem[(32 * idx) + (32 * arg3.length) + 160]
                _63 = mem[64]
                mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 68] = address(_62)
                mem[mem[64] + 100] = block.timestamp
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[s + mem[64] + 164] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _63 + -mem[64] + 160]
                if ext_call.success:
                    if eth.balance(this.address) >= arg1:
                        idx = idx + 1
                        continue 
                koffeeMode = uint8(bool(koffeeMode))
    else:
        if managerAddress != msg.sender:
            revert with 0, 'not whitelisted'
        stor4 = arg5
        koffeeMode = uint8(arg6)
        if not uint8(arg6):
            idx = 0
            while idx < arg4.length:
                require idx < mem[(32 * arg3.length) + 128]
                _66 = mem[(32 * idx) + (32 * arg3.length) + 160]
                _67 = mem[64]
                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 68] = address(_66)
                mem[mem[64] + 100] = block.timestamp
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[s + mem[64] + 164] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _67 + -mem[64] + 160]
                if ext_call.success:
                    _103 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _106 = mem[_103]
                    require mem[_103] <= 4294967296
                    require mem[_103] + 32 <= return_data.size
                    require mem[_103 + mem[_103]] <= 4294967296 and mem[_103] + (32 * mem[_103 + mem[_103]]) + 32 <= return_data.size
                    mem[_103 + ceil32(return_data.size)] = mem[_103 + mem[_103]]
                    _111 = mem[_103 + _106]
                    s = 0
                    while s < 32 * _111:
                        mem[s + _103 + ceil32(return_data.size) + 32] = mem[s + _103 + _106 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _111) + _103 + ceil32(return_data.size) + 32
                    if eth.balance(this.address) >= arg1:
                        idx = idx + 1
                        continue 
                koffeeMode = uint8(bool(koffeeMode))
        else:
            idx = 0
            while idx < arg4.length:
                require idx < mem[(32 * arg3.length) + 128]
                _70 = mem[(32 * idx) + (32 * arg3.length) + 160]
                mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                mem[(32 * arg3.length) + (32 * arg4.length) + 164] = arg2
                mem[(32 * arg3.length) + (32 * arg4.length) + 228] = address(_70)
                mem[(32 * arg3.length) + (32 * arg4.length) + 260] = block.timestamp
                mem[(32 * arg3.length) + (32 * arg4.length) + 196] = 128
                mem[(32 * arg3.length) + (32 * arg4.length) + 292] = arg3.length
                s = 0
                while s < 32 * mem[96]:
                    mem[s + mem[64] + 164] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + (32 * arg3.length) + (32 * arg4.length) + -mem[64] + 320]
                if ext_call.success:
                    if eth.balance(this.address) >= arg1:
                        idx = idx + 1
                        continue 
                koffeeMode = uint8(bool(koffeeMode))
    koffeeMode = uint8(bool(koffeeMode))
}

function buy(uint256 arg1, address[] arg2, uint256 arg3, bool arg4, bool arg5, address arg6, bool arg7) {
    require calldata.size - 4 >= 224
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[0] = msg.sender
    mem[32] = 3
    if 1 == bool(stor3[msg.sender]):
        if eth.balance(this.address) < arg1:
            revert with 0, 'bo'
        stor4 = arg6
        koffeeMode = uint8(arg7)
        mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = arg1
        mem[(32 * arg2.length) + 164] = 64
        mem[(32 * arg2.length) + 196] = arg2.length
        mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _1895 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 32 <= return_data.size
        mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
        _1901 = mem[(32 * arg2.length) + _1895 + 128]
        mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg2.length) + _1895 + 128])] = mem[(32 * arg2.length) + _1895 + 160 len floor32(mem[(32 * arg2.length) + _1895 + 128])]
        require arg2.length - 1 < mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
        if mem[(32 * arg2.length - 1) + (32 * arg2.length) + ceil32(return_data.size) + 160] < arg3:
            revert with 0, 'amt'
        if koffeeMode:
            if not arg4:
                mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg3
                if arg5:
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), block.timestamp
                else:
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 228] = managerAddress
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), managerAddress, block.timestamp
            else:
                mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg3
                if arg5:
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), block.timestamp
                else:
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 228] = managerAddress
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), managerAddress, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg5:
                koffeeMode = uint8(bool(koffeeMode))
            require arg2.length - 1 < arg2.length
            if not TEST_SELL_DIVISOR:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
            staticcall mem[(32 * arg2.length - 1) + 140 len 20].balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'b=0'
            if not TEST_SELL_DIVISOR:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
            call mem[(32 * arg2.length - 1) + 140 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor4, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            if koffeeMode:
                staticcall stor4.WKCS() with:
                        gas gas_remaining wei
            else:
                staticcall stor4.WETH() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 0] = None
            require ext_code.size(stor4)
            if not koffeeMode:
                call stor4.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 64]), address(this.address), block.timestamp
            else:
                call stor4.0x970fde73 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 64]), address(this.address), block.timestamp
        else:
            if arg4:
                mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg3
                if arg5:
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), block.timestamp
                else:
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 228] = managerAddress
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), managerAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg5:
                    koffeeMode = uint8(bool(koffeeMode))
                require arg2.length - 1 < arg2.length
                if not TEST_SELL_DIVISOR:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                staticcall mem[(32 * arg2.length - 1) + 140 len 20].balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'b=0'
                if not TEST_SELL_DIVISOR:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                call mem[(32 * arg2.length - 1) + 140 len 20].approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor4, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                if koffeeMode:
                    staticcall stor4.WKCS() with:
                            gas gas_remaining wei
                else:
                    staticcall stor4.WETH() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 0] = None
                require ext_code.size(stor4)
                if not koffeeMode:
                    call stor4.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 64]), address(this.address), block.timestamp
                else:
                    call stor4.0x970fde73 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 64]), address(this.address), block.timestamp
            else:
                mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg3
                if arg5:
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    _5659 = mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160] <= 4294967296 and mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160]) + 32 <= return_data.size
                    mem[(32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160]
                    _5695 = mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + _5659 + 160]
                    mem[(32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + _5659 + 160])] = mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + _5659 + 192 len floor32(mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + _5659 + 160])]
                    if not arg5:
                        koffeeMode = uint8(bool(koffeeMode))
                    require arg2.length - 1 < arg2.length
                    if not TEST_SELL_DIVISOR:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                    staticcall mem[(32 * arg2.length - 1) + 140 len 20].balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'b=0'
                    if not TEST_SELL_DIVISOR:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                    call mem[(32 * arg2.length - 1) + 140 len 20].approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor4, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    if koffeeMode:
                        staticcall stor4.WKCS() with:
                                gas gas_remaining wei
                    else:
                        staticcall stor4.WETH() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _5695) + (32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 0] = None
                    require ext_code.size(stor4)
                    if not koffeeMode:
                        call stor4.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _5695) + (32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 64]), address(this.address), block.timestamp
                    else:
                        call stor4.0x970fde73 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _5695) + (32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 64]), address(this.address), block.timestamp
                else:
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 228] = managerAddress
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), managerAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    _5661 = mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160] <= 4294967296 and mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160]) + 32 <= return_data.size
                    mem[(32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160]
                    _5696 = mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + _5661 + 160]
                    mem[(32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + _5661 + 160])] = mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + _5661 + 192 len floor32(mem[(32 * _1901) + (32 * arg2.length) + ceil32(return_data.size) + _5661 + 160])]
                    if not arg5:
                        koffeeMode = uint8(bool(koffeeMode))
                    require arg2.length - 1 < arg2.length
                    if not TEST_SELL_DIVISOR:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                    staticcall mem[(32 * arg2.length - 1) + 140 len 20].balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'b=0'
                    if not TEST_SELL_DIVISOR:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                    call mem[(32 * arg2.length - 1) + 140 len 20].approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor4, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    if koffeeMode:
                        staticcall stor4.WKCS() with:
                                gas gas_remaining wei
                    else:
                        staticcall stor4.WETH() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _5696) + (32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 0] = None
                    require ext_code.size(stor4)
                    if not koffeeMode:
                        call stor4.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _5696) + (32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 64]), address(this.address), block.timestamp
                    else:
                        call stor4.0x970fde73 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _5696) + (32 * _1901) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 64]), address(this.address), block.timestamp
    else:
        if managerAddress != msg.sender:
            revert with 0, 'not whitelisted'
        if eth.balance(this.address) < arg1:
            revert with 0, 'bo'
        stor4 = arg6
        koffeeMode = uint8(arg7)
        mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = arg1
        mem[(32 * arg2.length) + 164] = 64
        mem[(32 * arg2.length) + 196] = arg2.length
        mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _1897 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 32 <= return_data.size
        mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
        _1902 = mem[(32 * arg2.length) + _1897 + 128]
        mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg2.length) + _1897 + 128])] = mem[(32 * arg2.length) + _1897 + 160 len floor32(mem[(32 * arg2.length) + _1897 + 128])]
        require arg2.length - 1 < mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
        if mem[(32 * arg2.length - 1) + (32 * arg2.length) + ceil32(return_data.size) + 160] < arg3:
            revert with 0, 'amt'
        if koffeeMode:
            if not arg4:
                mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg3
                if arg5:
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), block.timestamp
                else:
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 228] = managerAddress
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), managerAddress, block.timestamp
            else:
                mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg3
                if arg5:
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), block.timestamp
                else:
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 228] = managerAddress
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), managerAddress, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg5:
                koffeeMode = uint8(bool(koffeeMode))
            require arg2.length - 1 < arg2.length
            if not TEST_SELL_DIVISOR:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
            staticcall mem[(32 * arg2.length - 1) + 140 len 20].balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'b=0'
            if not TEST_SELL_DIVISOR:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
            call mem[(32 * arg2.length - 1) + 140 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor4, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            if koffeeMode:
                staticcall stor4.WKCS() with:
                        gas gas_remaining wei
            else:
                staticcall stor4.WETH() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 0] = None
            require ext_code.size(stor4)
            if not koffeeMode:
                call stor4.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 64]), address(this.address), block.timestamp
            else:
                call stor4.0x970fde73 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 64]), address(this.address), block.timestamp
        else:
            if arg4:
                mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg3
                if arg5:
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), block.timestamp
                else:
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 228] = managerAddress
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), managerAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg5:
                    koffeeMode = uint8(bool(koffeeMode))
                require arg2.length - 1 < arg2.length
                if not TEST_SELL_DIVISOR:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                staticcall mem[(32 * arg2.length - 1) + 140 len 20].balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'b=0'
                if not TEST_SELL_DIVISOR:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                call mem[(32 * arg2.length - 1) + 140 len 20].approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor4, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                if koffeeMode:
                    staticcall stor4.WKCS() with:
                            gas gas_remaining wei
                else:
                    staticcall stor4.WETH() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 0] = None
                require ext_code.size(stor4)
                if not koffeeMode:
                    call stor4.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 64]), address(this.address), block.timestamp
                else:
                    call stor4.0x970fde73 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 644 len 64]), address(this.address), block.timestamp
            else:
                mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg3
                if arg5:
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    _5663 = mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160] <= 4294967296 and mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160]) + 32 <= return_data.size
                    mem[(32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160]
                    _5703 = mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + _5663 + 160]
                    mem[(32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + _5663 + 160])] = mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + _5663 + 192 len floor32(mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + _5663 + 160])]
                    if not arg5:
                        koffeeMode = uint8(bool(koffeeMode))
                    require arg2.length - 1 < arg2.length
                    if not TEST_SELL_DIVISOR:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                    staticcall mem[(32 * arg2.length - 1) + 140 len 20].balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'b=0'
                    if not TEST_SELL_DIVISOR:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                    call mem[(32 * arg2.length - 1) + 140 len 20].approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor4, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    if koffeeMode:
                        staticcall stor4.WKCS() with:
                                gas gas_remaining wei
                    else:
                        staticcall stor4.WETH() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _5703) + (32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 0] = None
                    require ext_code.size(stor4)
                    if not koffeeMode:
                        call stor4.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _5703) + (32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 64]), address(this.address), block.timestamp
                    else:
                        call stor4.0x970fde73 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _5703) + (32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 64]), address(this.address), block.timestamp
                else:
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 228] = managerAddress
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 128
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    require ext_code.size(stor4)
                    call stor4.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), managerAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    _5665 = mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160] <= 4294967296 and mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160]) + 32 <= return_data.size
                    mem[(32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 160]
                    _5704 = mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + _5665 + 160]
                    mem[(32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + _5665 + 160])] = mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + _5665 + 192 len floor32(mem[(32 * _1902) + (32 * arg2.length) + ceil32(return_data.size) + _5665 + 160])]
                    if not arg5:
                        koffeeMode = uint8(bool(koffeeMode))
                    require arg2.length - 1 < arg2.length
                    if not TEST_SELL_DIVISOR:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                    staticcall mem[(32 * arg2.length - 1) + 140 len 20].balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'b=0'
                    if not TEST_SELL_DIVISOR:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                    call mem[(32 * arg2.length - 1) + 140 len 20].approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor4, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    if koffeeMode:
                        staticcall stor4.WKCS() with:
                                gas gas_remaining wei
                    else:
                        staticcall stor4.WETH() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _5704) + (32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 0] = None
                    require ext_code.size(stor4)
                    if not koffeeMode:
                        call stor4.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _5704) + (32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 64]), address(this.address), block.timestamp
                    else:
                        call stor4.0x970fde73 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / TEST_SELL_DIVISOR, Mask(255, 1, arg1 / TEST_SELL_DIVISOR), Array(len=2, data=mem[(32 * _5704) + (32 * _1902) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 676 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) > eth.balance(this.address)
    revert with 0, 'SafeMath: subtraction overflow'
}



}
