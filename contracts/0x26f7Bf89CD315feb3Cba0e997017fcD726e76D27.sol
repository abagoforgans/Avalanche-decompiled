contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function skim(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = arg2
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xa271a759: ext_call.return_data[0], arg1, arg2
    return ext_call.return_data[0]
}

function sub_71663a1a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ext_code.size(address(('cd', 4)[2]))
    staticcall address(('cd', 4)[2]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[ceil32(return_data.size) + 128] = 32
    mem[ceil32(return_data.size) + 160] = ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[ceil32(return_data.size) + 192] = address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[ceil32(return_data.size) + 224] = address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    mem[ceil32(return_data.size) + 256] = address(('cd', 4)[2])
    require ('cd', 4)[3] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 4)])
    mem[ceil32(return_data.size) + 288] = 192
    mem[ceil32(return_data.size) + 352] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = ceil32(return_data.size) + 384
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
    mem[ceil32(return_data.size) + 320] = (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 224
    mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 384] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    idx = 0
    s = cd[4] + ('cd', 4)[4] + 36
    t = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 416
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(('cd', 4)[2]))
    if ext_call.return_data[12 len 20] == address(('cd', 4)[1]):
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ('cd', 4).length, 0, address(this.address), 128, (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 288, mem[ceil32(return_data.size) + 128 len floor32((32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 31) + 9]
    else:
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ('cd', 4).length, address(this.address), 128, (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 288, mem[ceil32(return_data.size) + 128 len floor32((32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 31) + 9]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    _3 = mem[128]
    require mem[128] <= test266151307()
    require arg4.length - mem[128] >= 192
    if not bool(ceil32(arg4.length) + 320 <= test266151307()):
        revert with 0, 65
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    require mem[_3 + 160] == mem[_3 + 172 len 20]
    mem[ceil32(arg4.length) + 160] = mem[_3 + 160]
    require mem[_3 + 192] == mem[_3 + 204 len 20]
    mem[ceil32(arg4.length) + 192] = mem[_3 + 192]
    require mem[_3 + 224] == mem[_3 + 236 len 20]
    mem[ceil32(arg4.length) + 224] = mem[_3 + 224]
    _9 = mem[_3 + 256]
    require mem[_3 + 256] <= test266151307()
    require _3 + mem[_3 + 256] + 159 < arg4.length + 128
    _10 = mem[_3 + mem[_3 + 256] + 128]
    if mem[_3 + mem[_3 + 256] + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_3 + mem[_3 + 256] + 128]) + 321 < 320 or ceil32(arg4.length) + ceil32(32 * mem[_3 + mem[_3 + 256] + 128]) + 321 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg4.length) + ceil32(32 * mem[_3 + mem[_3 + 256] + 128]) + 321
    mem[ceil32(arg4.length) + 320] = mem[_3 + mem[_3 + 256] + 128]
    require (32 * _10) + _3 + _9 + 64 <= arg4.length + 32
    s = ceil32(arg4.length) + 352
    idx = _3 + _9 + 160
    while idx < (32 * _10) + _3 + _9 + 160:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[ceil32(arg4.length) + 256] = ceil32(arg4.length) + 320
    _27 = mem[_3 + 288]
    require mem[_3 + 288] <= test266151307()
    require _3 + mem[_3 + 288] + 159 < arg4.length + 128
    _28 = mem[_3 + mem[_3 + 288] + 128]
    if mem[_3 + mem[_3 + 288] + 128] > test266151307():
        revert with 0, 65
    _29 = mem[64]
    if mem[64] + ceil32(32 * mem[_3 + mem[_3 + 288] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_3 + mem[_3 + 288] + 128]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_3 + mem[_3 + 288] + 128]) + 1
    mem[_29] = mem[_3 + mem[_3 + 288] + 128]
    require (32 * _28) + _3 + _27 + 64 <= arg4.length + 32
    s = _29 + 32
    idx = _3 + _27 + 160
    while idx < (32 * _28) + _3 + _27 + 160:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[ceil32(arg4.length) + 288] = _29
    if 0 >= mem[_29]:
        revert with 0, 50
    _43 = mem[_29 + 32]
    if not mem[_29 + 44 len 20]:
        var73001 = 32
        revert with 0, '0', 0
    s = 0
    idx = mem[_29 + 44 len 20]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _51 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = address(_43)
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[_51]:
                revert with 0, 50
            mem[t + _51 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _66 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _68 = mem[_51]
        mem[mem[64] + 36] = mem[_51]
        mem[mem[64] + 68 len ceil32(_68)] = mem[_51 + 32 len ceil32(_68)]
        if ceil32(_68) <= _68:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_68) + 32]
        mem[_68 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_68) + _66 + -mem[64] + 68
    mem[_51 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = address(_43)
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[_51]:
            revert with 0, 50
        mem[t + _51 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _67 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _69 = mem[_51]
    mem[mem[64] + 36] = mem[_51]
    mem[mem[64] + 68 len ceil32(_69)] = mem[_51 + 32 len ceil32(_69)]
    if ceil32(_69) <= _69:
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_69) + 32]
    mem[_69 + mem[64] + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_69) + _67 + -mem[64] + 68
}

function sub_1f714a3f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[132] = ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[164] = address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[196] = address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    mem[228] = address(('cd', 4)[2])
    require ('cd', 4)[3] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 4)])
    mem[260] = 192
    mem[324] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = 356
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
    mem[292] = (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 224
    mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 356] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    idx = 0
    s = cd[4] + ('cd', 4)[4] + 36
    t = (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 388
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    call this.address.0x71663a1a with:
         gas gas_remaining wei
        args 32, ('cd', 4).length, address(('cd', 4)[0]), address(('cd', 4)[1]), address(('cd', 4)[2]), 192, (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 224, cd[(cd[4] + ('cd', 4)[3] + 4)], mem[356 len (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 32]
    if not ext_call.success:
        if return_data.size <= 3:
            if not return_data.size:
                emit 0xd5a827cf: ' '
            else:
                emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        else:
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                if uint32(mem[4 len 28]) >> 224 != Panic(uint256 arg1):
                    if not return_data.size:
                        emit 0xd5a827cf: ' '
                    else:
                        emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                else:
                    if return_data.size > 35:
                        emit 0x8c3808c0: ext_call.return_data[4]
                    else:
                        if not return_data.size:
                            emit 0xd5a827cf: ' '
                        else:
                            emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
            else:
                if return_data.size < 68:
                    if not return_data.size:
                        emit 0xd5a827cf: ' '
                    else:
                        emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                else:
                    if not bool(36 <= return_data.size):
                        if not return_data.size:
                            emit 0xd5a827cf: ' '
                        else:
                            emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                    else:
                        if unknown_0x71663a1a(?????), 0 > test266151307():
                            if not return_data.size:
                                emit 0xd5a827cf: ' '
                            else:
                                emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                        else:
                            if unknown_0x71663a1a(?????), 0 + 32 <= return_data.size - 4:
                                if ceil32(unknown_0x71663a1a(?????), 0) + 97 < 96 or ceil32(unknown_0x71663a1a(?????), 0) + 97 > test266151307():
                                    revert with 0, 65
                                emit 0x3f0c48ab: ''
                            else:
                                if not return_data.size:
                                    emit 0xd5a827cf: ' '
                                else:
                                    emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[100] = this.address
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ('cd', 4)[1] == address(('cd', 4)[1])
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(address(('cd', 4)[1]))
        staticcall address(('cd', 4)[1]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 132] = address(cd[36])
            mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(('cd', 4)[1])):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = 0, address(cd[36]), ext_call.return_data[0], 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call address(('cd', 4)[1]) with:
               funct Mask(32, 224, 0, address(cd[36]), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(cd[36]), ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32 == bool(uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32)
                    if not uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xa271a759: ext_call.return_data[0], address(('cd', 4)[1]), address(cd[36])
    mem[ceil32(return_data.size) + 132] = address(cd[36])
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(('cd', 4)[0])):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = 0, address(cd[36]), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(('cd', 4)[0]) with:
       funct Mask(32, 224, 0, address(cd[36]), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(cd[36]), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32 == bool(uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32)
            if not uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xa271a759: ext_call.return_data[0], address(('cd', 4)[0]), address(cd[36])
        require ('cd', 4)[1] == address(('cd', 4)[1])
        mem[ceil32(return_data.size) + 264] = this.address
        require ext_code.size(address(('cd', 4)[1]))
        staticcall address(('cd', 4)[1]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 296] = address(cd[36])
            mem[(2 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 260] = 68
            mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 360] = 32
            mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(('cd', 4)[1])):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(cd[36]), ext_call.return_data[0], 0
            mem[(2 * ceil32(return_data.size)) + 492] = 0
            call address(('cd', 4)[1]) with:
               funct Mask(32, 224, 0, address(cd[36]), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(cd[36]), ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32 == bool(uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32)
                    if not uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                    if not mem[(2 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xa271a759: ext_call.return_data[0], address(('cd', 4)[1]), address(cd[36])
    mem[ceil32(return_data.size) + 260] = return_data.size
    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
        if not mem[ceil32(return_data.size) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0xa271a759: ext_call.return_data[0], address(('cd', 4)[0]), address(cd[36])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
    require ext_code.size(address(('cd', 4)[1]))
    staticcall address(('cd', 4)[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(cd[36])
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(('cd', 4)[1])):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(cd[36]), ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call address(('cd', 4)[1]) with:
       funct Mask(32, 224, 0, address(cd[36]), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(cd[36]), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32 == bool(uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32)
            if not uint32(this.address), Mask(224, 32, ('cd', 4).length) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xa271a759: ext_call.return_data[0], address(('cd', 4)[1]), address(cd[36])
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        emit 0xa271a759: ext_call.return_data[0], address(('cd', 4)[1]), address(cd[36])
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        emit 0xa271a759: ext_call.return_data[0], address(('cd', 4)[1]), address(cd[36])
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function sub_30c91f69(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 227
        _935 = mem[64]
        mem[mem[64]] = 0x71663a1a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
        mem[mem[64] + 68] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
        mem[mem[64] + 100] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)])
        mem[mem[64] + 132] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)])
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] + 36)] <= test266151307()
        require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] + 36)])
        mem[mem[64] + 164] = 192
        mem[mem[64] + 228] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] + 36)]
        s = 0
        t = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] + 68
        u = mem[64] + 260
        while s < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] + 36)]:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)] <= test266151307()
        require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)])
        mem[_935 + 196] = u + -_935 - 36
        mem[u] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]
        s = 0
        t = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 68
        v = u + 32
        while s < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]:
            require cd[t] == address(cd[t])
            mem[v] = address(cd[t])
            s = s + 1
            t = t + 32
            v = v + 32
            continue 
        require ext_code.size(this.address)
        call this.address.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len v + -mem[64] - 4]
        if not ext_call.success:
            if return_data.size <= 3:
                if not return_data.size:
                    _2801 = mem[64]
                    mem[mem[64]] = 32
                    _2812 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    s = 0
                    while s < _2812:
                        mem[s + _2801 + 64] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2812) > _2812:
                        mem[_2812 + _2801 + 64] = 0
                    emit 0xd5a827cf: mem[mem[64] len ceil32(_2812) + _2801 + -mem[64] + 64]
                else:
                    _2800 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2800] = return_data.size
                    mem[_2800 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _2802 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    s = 0
                    while s < return_data.size:
                        mem[s + _2802 + 64] = mem[s + _2800 + 32]
                        s = s + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _2802 + 64] = 0
                    emit 0xd5a827cf: mem[mem[64] len ceil32(return_data.size) + _2802 + -mem[64] + 64]
            else:
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    if uint32(mem[4 len 28]) >> 224 != Panic(uint256 arg1):
                        if not return_data.size:
                            _2806 = mem[64]
                            mem[mem[64]] = 32
                            _2814 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            s = 0
                            while s < _2814:
                                mem[s + _2806 + 64] = mem[s + 128]
                                s = s + 32
                                continue 
                            if ceil32(_2814) > _2814:
                                mem[_2814 + _2806 + 64] = 0
                            emit 0xd5a827cf: mem[mem[64] len ceil32(_2814) + _2806 + -mem[64] + 64]
                        else:
                            _2803 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2803] = return_data.size
                            mem[_2803 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _2807 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = return_data.size
                            s = 0
                            while s < return_data.size:
                                mem[s + _2807 + 64] = mem[s + _2803 + 32]
                                s = s + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _2807 + 64] = 0
                            emit 0xd5a827cf: mem[mem[64] len ceil32(return_data.size) + _2807 + -mem[64] + 64]
                    else:
                        if return_data.size > 35:
                            mem[0] = ext_call.return_data[4]
                            mem[mem[64]] = ext_call.return_data[4]
                            emit 0x8c3808c0: ext_call.return_data[4]
                        else:
                            if not return_data.size:
                                _2829 = mem[64]
                                mem[mem[64]] = 32
                                _2839 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                s = 0
                                while s < _2839:
                                    mem[s + _2829 + 64] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_2839) > _2839:
                                    mem[_2839 + _2829 + 64] = 0
                                emit 0xd5a827cf: mem[mem[64] len ceil32(_2839) + _2829 + -mem[64] + 64]
                            else:
                                _2821 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2821] = return_data.size
                                mem[_2821 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                _2830 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = return_data.size
                                s = 0
                                while s < return_data.size:
                                    mem[s + _2830 + 64] = mem[s + _2821 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _2830 + 64] = 0
                                emit 0xd5a827cf: mem[mem[64] len ceil32(return_data.size) + _2830 + -mem[64] + 64]
                else:
                    if return_data.size < 68:
                        if not return_data.size:
                            _2824 = mem[64]
                            mem[mem[64]] = 32
                            _2837 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            s = 0
                            while s < _2837:
                                mem[s + _2824 + 64] = mem[s + 128]
                                s = s + 32
                                continue 
                            if ceil32(_2837) > _2837:
                                mem[_2837 + _2824 + 64] = 0
                            emit 0xd5a827cf: mem[mem[64] len ceil32(_2837) + _2824 + -mem[64] + 64]
                        else:
                            _2818 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2818] = return_data.size
                            mem[_2818 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _2825 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = return_data.size
                            s = 0
                            while s < return_data.size:
                                mem[s + _2825 + 64] = mem[s + _2818 + 32]
                                s = s + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _2825 + 64] = 0
                            emit 0xd5a827cf: mem[mem[64] len ceil32(return_data.size) + _2825 + -mem[64] + 64]
                    else:
                        _2804 = mem[64]
                        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                        _2805 = mem[mem[64]]
                        if mem[mem[64]] > test266151307() or mem[mem[64]] + 36 > return_data.size:
                            if not return_data.size:
                                _2832 = mem[64]
                                mem[mem[64]] = 32
                                _2844 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                s = 0
                                while s < _2844:
                                    mem[s + _2832 + 64] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_2844) > _2844:
                                    mem[_2844 + _2832 + 64] = 0
                                emit 0xd5a827cf: mem[mem[64] len ceil32(_2844) + _2832 + -mem[64] + 64]
                            else:
                                _2823 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2823] = return_data.size
                                mem[_2823 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                _2833 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = return_data.size
                                s = 0
                                while s < return_data.size:
                                    mem[s + _2833 + 64] = mem[s + _2823 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _2833 + 64] = 0
                                emit 0xd5a827cf: mem[mem[64] len ceil32(return_data.size) + _2833 + -mem[64] + 64]
                        else:
                            if mem[mem[64] + mem[mem[64]]] > test266151307():
                                if not return_data.size:
                                    _2835 = mem[64]
                                    mem[mem[64]] = 32
                                    _2853 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    s = 0
                                    while s < _2853:
                                        mem[s + _2835 + 64] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2853) > _2853:
                                        mem[_2853 + _2835 + 64] = 0
                                    emit 0xd5a827cf: mem[mem[64] len ceil32(_2853) + _2835 + -mem[64] + 64]
                                else:
                                    _2831 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2831] = return_data.size
                                    mem[_2831 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _2836 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = return_data.size
                                    s = 0
                                    while s < return_data.size:
                                        mem[s + _2836 + 64] = mem[s + _2831 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(return_data.size) > return_data.size:
                                        mem[return_data.size + _2836 + 64] = 0
                                    emit 0xd5a827cf: mem[mem[64] len ceil32(return_data.size) + _2836 + -mem[64] + 64]
                            else:
                                if mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 32 > return_data.size - 4:
                                    if not return_data.size:
                                        _2842 = mem[64]
                                        mem[mem[64]] = 32
                                        _2862 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        s = 0
                                        while s < _2862:
                                            mem[s + _2842 + 64] = mem[s + 128]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2862) > _2862:
                                            mem[_2862 + _2842 + 64] = 0
                                        emit 0xd5a827cf: mem[mem[64] len ceil32(_2862) + _2842 + -mem[64] + 64]
                                    else:
                                        _2834 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2834] = return_data.size
                                        mem[_2834 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _2843 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        s = 0
                                        while s < return_data.size:
                                            mem[s + _2843 + 64] = mem[s + _2834 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(return_data.size) > return_data.size:
                                            mem[return_data.size + _2843 + 64] = 0
                                        emit 0xd5a827cf: mem[mem[64] len ceil32(return_data.size) + _2843 + -mem[64] + 64]
                                else:
                                    if mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 < mem[64] or mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1
                                    if _2804 + _2805:
                                        _2841 = mem[64]
                                        mem[mem[64]] = 32
                                        _2860 = mem[_2804 + _2805]
                                        mem[mem[64] + 32] = mem[_2804 + _2805]
                                        s = 0
                                        while s < _2860:
                                            mem[s + _2841 + 64] = mem[s + _2804 + _2805 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2860) > _2860:
                                            mem[_2860 + _2841 + 64] = 0
                                        emit 0x3f0c48ab: mem[mem[64] len ceil32(_2860) + _2841 + -mem[64] + 64]
                                    else:
                                        if not return_data.size:
                                            _2868 = mem[64]
                                            mem[mem[64]] = 32
                                            _2876 = mem[96]
                                            mem[mem[64] + 32] = mem[96]
                                            s = 0
                                            while s < _2876:
                                                mem[s + _2868 + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if ceil32(_2876) > _2876:
                                                mem[_2876 + _2868 + 64] = 0
                                            emit 0xd5a827cf: mem[mem[64] len ceil32(_2876) + _2868 + -mem[64] + 64]
                                        else:
                                            _2861 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2861] = return_data.size
                                            mem[_2861 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _2869 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[s + _2869 + 64] = mem[s + _2861 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(return_data.size) > return_data.size:
                                                mem[return_data.size + _2869 + 64] = 0
                                            emit 0xd5a827cf: mem[mem[64] len ceil32(return_data.size) + _2869 + -mem[64] + 64]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
        staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2816 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2826 = mem[_2816]
        if not mem[_2816]:
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
            staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2911 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2913 = mem[_2911]
            if mem[_2911]:
                _2922 = mem[64]
                mem[mem[64] + 36] = address(cd[36])
                mem[mem[64] + 68] = _2913
                _2923 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2923 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2923 + 36 len 28]
                mem[64] = _2922 + 164
                mem[_2922 + 100] = 32
                mem[_2922 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])):
                    revert with 0, 'Address: call to non-contract'
                _2950 = mem[_2923]
                s = 0
                while s < _2950:
                    mem[s + _2922 + 164] = mem[s + _2923 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2950) > _2950:
                    mem[_2950 + _2922 + 164] = 0
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).mem[_2922 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_2922 + 168 len _2950 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_2922 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2922 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2922 + 232] = mem[idx + _2922 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2922 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_2922 + 164] = _2913
                else:
                    mem[64] = _2922 + ceil32(return_data.size) + 165
                    mem[_2922 + 164] = return_data.size
                    mem[_2922 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2922 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2922 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2922 + ceil32(return_data.size) + 233] = mem[idx + _2922 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2922 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2922 + 196] == bool(mem[_2922 + 196])
                        if not mem[_2922 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_2922 + ceil32(return_data.size) + 165] = _2913
                emit 0xa271a759: _2913, address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]), address(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2846 = mem[64]
        mem[mem[64] + 36] = address(cd[36])
        mem[mem[64] + 68] = _2826
        _2847 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_2847 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2847 + 36 len 28]
        mem[64] = _2846 + 164
        mem[_2846 + 100] = 32
        mem[_2846 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])):
            revert with 0, 'Address: call to non-contract'
        _2887 = mem[_2847]
        s = 0
        while s < _2887:
            mem[s + _2846 + 164] = mem[s + _2847 + 32]
            s = s + 32
            continue 
        if ceil32(_2887) > _2887:
            mem[_2887 + _2846 + 164] = 0
        call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).mem[_2846 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_2846 + 168 len _2887 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_2846 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2846 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _2846 + 232] = mem[idx + _2846 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_2846 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xa271a759: _2826, address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), address(cd[36])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            mem[_2846 + 168] = this.address
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
            staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_2846 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _2846 + ceil32(return_data.size) + 164
            require return_data.size >= 32
            if ext_call.return_data[0]:
                mem[_2846 + ceil32(return_data.size) + 200] = address(cd[36])
                mem[_2846 + ceil32(return_data.size) + 232] = ext_call.return_data[0]
                mem[_2846 + ceil32(return_data.size) + 164] = 68
                mem[_2846 + ceil32(return_data.size) + 196] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(cd[36]) << 64
                mem[64] = _2846 + ceil32(return_data.size) + 328
                mem[_2846 + ceil32(return_data.size) + 264] = 32
                mem[_2846 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 68:
                    mem[s + _2846 + ceil32(return_data.size) + 328] = mem[s + _2846 + ceil32(return_data.size) + 196]
                    s = s + 32
                    continue 
                mem[_2846 + ceil32(return_data.size) + 396] = 0
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).mem[_2846 + ceil32(return_data.size) + 328 len 4] with:
                     gas gas_remaining wei
                    args mem[_2846 + ceil32(return_data.size) + 332 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_2846 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2846 + ceil32(return_data.size) + 332] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2846 + ceil32(return_data.size) + 396] = mem[idx + _2846 + ceil32(return_data.size) + 296]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2846 + ceil32(return_data.size) + 396]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_2846 + ceil32(return_data.size) + 328] = ext_call.return_data[0]
                else:
                    mem[64] = _2846 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                    mem[_2846 + ceil32(return_data.size) + 328] = return_data.size
                    mem[_2846 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2846 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _2846 + ceil32(return_data.size) + 296]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2846 + ceil32(return_data.size) + 360] == bool(mem[_2846 + ceil32(return_data.size) + 360])
                        if not mem[_2846 + ceil32(return_data.size) + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
                emit 0xa271a759: ext_call.return_data[0], address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]), address(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_2846 + 164] = return_data.size
        mem[_2846 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2846 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2846 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[idx + _2846 + ceil32(return_data.size) + 233] = mem[idx + _2846 + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_2846 + ceil32(return_data.size) + 233]
        if return_data.size:
            require return_data.size >= 32
            require mem[_2846 + 196] == bool(mem[_2846 + 196])
            if not mem[_2846 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xa271a759: _2826, address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), address(cd[36])
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
        mem[_2846 + ceil32(return_data.size) + 169] = this.address
        require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
        staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_2846 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _2846 + ceil32(return_data.size) + ceil32(return_data.size) + 165
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(cd[36])
        mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = ext_call.return_data[0]
        mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(cd[36]) << 64
        mem[64] = _2846 + ceil32(return_data.size) + ceil32(return_data.size) + 329
        mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])):
            revert with 0, 'Address: call to non-contract'
        s = 0
        while s < 68:
            mem[s + _2846 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _2846 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
            s = s + 32
            continue 
        mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
        call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
             gas gas_remaining wei
            args mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _2846 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _2846 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            emit 0xa271a759: ext_call.return_data[0], address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]), address(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[64] = _2846 + (4 * ceil32(return_data.size)) + 330
        mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
        mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2846 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2846 + (4 * ceil32(return_data.size)) + 334] = 32
            idx = 0
            while idx < 32:
                mem[idx + _2846 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _2846 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_2846 + (4 * ceil32(return_data.size)) + 398]
        if not return_data.size:
            mem[_2846 + (4 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
            emit 0xa271a759: ext_call.return_data[0], address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]), address(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require return_data.size >= 32
        require mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
        if mem[_2846 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
            mem[_2846 + (4 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
            emit 0xa271a759: ext_call.return_data[0], address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]), address(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_2846 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_2846 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_2846 + (4 * ceil32(return_data.size)) + 366] = 42
        mem[_2846 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
        mem[_2846 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
        revert with memory
          from _2846 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
