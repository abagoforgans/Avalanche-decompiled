contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address owner; offset 16
uint256 stor0; offset 8
array of address stor1;

function owner() {
    return owner
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function withdrawEther() {
    if owner != msg.sender:
        revert with 0, 'caller is not the owner!'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            owner = msg.sender
            Mask(248, 0, stor0.field_8) = 0
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'caller is not the owner!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sendMoneyToOther(address[] arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'caller is not the owner!'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        call mem[(32 * idx) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function swapExactAvaxForTokens(address arg1, address[] arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    idx = 0
    s = 0
    while idx < stor1.length:
        mem[0] = 1
        if idx == -1:
            revert with 'NH{q', 17
        if stor1[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s != 1:
        revert with 0, 'wtf!'
    if arg6 > -2:
        revert with 'NH{q', 17
    mem[floor32(arg2.length) + 97] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 101] = arg4
    mem[floor32(arg2.length) + 133] = 128
    mem[floor32(arg2.length) + 229] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 261
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 165] = arg3
    mem[floor32(arg2.length) + 197] = arg6 + 1
    require ext_code.size(arg1)
    call arg1.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg5 wei
         gas gas_remaining wei
        args arg4, Array(len=arg2.length, data=mem[floor32(arg2.length) + 261 len 32 * arg2.length]), address(arg3), arg6 + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _23 = mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32
    require mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 128 < floor32(arg2.length) + return_data.size + 97
    _24 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 98
    mem[floor32(arg2.length) + ceil32(return_data.size) + 97] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]
    require _23 + (32 * _24) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _23 + 129
    t = floor32(arg2.length) + ceil32(return_data.size) + 129
    while idx < _24:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function swapExactTokensForTokens(address arg1, address[] arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    idx = 0
    s = 0
    while idx < stor1.length:
        mem[0] = 1
        if idx == -1:
            revert with 'NH{q', 17
        if stor1[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s != 1:
        revert with 0, 'wtf!'
    if 0 >= arg2.length:
        revert with 'NH{q', 50
    _11 = mem[128]
    if not arg5:
        mem[floor32(arg2.length) + 133] = arg1
        mem[floor32(arg2.length) + 165] = arg5
        mem[floor32(arg2.length) + 97] = 68
        mem[floor32(arg2.length) + 129 len 4] = approve(address arg1, uint256 arg2)
        mem[floor32(arg2.length) + 197] = 32
        mem[floor32(arg2.length) + 229] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(_11)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(_11)):
            revert with 0, 'Address: call to non-contract'
        mem[floor32(arg2.length) + 261 len 96] = 0, address(arg1), arg5, 0
        mem[floor32(arg2.length) + 329] = 0
        call address(_11) with:
           funct Mask(32, 224, 0, address(arg1), arg5, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), arg5, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if arg2.length > 0:
                    revert with memory
                      from 128
                       len arg2.length
                revert with 0, 'SafeERC20: low-level call failed'
            if arg2.length <= 0:
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                mem[floor32(arg2.length) + 265] = this.address
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[floor32(arg2.length) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= arg5:
                    revert with 0, 'balance too small'
                if arg6 > -2:
                    revert with 'NH{q', 17
                mem[floor32(arg2.length) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg2.length) + ceil32(return_data.size) + 265] = arg5
                mem[floor32(arg2.length) + ceil32(return_data.size) + 297] = arg4
                mem[floor32(arg2.length) + ceil32(return_data.size) + 329] = 160
                mem[floor32(arg2.length) + ceil32(return_data.size) + 425] = arg2.length
                idx = 0
                s = 128
                t = floor32(arg2.length) + ceil32(return_data.size) + 457
                while idx < arg2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg2.length) + ceil32(return_data.size) + 361] = arg3
                mem[floor32(arg2.length) + ceil32(return_data.size) + 393] = arg6 + 1
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg4, Array(len=arg2.length, data=mem[floor32(arg2.length) + ceil32(return_data.size) + 457 len 32 * arg2.length]), address(arg3), arg6 + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261
                require return_data.size >= 32
                _871 = mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32
                require mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 292 < floor32(arg2.length) + ceil32(return_data.size) + return_data.size + 261
                _887 = mem[floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]
                if mem[floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg2.length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 262 > test266151307() or floor32(mem[floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261] = mem[floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]
                require _871 + (32 * _887) + 32 <= return_data.size
                idx = 0
                s = floor32(arg2.length) + ceil32(return_data.size) + _871 + 293
                t = floor32(arg2.length) + (2 * ceil32(return_data.size)) + 293
                while idx < _887:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                require arg2.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                mem[floor32(arg2.length) + 265] = this.address
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[floor32(arg2.length) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= arg5:
                    revert with 0, 'balance too small'
                if arg6 > -2:
                    revert with 'NH{q', 17
                mem[floor32(arg2.length) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg2.length) + ceil32(return_data.size) + 265] = arg5
                mem[floor32(arg2.length) + ceil32(return_data.size) + 297] = arg4
                mem[floor32(arg2.length) + ceil32(return_data.size) + 329] = 160
                mem[floor32(arg2.length) + ceil32(return_data.size) + 425] = arg2.length
                idx = 0
                s = 128
                t = floor32(arg2.length) + ceil32(return_data.size) + 457
                while idx < arg2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg2.length) + ceil32(return_data.size) + 361] = arg3
                mem[floor32(arg2.length) + ceil32(return_data.size) + 393] = arg6 + 1
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg4, Array(len=arg2.length, data=mem[floor32(arg2.length) + ceil32(return_data.size) + 457 len 32 * arg2.length]), address(arg3), arg6 + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261
                require return_data.size >= 32
                _872 = mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32
                require mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 292 < floor32(arg2.length) + ceil32(return_data.size) + return_data.size + 261
                _888 = mem[floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]
                if mem[floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg2.length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 262 > test266151307() or floor32(mem[floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261] = mem[floor32(arg2.length) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]
                require _872 + (32 * _888) + 32 <= return_data.size
                idx = 0
                s = floor32(arg2.length) + ceil32(return_data.size) + _872 + 293
                t = floor32(arg2.length) + (2 * ceil32(return_data.size)) + 293
                while idx < _888:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
        else:
            mem[floor32(arg2.length) + 261] = return_data.size
            mem[floor32(arg2.length) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                mem[floor32(arg2.length) + ceil32(return_data.size) + 266] = this.address
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[floor32(arg2.length) + ceil32(return_data.size) + 262] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= arg5:
                    revert with 0, 'balance too small'
                if arg6 > -2:
                    revert with 'NH{q', 17
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = arg5
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = arg4
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = 160
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = arg2.length
                idx = 0
                s = 128
                t = floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 458
                while idx < arg2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = arg3
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = arg6 + 1
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg4, Array(len=arg2.length, data=mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 458 len 32 * arg2.length]), address(arg3), arg6 + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg2.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 262
                require return_data.size >= 32
                _873 = mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32
                require mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 293 < floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 262
                _889 = mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]
                if mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg2.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 263 > test266151307() or floor32(mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[floor32(arg2.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 262] = mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]
                require _873 + (32 * _889) + 32 <= return_data.size
                idx = 0
                s = floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + _873 + 294
                t = floor32(arg2.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 294
                while idx < _889:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                require return_data.size >= 32
                require mem[floor32(arg2.length) + 293] == bool(mem[floor32(arg2.length) + 293])
                if not mem[floor32(arg2.length) + 293]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                mem[floor32(arg2.length) + ceil32(return_data.size) + 266] = this.address
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[floor32(arg2.length) + ceil32(return_data.size) + 262] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= arg5:
                    revert with 0, 'balance too small'
                if arg6 > -2:
                    revert with 'NH{q', 17
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = arg5
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = arg4
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = 160
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = arg2.length
                idx = 0
                s = 128
                t = floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 458
                while idx < arg2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = arg3
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = arg6 + 1
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg4, Array(len=arg2.length, data=mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 458 len 32 * arg2.length]), address(arg3), arg6 + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg2.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 262
                require return_data.size >= 32
                _874 = mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32
                require mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 293 < floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 262
                _890 = mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]
                if mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg2.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 263 > test266151307() or floor32(mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[floor32(arg2.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 262] = mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]
                require _874 + (32 * _890) + 32 <= return_data.size
                idx = 0
                s = floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + _874 + 294
                t = floor32(arg2.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 294
                while idx < _890:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        mem[floor32(arg2.length) + 101] = this.address
        mem[floor32(arg2.length) + 133] = arg1
        require ext_code.size(address(_11))
        staticcall address(_11).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        mem[floor32(arg2.length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[floor32(arg2.length) + ceil32(return_data.size) + 133] = arg1
        mem[floor32(arg2.length) + ceil32(return_data.size) + 165] = arg5
        mem[floor32(arg2.length) + ceil32(return_data.size) + 97] = 68
        mem[floor32(arg2.length) + ceil32(return_data.size) + 129 len 4] = approve(address arg1, uint256 arg2)
        mem[floor32(arg2.length) + ceil32(return_data.size) + 197] = 32
        mem[floor32(arg2.length) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
        if ext_code.hash(address(_11)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(_11)):
            revert with 0, 'Address: call to non-contract'
        mem[floor32(arg2.length) + ceil32(return_data.size) + 261 len 96] = 0, address(arg1), arg5, 0
        mem[floor32(arg2.length) + ceil32(return_data.size) + 329] = 0
        call address(_11) with:
           funct Mask(32, 224, 0, address(arg1), arg5, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), arg5, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if arg2.length > 0:
                    revert with memory
                      from 128
                       len arg2.length
                revert with 0, 'SafeERC20: low-level call failed'
            if arg2.length <= 0:
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                mem[floor32(arg2.length) + ceil32(return_data.size) + 265] = this.address
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[floor32(arg2.length) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= arg5:
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 265] = 32
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 297] = 17
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 329] = 'balance too small'
                    revert with memory
                      from floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261
                       len ceil32(return_data.size) + 100
                if arg6 > -2:
                    revert with 'NH{q', 17
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 265] = arg5
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 297] = arg4
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 329] = 160
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 425] = arg2.length
                idx = 0
                s = 128
                t = floor32(arg2.length) + (2 * ceil32(return_data.size)) + 457
                while idx < arg2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 361] = arg3
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 393] = arg6 + 1
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg4, Array(len=arg2.length, data=mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 457 len 32 * arg2.length]), address(arg3), arg6 + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg2.length) + (4 * ceil32(return_data.size)) + 261
                require return_data.size >= 32
                _879 = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32
                require mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 292 < floor32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 261
                _895 = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]
                if mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg2.length) + (4 * ceil32(return_data.size)) + floor32(mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 262 > test266151307() or floor32(mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 261] = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]
                require _879 + (32 * _895) + 32 <= return_data.size
                idx = 0
                s = floor32(arg2.length) + (2 * ceil32(return_data.size)) + _879 + 293
                t = floor32(arg2.length) + (4 * ceil32(return_data.size)) + 293
                while idx < _895:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                require arg2.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                mem[floor32(arg2.length) + ceil32(return_data.size) + 265] = this.address
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[floor32(arg2.length) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= arg5:
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 265] = 32
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 297] = 17
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 329] = 'balance too small'
                    revert with memory
                      from floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261
                       len ceil32(return_data.size) + 100
                if arg6 > -2:
                    revert with 'NH{q', 17
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 265] = arg5
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 297] = arg4
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 329] = 160
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 425] = arg2.length
                idx = 0
                s = 128
                t = floor32(arg2.length) + (2 * ceil32(return_data.size)) + 457
                while idx < arg2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 361] = arg3
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 393] = arg6 + 1
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg4, Array(len=arg2.length, data=mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 457 len 32 * arg2.length]), address(arg3), arg6 + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg2.length) + (4 * ceil32(return_data.size)) + 261
                require return_data.size >= 32
                _880 = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32
                require mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 292 < floor32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 261
                _896 = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]
                if mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg2.length) + (4 * ceil32(return_data.size)) + floor32(mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 262 > test266151307() or floor32(mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 261] = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]
                require _880 + (32 * _896) + 32 <= return_data.size
                idx = 0
                s = floor32(arg2.length) + (2 * ceil32(return_data.size)) + _880 + 293
                t = floor32(arg2.length) + (4 * ceil32(return_data.size)) + 293
                while idx < _896:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
        else:
            mem[floor32(arg2.length) + ceil32(return_data.size) + 261] = return_data.size
            mem[floor32(arg2.length) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = this.address
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= arg5:
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 266] = 32
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 298] = 17
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = 'balance too small'
                    revert with memory
                      from floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262
                       len ceil32(return_data.size) + 100
                if arg6 > -2:
                    revert with 'NH{q', 17
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 266] = arg5
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 298] = arg4
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = 160
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 426] = arg2.length
                idx = 0
                s = 128
                t = floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 458
                while idx < arg2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362] = arg3
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 394] = arg6 + 1
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg4, Array(len=arg2.length, data=mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 458 len 32 * arg2.length]), address(arg3), arg6 + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 262
                require return_data.size >= 32
                _881 = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32
                require mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 293 < floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 262
                _897 = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]
                if mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 263 > test266151307() or floor32(mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 262] = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]
                require _881 + (32 * _897) + 32 <= return_data.size
                idx = 0
                s = floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _881 + 294
                t = floor32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 294
                while idx < _897:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                require return_data.size >= 32
                require mem[floor32(arg2.length) + ceil32(return_data.size) + 293] == bool(mem[floor32(arg2.length) + ceil32(return_data.size) + 293])
                if not mem[floor32(arg2.length) + ceil32(return_data.size) + 293]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = this.address
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[floor32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= arg5:
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 266] = 32
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 298] = 17
                    mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = 'balance too small'
                    revert with memory
                      from floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262
                       len ceil32(return_data.size) + 100
                if arg6 > -2:
                    revert with 'NH{q', 17
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 266] = arg5
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 298] = arg4
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = 160
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 426] = arg2.length
                idx = 0
                s = 128
                t = floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 458
                while idx < arg2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362] = arg3
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 394] = arg6 + 1
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg4, Array(len=arg2.length, data=mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 458 len 32 * arg2.length]), address(arg3), arg6 + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 262
                require return_data.size >= 32
                _882 = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32
                require mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 293 < floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 262
                _898 = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]
                if mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 263 > test266151307() or floor32(mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 262] = mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]
                require _882 + (32 * _898) + 32 <= return_data.size
                idx = 0
                s = floor32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _882 + 294
                t = floor32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 294
                while idx < _898:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
}



}
