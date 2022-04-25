contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address stor0;
address owner; offset 16
uint256 stor0; offset 16

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
    return ext_call.return_data[0]
}

function initialize() {
    if uint8(stor0.field_8):
        Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
        else:
            uint16(stor0.field_0) = 257
            Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
            uint8(stor0.field_8) = 0
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
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'caller is not the owner!'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        call mem[(32 * idx) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function swapExactBNBForTokens(address arg1, address[] arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg3 == arg3
    if 1 > !arg6:
        revert with 0, 17
    mem[ceil32(32 * arg2.length) + 97] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg2.length) + 101] = arg4
    mem[ceil32(32 * arg2.length) + 133] = 128
    mem[ceil32(32 * arg2.length) + 229] = arg2.length
    idx = 0
    s = 128
    t = ceil32(32 * arg2.length) + 261
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * arg2.length) + 165] = arg3
    mem[ceil32(32 * arg2.length) + 197] = arg6 + 1
    require ext_code.size(arg1)
    call arg1.0x9cf68911 with:
       value arg5 wei
         gas gas_remaining wei
        args arg4, Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + 261 len 32 * arg2.length]), address(arg3), arg6 + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * arg2.length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require ceil32(32 * arg2.length) + return_data.size + 97 > ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 128
    if mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 1 < 0 or ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    require mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 32 <= return_data.size
}

function swapExactETHForTokens(address arg1, address[] arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg3 == arg3
    if 1 > !arg6:
        revert with 0, 17
    mem[ceil32(32 * arg2.length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg2.length) + 101] = arg4
    mem[ceil32(32 * arg2.length) + 133] = 128
    mem[ceil32(32 * arg2.length) + 229] = arg2.length
    idx = 0
    s = 128
    t = ceil32(32 * arg2.length) + 261
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * arg2.length) + 165] = arg3
    mem[ceil32(32 * arg2.length) + 197] = arg6 + 1
    require ext_code.size(arg1)
    call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg5 wei
         gas gas_remaining wei
        args arg4, Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + 261 len 32 * arg2.length]), address(arg3), arg6 + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * arg2.length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require ceil32(32 * arg2.length) + return_data.size + 97 > ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 128
    if mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 1 < 0 or ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    require mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 32 <= return_data.size
}

function swapExactAvaxForTokens(address arg1, address[] arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg3 == arg3
    if 1 > !arg6:
        revert with 0, 17
    mem[ceil32(32 * arg2.length) + 97] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg2.length) + 101] = arg4
    mem[ceil32(32 * arg2.length) + 133] = 128
    mem[ceil32(32 * arg2.length) + 229] = arg2.length
    idx = 0
    s = 128
    t = ceil32(32 * arg2.length) + 261
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * arg2.length) + 165] = arg3
    mem[ceil32(32 * arg2.length) + 197] = arg6 + 1
    require ext_code.size(arg1)
    call arg1.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg5 wei
         gas gas_remaining wei
        args arg4, Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + 261 len 32 * arg2.length]), address(arg3), arg6 + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * arg2.length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require ceil32(32 * arg2.length) + return_data.size + 97 > ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 128
    if mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 1 < 0 or ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    require mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg4) >> 32 + 97]) + 32 <= return_data.size
}

function swapExactTokensForTokens(address arg1, address[] arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg3 == arg3
    if 0 >= arg2.length:
        revert with 0, 50
    _409 = mem[128]
    if not arg5:
        mem[ceil32(32 * arg2.length) + 133] = arg1
        mem[ceil32(32 * arg2.length) + 97] = 68
        mem[ceil32(32 * arg2.length) + 129 len 4] = approve(address rg1, uint256 rg2)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_409)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(_409)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(32 * arg2.length) + 261 len 96] = 0, address(arg1), arg5, 0
        mem[ceil32(32 * arg2.length) + 329] = 0
        call address(_409) with:
           funct Mask(32, 224, 0, address(arg1), arg5, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), arg5, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if arg2.length:
                    revert with memory
                      from 128
                       len arg2.length
                revert with 0, 'SafeERC20: low-level call failed'
            if arg2.length:
                require arg2.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if 0 >= arg2.length:
                revert with 0, 50
            mem[ceil32(32 * arg2.length) + 265] = this.address
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(32 * arg2.length) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg5:
                revert with 0, 'balance too small'
            if 1 > !arg6:
                revert with 0, 17
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 265] = arg5
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 297] = arg4
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 329] = 160
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 425] = arg2.length
            idx = 0
            s = 128
            t = ceil32(32 * arg2.length) + ceil32(return_data.size) + 457
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 361] = arg3
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 393] = arg6 + 1
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg5, arg4, Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 457 len 32 * arg2.length]), address(arg3), arg6 + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261
            require return_data.size >= 32
            require mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
            require ceil32(32 * arg2.length) + ceil32(return_data.size) + return_data.size + 261 > ceil32(32 * arg2.length) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 292
            if mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 1 < 0 or ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 262 > test266151307():
                revert with 0, 65
            require mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 32 <= return_data.size
        else:
            mem[ceil32(32 * arg2.length) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(32 * arg2.length) + 293] == bool(mem[ceil32(32 * arg2.length) + 293])
                if not mem[ceil32(32 * arg2.length) + 293]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if 0 >= arg2.length:
                revert with 0, 50
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 266] = this.address
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 262] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg5:
                revert with 0, 'balance too small'
            if 1 > !arg6:
                revert with 0, 17
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = arg5
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = arg4
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = 160
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = arg2.length
            idx = 0
            s = 128
            t = ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 458
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = arg3
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = arg6 + 1
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg5, arg4, Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 458 len 32 * arg2.length]), address(arg3), arg6 + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 262
            require return_data.size >= 32
            require mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
            require ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 262 > ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 293
            if mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 1 < 0 or ceil32(32 * arg2.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 263 > test266151307():
                revert with 0, 65
            require mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 32 <= return_data.size
    else:
        mem[ceil32(32 * arg2.length) + 101] = this.address
        mem[ceil32(32 * arg2.length) + 133] = arg1
        require ext_code.size(address(_409))
        staticcall address(_409).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg1
        mem[ceil32(32 * arg2.length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 133] = arg1
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 97] = 68
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 129 len 4] = approve(address rg1, uint256 rg2)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_409)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(_409)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 261 len 96] = 0, address(arg1), arg5, 0
        mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 329] = 0
        call address(_409) with:
           funct Mask(32, 224, 0, address(arg1), arg5, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), arg5, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if arg2.length:
                    revert with memory
                      from 128
                       len arg2.length
                revert with 0, 'SafeERC20: low-level call failed'
            if arg2.length:
                require arg2.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if 0 >= arg2.length:
                revert with 0, 50
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 265] = this.address
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg5:
                mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 265] = 32
                mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 297] = 17
                mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 329] = 0x62616c616e636520746f6f20736d616c6c000000000000000000000000000000
                revert with memory
                  from ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261
                   len ceil32(return_data.size) + 100
            if 1 > !arg6:
                revert with 0, 17
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 265] = arg5
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 297] = arg4
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 329] = 160
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 425] = arg2.length
            idx = 0
            s = 128
            t = ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 457
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 361] = arg3
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 393] = arg6 + 1
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg5, arg4, Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 457 len 32 * arg2.length]), address(arg3), arg6 + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * arg2.length) + (4 * ceil32(return_data.size)) + 261
            require return_data.size >= 32
            require mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
            require ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 261 > ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 292
            if mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 1 < 0 or ceil32(32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 262 > test266151307():
                revert with 0, 65
            require mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 261 len 4], Mask(224, 32, arg5) >> 32 + 261]) + 32 <= return_data.size
        else:
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 293] == bool(mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 293])
                if not mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 293]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if 0 >= arg2.length:
                revert with 0, 50
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = this.address
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg5:
                mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 266] = 32
                mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 298] = 17
                mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = 0x62616c616e636520746f6f20736d616c6c000000000000000000000000000000
                revert with memory
                  from ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262
                   len ceil32(return_data.size) + 100
            if 1 > !arg6:
                revert with 0, 17
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 266] = arg5
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 298] = arg4
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = 160
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 426] = arg2.length
            idx = 0
            s = 128
            t = ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 458
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362] = arg3
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 394] = arg6 + 1
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg5, arg4, Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 458 len 32 * arg2.length]), address(arg3), arg6 + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 262
            require return_data.size >= 32
            require mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
            require ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 262 > ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 293
            if mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 1 < 0 or ceil32(32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 263 > test266151307():
                revert with 0, 65
            require mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg5) >> 32 + 262]) + 32 <= return_data.size
}



}
