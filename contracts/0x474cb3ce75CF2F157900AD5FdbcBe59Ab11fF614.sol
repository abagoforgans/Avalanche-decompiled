contract main {




// =====================  Runtime code  =====================


#
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

function sub_3a8a334c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
    idx = 0
    s = cd[4] + ('cd', 4)[4] + 36
    t = 388
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4)[5] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 388] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    idx = 0
    s = cd[4] + ('cd', 4)[5] + 36
    t = (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 420
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    call this.address.0x6242d6ce with:
         gas gas_remaining wei
        args 32, ('cd', 4).length, address(('cd', 4)[0]), address(('cd', 4)[1]), address(('cd', 4)[2]), address(('cd', 4)[3]), 224, (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 256, cd[(cd[4] + ('cd', 4)[4] + 4)], mem[388 len (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 32]
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
                        if unknown_0x6242d6ce(?????), 0 > test266151307():
                            if not return_data.size:
                                emit 0xd5a827cf: ' '
                            else:
                                emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                        else:
                            if unknown_0x6242d6ce(?????), 0 + 32 <= return_data.size - 4:
                                if ceil32(unknown_0x6242d6ce(?????), 0) + 97 < 96 or ceil32(unknown_0x6242d6ce(?????), 0) + 97 > test266151307():
                                    revert with 0, 65
                                emit 0x3f0c48ab: ''
                            else:
                                if not return_data.size:
                                    emit 0xd5a827cf: ' '
                                else:
                                    emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_6242d6ce(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    if this.address != msg.sender:
        revert with 0, 'Caller is not self'
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ext_code.size(address(('cd', 4)[2]))
    staticcall address(('cd', 4)[2]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require calldata.size + -cd[4] - 4 >= 224
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 321 < 320 or ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 321 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 320] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[4] + ('cd', 4)[4] + 36 <= calldata.size
    s = ceil32(return_data.size) + 352
    idx = cd[4] + ('cd', 4)[4] + 36
    while idx < (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[4] + ('cd', 4)[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require ('cd', 4)[5] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 322 < 321 or ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 322 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 321] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + cd[4] + ('cd', 4)[5] + 36 <= calldata.size
    s = ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 353
    idx = cd[4] + ('cd', 4)[5] + 36
    while idx < (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + cd[4] + ('cd', 4)[5] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if 5 > !cd[(cd[4] + ('cd', 4)[4] + 4)]:
        revert with 0, 17
    if cd[(cd[4] + ('cd', 4)[4] + 4)] + 5 > !cd[(cd[4] + ('cd', 4)[5] + 4)]:
        revert with 0, 17
    if cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 322] = 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5
    if Mask(251, 0, cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5):
        mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 354 len 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5] = call.data[calldata.size len 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5]
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 354] = ('cd', 4).length
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 386] = ('cd', 4)[0]
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 418] = ('cd', 4)[1]
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 450] = ('cd', 4)[2]
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 482] = ('cd', 4)[3]
    idx = 0
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + (32 * idx) + 514] = mem[(32 * idx) + ceil32(return_data.size) + 352]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 192 > !(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]):
        revert with 0, 17
    idx = 0
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        mem[(32 * idx) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 514] = mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 353]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(address(('cd', 4)[2]))
    if ext_call.return_data[12 len 20] == address(('cd', 4)[1]):
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ('cd', 4).length, 0, address(this.address), 128, 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5, mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 354 len floor32(cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5)]
    else:
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ('cd', 4).length, address(this.address), 128, 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5, mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 354 len floor32(cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ef2baef7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ext_code.size(address(('cd', 4)[2]))
    staticcall address(('cd', 4)[2]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require calldata.size + -cd[4] - 4 >= 224
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 321 < 320 or ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 321 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 320] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[4] + ('cd', 4)[4] + 36 <= calldata.size
    s = ceil32(return_data.size) + 352
    idx = cd[4] + ('cd', 4)[4] + 36
    while idx < (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[4] + ('cd', 4)[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require ('cd', 4)[5] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 322 < 321 or ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 322 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 321] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + cd[4] + ('cd', 4)[5] + 36 <= calldata.size
    s = ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 353
    idx = cd[4] + ('cd', 4)[5] + 36
    while idx < (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + cd[4] + ('cd', 4)[5] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if 5 > !cd[(cd[4] + ('cd', 4)[4] + 4)]:
        revert with 0, 17
    if cd[(cd[4] + ('cd', 4)[4] + 4)] + 5 > !cd[(cd[4] + ('cd', 4)[5] + 4)]:
        revert with 0, 17
    if cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 322] = 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5
    if Mask(251, 0, cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5):
        mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 354 len 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5] = call.data[calldata.size len 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5]
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 354] = ('cd', 4).length
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 386] = ('cd', 4)[0]
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 418] = ('cd', 4)[1]
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 450] = ('cd', 4)[2]
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 482] = ('cd', 4)[3]
    idx = 0
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + (32 * idx) + 514] = mem[(32 * idx) + ceil32(return_data.size) + 352]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 192 > !(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]):
        revert with 0, 17
    idx = 0
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        mem[(32 * idx) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 514] = mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 353]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(address(('cd', 4)[2]))
    if ext_call.return_data[12 len 20] == address(('cd', 4)[1]):
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ('cd', 4).length, 0, address(this.address), 128, 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5, mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 354 len floor32(cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5)]
    else:
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ('cd', 4).length, address(this.address), 128, 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5, mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 354 len floor32(cd[(cd[4] + ('cd', 4)[4] + 4)] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 5)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b9ee0863(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 259
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)])
        require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]))
        staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_93] == mem[_93 + 12 len 20]
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
        require calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 36 >= 224
        if mem[_93 + 12 len 20] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]):
            _95 = mem[64]
            if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 224
            mem[_95] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            mem[_95 + 32] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            mem[_95 + 64] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)])
            mem[_95 + 96] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)])
            mem[_95 + 128] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 67 < calldata.size
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)] > test266151307():
                revert with 0, 65
            _97 = mem[64]
            if mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]) + 1
            mem[_97] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]
            require (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]) + cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 68 <= calldata.size
            s = _97 + 32
            t = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 68
            while t < (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]) + cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 68:
                require cd[t] == address(cd[t])
                mem[s] = cd[t]
                s = s + 32
                t = t + 32
                continue 
            mem[_95 + 160] = _97
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 67 < calldata.size
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)] > test266151307():
                revert with 0, 65
            _179 = mem[64]
            if mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]) + 1
            mem[_179] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]
            require (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]) + cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 68 <= calldata.size
            s = _179 + 32
            t = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 68
            while t < (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]) + cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 68:
                require cd[t] == address(cd[t])
                mem[s] = cd[t]
                s = s + 32
                t = t + 32
                continue 
            mem[_95 + 192] = _179
            _260 = mem[_179]
            _262 = mem[mem[_95 + 160]]
            if 5 > !mem[mem[_95 + 160]]:
                revert with 0, 17
            if mem[mem[_95 + 160]] + 5 > !mem[_179]:
                revert with 0, 17
            if mem[mem[_95 + 160]] + mem[_179] + 5 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 32 * mem[mem[_95 + 160]] + mem[_179] + 5 > test266151307():
                revert with 0, 65
            _267 = mem[64]
            mem[mem[64]] = 32 * mem[mem[_95 + 160]] + mem[_179] + 5
            mem[64] = mem[64] + floor32(_262 + _260 + 5) + 32
            if not Mask(251, 0, _262 + _260 + 5):
                mem[_267 + 32] = mem[_95]
                mem[_267 + 64] = mem[_95 + 32]
                mem[_267 + 96] = mem[_95 + 64]
                mem[_267 + 128] = mem[_95 + 96]
                mem[_267 + 160] = mem[_95 + 128]
                _274 = mem[_95 + 160]
                _337 = mem[mem[_95 + 160]]
                s = 0
                while s < _337:
                    mem[_267 + (32 * s) + 192] = mem[(32 * s) + _274 + 32]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _341 = mem[_95 + 192]
                _342 = mem[_274]
                if mem[_274] > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 192 > !(32 * mem[_274]):
                    revert with 0, 17
                _381 = mem[mem[_95 + 192]]
                s = 0
                while s < _381:
                    mem[(32 * s) + (32 * _342) + _267 + 192] = mem[(32 * s) + _341 + 32]
                    if s == -1:
                        revert with 0, 17
                    _381 = mem[_341]
                    s = s + 1
                    continue 
            else:
                mem[_267 + 32 len 32 * _262 + _260 + 5] = call.data[calldata.size len 32 * _262 + _260 + 5]
                mem[_267 + 32] = mem[_95]
                mem[_267 + 64] = mem[_95 + 32]
                mem[_267 + 96] = mem[_95 + 64]
                mem[_267 + 128] = mem[_95 + 96]
                mem[_267 + 160] = mem[_95 + 128]
                _287 = mem[_95 + 160]
                _338 = mem[mem[_95 + 160]]
                s = 0
                while s < _338:
                    mem[_267 + (32 * s) + 192] = mem[(32 * s) + _287 + 32]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _344 = mem[_95 + 192]
                _345 = mem[_287]
                if mem[_287] > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 192 > !(32 * mem[_287]):
                    revert with 0, 17
                _382 = mem[mem[_95 + 192]]
                s = 0
                while s < _382:
                    mem[(32 * s) + (32 * _345) + _267 + 192] = mem[(32 * s) + _344 + 32]
                    if s == -1:
                        revert with 0, 17
                    _382 = mem[_344]
                    s = s + 1
                    continue 
            mem[_267 + floor32(_262 + _260 + 5) + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_267 + floor32(_262 + _260 + 5) + 36] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
            mem[_267 + floor32(_262 + _260 + 5) + 68] = 0
            mem[_267 + floor32(_262 + _260 + 5) + 100] = this.address
            mem[_267 + floor32(_262 + _260 + 5) + 132] = 128
            mem[_267 + floor32(_262 + _260 + 5) + 164] = mem[_267]
            s = 0
            while s < mem[_267]:
                mem[s + _267 + floor32(_262 + _260 + 5) + 196] = mem[s + _267 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_267]) > mem[_267]:
                mem[mem[_267] + _267 + floor32(_262 + _260 + 5) + 196] = 0
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]))
            call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)], 0, address(this.address), 128, mem[_267], mem[_267 + floor32(_262 + _260 + 5) + 196 len ceil32(mem[_267])]
        else:
            _96 = mem[64]
            if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 224
            mem[_96] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            mem[_96 + 32] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            mem[_96 + 64] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)])
            mem[_96 + 96] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)])
            mem[_96 + 128] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 67 < calldata.size
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)] > test266151307():
                revert with 0, 65
            _98 = mem[64]
            if mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]) + 1
            mem[_98] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]
            require (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]) + cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 68 <= calldata.size
            s = _98 + 32
            t = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 68
            while t < (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]) + cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 68:
                require cd[t] == address(cd[t])
                mem[s] = cd[t]
                s = s + 32
                t = t + 32
                continue 
            mem[_96 + 160] = _98
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 67 < calldata.size
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)] > test266151307():
                revert with 0, 65
            _180 = mem[64]
            if mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]) + 1
            mem[_180] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]
            require (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]) + cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 68 <= calldata.size
            s = _180 + 32
            t = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 68
            while t < (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]) + cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 68:
                require cd[t] == address(cd[t])
                mem[s] = cd[t]
                s = s + 32
                t = t + 32
                continue 
            mem[_96 + 192] = _180
            _264 = mem[_180]
            _266 = mem[mem[_96 + 160]]
            if 5 > !mem[mem[_96 + 160]]:
                revert with 0, 17
            if mem[mem[_96 + 160]] + 5 > !mem[_180]:
                revert with 0, 17
            if mem[mem[_96 + 160]] + mem[_180] + 5 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 32 * mem[mem[_96 + 160]] + mem[_180] + 5 > test266151307():
                revert with 0, 65
            _268 = mem[64]
            mem[mem[64]] = 32 * mem[mem[_96 + 160]] + mem[_180] + 5
            mem[64] = mem[64] + floor32(_266 + _264 + 5) + 32
            if not Mask(251, 0, _266 + _264 + 5):
                mem[_268 + 32] = mem[_96]
                mem[_268 + 64] = mem[_96 + 32]
                mem[_268 + 96] = mem[_96 + 64]
                mem[_268 + 128] = mem[_96 + 96]
                mem[_268 + 160] = mem[_96 + 128]
                _280 = mem[_96 + 160]
                _339 = mem[mem[_96 + 160]]
                s = 0
                while s < _339:
                    mem[_268 + (32 * s) + 192] = mem[(32 * s) + _280 + 32]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _347 = mem[_96 + 192]
                _348 = mem[_280]
                if mem[_280] > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 192 > !(32 * mem[_280]):
                    revert with 0, 17
                _383 = mem[mem[_96 + 192]]
                s = 0
                while s < _383:
                    mem[(32 * s) + (32 * _348) + _268 + 192] = mem[(32 * s) + _347 + 32]
                    if s == -1:
                        revert with 0, 17
                    _383 = mem[_347]
                    s = s + 1
                    continue 
            else:
                mem[_268 + 32 len 32 * _266 + _264 + 5] = call.data[calldata.size len 32 * _266 + _264 + 5]
                mem[_268 + 32] = mem[_96]
                mem[_268 + 64] = mem[_96 + 32]
                mem[_268 + 96] = mem[_96 + 64]
                mem[_268 + 128] = mem[_96 + 96]
                mem[_268 + 160] = mem[_96 + 128]
                _294 = mem[_96 + 160]
                _340 = mem[mem[_96 + 160]]
                s = 0
                while s < _340:
                    mem[_268 + (32 * s) + 192] = mem[(32 * s) + _294 + 32]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _350 = mem[_96 + 192]
                _351 = mem[_294]
                if mem[_294] > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 192 > !(32 * mem[_294]):
                    revert with 0, 17
                _384 = mem[mem[_96 + 192]]
                s = 0
                while s < _384:
                    mem[(32 * s) + (32 * _351) + _268 + 192] = mem[(32 * s) + _350 + 32]
                    if s == -1:
                        revert with 0, 17
                    _384 = mem[_350]
                    s = s + 1
                    continue 
            mem[_268 + floor32(_266 + _264 + 5) + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_268 + floor32(_266 + _264 + 5) + 36] = 0
            mem[_268 + floor32(_266 + _264 + 5) + 68] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
            mem[_268 + floor32(_266 + _264 + 5) + 100] = this.address
            mem[_268 + floor32(_266 + _264 + 5) + 132] = 128
            mem[_268 + floor32(_266 + _264 + 5) + 164] = mem[_268]
            s = 0
            while s < mem[_268]:
                mem[s + _268 + floor32(_266 + _264 + 5) + 196] = mem[s + _268 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_268]) > mem[_268]:
                mem[mem[_268] + _268 + floor32(_266 + _264 + 5) + 196] = 0
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]))
            call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)], address(this.address), 128, mem[_268], mem[_268 + floor32(_266 + _264 + 5) + 196 len ceil32(mem[_268])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
