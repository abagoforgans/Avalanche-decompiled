contract main {




// =====================  Runtime code  =====================


#
#  - sub_30c91f69(?)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
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
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[3] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 4)])
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[ceil32(return_data.size) + 128] = 160
    mem[ceil32(return_data.size) + 288] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = ceil32(return_data.size) + 320
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 160] = (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 192
    mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 320] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    idx = 0
    s = cd[4] + ('cd', 4)[4] + 36
    t = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 352
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 192] = ('cd', 4).length
    mem[ceil32(return_data.size) + 224] = address(('cd', 4)[0])
    mem[ceil32(return_data.size) + 256] = address(('cd', 4)[1])
    mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if ext_call.return_data[12 len 20] == address(('cd', 4)[1]):
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 356] = ('cd', 4).length
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 388] = 0
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 420] = this.address
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 452] = 128
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 484] = mem[ceil32(return_data.size) + 96]
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 516 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if ceil32(mem[ceil32(return_data.size) + 96]) > mem[ceil32(return_data.size) + 96]:
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 516] = 0
        require ext_code.size(address(('cd', 4)[2]))
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ('cd', 4).length, 0, address(this.address), 128, mem[ceil32(return_data.size) + 96], mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 516 len ceil32(mem[ceil32(return_data.size) + 96])]
    else:
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 356] = 0
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 388] = ('cd', 4).length
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 420] = this.address
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 452] = 128
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 484] = mem[ceil32(return_data.size) + 96]
        mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 516 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if ceil32(mem[ceil32(return_data.size) + 96]) > mem[ceil32(return_data.size) + 96]:
            mem[mem[ceil32(return_data.size) + 96] + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 516] = 0
        require ext_code.size(address(('cd', 4)[2]))
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ('cd', 4).length, address(this.address), 128, mem[ceil32(return_data.size) + 96], mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 516 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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



}
