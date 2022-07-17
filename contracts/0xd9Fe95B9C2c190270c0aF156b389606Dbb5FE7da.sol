contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function sub_8db627e1(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_b4fad1b5(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_f5ebb198(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 25 * 10^17 != msg.value:
        revert with 0, '2.5 avax to mint'
    require ext_code.size(stor1)
    call stor1.0x18160ddd with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = block.timestamp
    mem[ceil32(return_data.size) + 160] = block.difficulty
    mem[ceil32(return_data.size) + 192] = address(arg2)
    mem[ceil32(return_data.size) + 212] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 116
    mem[64] = ceil32(return_data.size) + 244
    mem[ceil32(return_data.size) + 244] = 0xbc9f63a100000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    call stor1.mem[var359004 len 4] with:
         gas gas_remaining wei
        args mem[var359004 + 4 len var359005 - 4]
    mem[var359006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 244
    require var363002 - var363001 >= 32
    require mem[var367001] == mem[var367001]
    if uint8(var367009) >= mem[var367001]:
        if uint16(var367010) < uint16(arg1):
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 244] = 0
        else:
            mem[(2 * ceil32(return_data.size)) + 248] = address(arg2)
            require ext_code.size(stor1)
            call stor1.mint(address arg1) with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 248 len ceil32(return_data.size) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 244] = 1
        return memory
          from (2 * ceil32(return_data.size)) + 244
           len ceil32(return_data.size) + 32
    mem[(2 * ceil32(return_data.size)) + 244] = 0x39af9eb00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 248] = uint8(var367009)
    require ext_code.size(stor1)
    call stor1.tiers(uint256 arg1) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 248 len ceil32(return_data.size) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 244 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _2288 = mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216
    require mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 <= test266151307()
    require return_data.size - mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 >= 160
    if not bool((4 * ceil32(return_data.size)) + 404 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + 404
    _2293 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + 244]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + 244] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + 244] + 275 < (2 * ceil32(return_data.size)) + return_data.size + 244
    _2294 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + 244] + 244]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + 244] + 244] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + 244] + 244])) + 405 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + 244] + 244])) + 161 < 160:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + 244] + 244])) + 405
    mem[(4 * ceil32(return_data.size)) + 404] = _2294
    require mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + _2293 + _2294 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 436 len ceil32(_2294)] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 244 len 4], uint8(var367009) << 216 + _2293 + 276 len ceil32(_2294)]
    if ceil32(_2294) <= _2294:
        mem[(4 * ceil32(return_data.size)) + 244] = (4 * ceil32(return_data.size)) + 404
        require mem[(2 * ceil32(return_data.size)) + _2288 + 276] == mem[(2 * ceil32(return_data.size)) + _2288 + 307 len 1]
        mem[(4 * ceil32(return_data.size)) + 276] = mem[(2 * ceil32(return_data.size)) + _2288 + 276]
        require mem[(2 * ceil32(return_data.size)) + _2288 + 308] == mem[(2 * ceil32(return_data.size)) + _2288 + 339 len 1]
        mem[(4 * ceil32(return_data.size)) + 308] = mem[(2 * ceil32(return_data.size)) + _2288 + 308]
        require mem[(2 * ceil32(return_data.size)) + _2288 + 340] == mem[(2 * ceil32(return_data.size)) + _2288 + 340]
        mem[(4 * ceil32(return_data.size)) + 340] = mem[(2 * ceil32(return_data.size)) + _2288 + 340]
        require mem[(2 * ceil32(return_data.size)) + _2288 + 372] == mem[(2 * ceil32(return_data.size)) + _2288 + 372]
        mem[(4 * ceil32(return_data.size)) + 372] = mem[(2 * ceil32(return_data.size)) + _2288 + 372]
        mem[mem[64]] = 0x39af9eb00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = uint8(var367009)
        require ext_code.size(stor1)
        call stor1.tiers(uint256 arg1) with:
             gas gas_remaining wei
            args (var367009 << 248)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2388 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2390 = mem[_2388]
        require mem[_2388] <= test266151307()
        require return_data.size - mem[_2388] >= 160
        if not bool(_2388 + ceil32(return_data.size) + 160 <= test266151307()):
            revert with 'NH{q', 65
        mem[64] = _2388 + ceil32(return_data.size) + 160
        require mem[_2388 + _2390] <= test266151307()
        require _2388 + _2390 + mem[_2388 + _2390] + 31 < _2388 + return_data.size
        if mem[_2388 + _2390 + mem[_2388 + _2390]] > test266151307():
            revert with 'NH{q', 65
        if _2388 + ceil32(return_data.size) + ceil32(ceil32(mem[_2388 + _2390 + mem[_2388 + _2390]])) + 161 > test266151307() or ceil32(ceil32(mem[_2388 + _2390 + mem[_2388 + _2390]])) + 161 < 160:
            revert with 'NH{q', 65
        require _2390 + mem[_2388 + _2390] + mem[_2388 + _2390 + mem[_2388 + _2390]] + 32 <= return_data.size
        # nil
    else:
        mem[(4 * ceil32(return_data.size)) + _2294 + 436] = 0
        mem[(4 * ceil32(return_data.size)) + 244] = (4 * ceil32(return_data.size)) + 404
        require mem[(2 * ceil32(return_data.size)) + _2288 + 276] == mem[(2 * ceil32(return_data.size)) + _2288 + 307 len 1]
        mem[(4 * ceil32(return_data.size)) + 276] = mem[(2 * ceil32(return_data.size)) + _2288 + 276]
        require mem[(2 * ceil32(return_data.size)) + _2288 + 308] == mem[(2 * ceil32(return_data.size)) + _2288 + 339 len 1]
        mem[(4 * ceil32(return_data.size)) + 308] = mem[(2 * ceil32(return_data.size)) + _2288 + 308]
        require mem[(2 * ceil32(return_data.size)) + _2288 + 340] == mem[(2 * ceil32(return_data.size)) + _2288 + 340]
        mem[(4 * ceil32(return_data.size)) + 340] = mem[(2 * ceil32(return_data.size)) + _2288 + 340]
        require mem[(2 * ceil32(return_data.size)) + _2288 + 372] == mem[(2 * ceil32(return_data.size)) + _2288 + 372]
        mem[(4 * ceil32(return_data.size)) + 372] = mem[(2 * ceil32(return_data.size)) + _2288 + 372]
        mem[mem[64]] = 0x39af9eb00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = uint8(var367009)
        require ext_code.size(stor1)
        call stor1.tiers(uint256 arg1) with:
             gas gas_remaining wei
            args (var367009 << 248)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2389 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2391 = mem[_2389]
        require mem[_2389] <= test266151307()
        require return_data.size - mem[_2389] >= 160
        if not bool(_2389 + ceil32(return_data.size) + 160 <= test266151307()):
            revert with 'NH{q', 65
        mem[64] = _2389 + ceil32(return_data.size) + 160
        require mem[_2389 + _2391] <= test266151307()
        require _2389 + _2391 + mem[_2389 + _2391] + 31 < _2389 + return_data.size
        if mem[_2389 + _2391 + mem[_2389 + _2391]] > test266151307():
            revert with 'NH{q', 65
        if _2389 + ceil32(return_data.size) + ceil32(ceil32(mem[_2389 + _2391 + mem[_2389 + _2391]])) + 161 > test266151307() or ceil32(ceil32(mem[_2389 + _2391 + mem[_2389 + _2391]])) + 161 < 160:
            revert with 'NH{q', 65
        require _2391 + mem[_2389 + _2391] + mem[_2389 + _2391 + mem[_2389 + _2391]] + 32 <= return_data.size
        # nil
}



}
