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
    require calldata.size + -cd[4] - 4 >= 192
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 0, 65
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[3] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 289 > test266151307() or ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 289 < 288:
        revert with 0, 65
    mem[ceil32(return_data.size) + 288] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    require (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + cd[4] + ('cd', 4)[3] + 36 <= calldata.size
    idx = cd[4] + ('cd', 4)[3] + 36
    s = ceil32(return_data.size) + 320
    while idx < (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + cd[4] + ('cd', 4)[3] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 290 > test266151307() or ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 290 < 289:
        revert with 0, 65
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 289] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[4] + ('cd', 4)[4] + 36 <= calldata.size
    idx = cd[4] + ('cd', 4)[4] + 36
    s = ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321
    while idx < (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[4] + ('cd', 4)[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 4 > !cd[(cd[4] + ('cd', 4)[3] + 4)]:
        revert with 0, 17
    if cd[(cd[4] + ('cd', 4)[3] + 4)] + 4 > !cd[(cd[4] + ('cd', 4)[4] + 4)]:
        revert with 0, 17
    if cd[(cd[4] + ('cd', 4)[3] + 4)] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 4 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 32 * cd[(cd[4] + ('cd', 4)[3] + 4)] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 4 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 290] = 32 * cd[(cd[4] + ('cd', 4)[3] + 4)] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 4
    if Mask(251, 0, cd[(cd[4] + ('cd', 4)[3] + 4)] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 4):
        mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 322 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 4] = call.data[calldata.size len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 4]
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 322] = ('cd', 4).length
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 354] = ('cd', 4)[0]
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 386] = ('cd', 4)[1]
    mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 418] = ('cd', 4)[2]
    idx = 0
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * idx) + 450] = mem[(32 * idx) + ceil32(return_data.size) + 320]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if cd[(cd[4] + ('cd', 4)[3] + 4)] > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 160 > !(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]):
        revert with 0, 17
    idx = 0
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        mem[(32 * idx) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 450] = mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(address(('cd', 4)[2]))
    if ext_call.return_data[12 len 20] == address(('cd', 4)[1]):
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ('cd', 4).length, 0, address(this.address), 128, 32 * cd[(cd[4] + ('cd', 4)[3] + 4)] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 4, mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 322 len floor32(cd[(cd[4] + ('cd', 4)[3] + 4)] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 4)]
    else:
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ('cd', 4).length, address(this.address), 128, 32 * cd[(cd[4] + ('cd', 4)[3] + 4)] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 4, mem[ceil32(return_data.size) + ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 322 len floor32(cd[(cd[4] + ('cd', 4)[3] + 4)] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 4)]
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
        revert with ext_call.return_data[0 len return_data.size]
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
        _835 = mem[64]
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
        mem[_835 + 196] = u + -_835 - 36
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
            revert with ext_call.return_data[0 len return_data.size]
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]))
        staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2501 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2502 = mem[_2501]
        if not mem[_2501]:
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
            staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2515 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2517 = mem[_2515]
            if mem[_2515]:
                _2522 = mem[64]
                mem[mem[64] + 36] = address(cd[36])
                mem[mem[64] + 68] = _2517
                _2523 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2523 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2523 + 36 len 28]
                mem[64] = _2522 + 164
                mem[_2522 + 100] = 32
                mem[_2522 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])):
                    revert with 0, 'Address: call to non-contract'
                _2550 = mem[_2523]
                s = 0
                while s < _2550:
                    mem[s + _2522 + 164] = mem[s + _2523 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2550) > _2550:
                    mem[_2550 + _2522 + 164] = 0
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).mem[_2522 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_2522 + 168 len _2550 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_2522 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2522 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2522 + 232] = mem[idx + _2522 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2522 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_2522 + 164] = _2517
                else:
                    mem[64] = _2522 + ceil32(return_data.size) + 165
                    mem[_2522 + 164] = return_data.size
                    mem[_2522 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2522 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2522 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2522 + ceil32(return_data.size) + 233] = mem[idx + _2522 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2522 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2522 + 196] == bool(mem[_2522 + 196])
                        if not mem[_2522 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_2522 + ceil32(return_data.size) + 165] = _2517
                emit 0xa271a759: _2517, address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]), address(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2503 = mem[64]
        mem[mem[64] + 36] = address(cd[36])
        mem[mem[64] + 68] = _2502
        _2504 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_2504 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2504 + 36 len 28]
        mem[64] = _2503 + 164
        mem[_2503 + 100] = 32
        mem[_2503 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])):
            revert with 0, 'Address: call to non-contract'
        _2511 = mem[_2504]
        s = 0
        while s < _2511:
            mem[s + _2503 + 164] = mem[s + _2504 + 32]
            s = s + 32
            continue 
        if ceil32(_2511) > _2511:
            mem[_2511 + _2503 + 164] = 0
        call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]).mem[_2503 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_2503 + 168 len _2511 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_2503 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2503 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _2503 + 232] = mem[idx + _2503 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_2503 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xa271a759: _2502, address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), address(cd[36])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            mem[_2503 + 168] = this.address
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
            staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_2503 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _2503 + ceil32(return_data.size) + 164
            require return_data.size >= 32
            if ext_call.return_data[0]:
                mem[_2503 + ceil32(return_data.size) + 200] = address(cd[36])
                mem[_2503 + ceil32(return_data.size) + 232] = ext_call.return_data[0]
                mem[_2503 + ceil32(return_data.size) + 164] = 68
                mem[_2503 + ceil32(return_data.size) + 196] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(cd[36]) << 64
                mem[64] = _2503 + ceil32(return_data.size) + 328
                mem[_2503 + ceil32(return_data.size) + 264] = 32
                mem[_2503 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 68:
                    mem[s + _2503 + ceil32(return_data.size) + 328] = mem[s + _2503 + ceil32(return_data.size) + 196]
                    s = s + 32
                    continue 
                mem[_2503 + ceil32(return_data.size) + 396] = 0
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).mem[_2503 + ceil32(return_data.size) + 328 len 4] with:
                     gas gas_remaining wei
                    args mem[_2503 + ceil32(return_data.size) + 332 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_2503 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2503 + ceil32(return_data.size) + 332] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2503 + ceil32(return_data.size) + 396] = mem[idx + _2503 + ceil32(return_data.size) + 296]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2503 + ceil32(return_data.size) + 396]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_2503 + ceil32(return_data.size) + 328] = ext_call.return_data[0]
                else:
                    mem[64] = _2503 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                    mem[_2503 + ceil32(return_data.size) + 328] = return_data.size
                    mem[_2503 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _2503 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _2503 + ceil32(return_data.size) + 296]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2503 + ceil32(return_data.size) + 360] == bool(mem[_2503 + ceil32(return_data.size) + 360])
                        if not mem[_2503 + ceil32(return_data.size) + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
                emit 0xa271a759: ext_call.return_data[0], address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]), address(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_2503 + 164] = return_data.size
        mem[_2503 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2503 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2503 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[idx + _2503 + ceil32(return_data.size) + 233] = mem[idx + _2503 + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_2503 + ceil32(return_data.size) + 233]
        if return_data.size:
            require return_data.size >= 32
            require mem[_2503 + 196] == bool(mem[_2503 + 196])
            if not mem[_2503 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xa271a759: _2502, address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), address(cd[36])
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
        mem[_2503 + ceil32(return_data.size) + 169] = this.address
        require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]))
        staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_2503 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _2503 + ceil32(return_data.size) + ceil32(return_data.size) + 165
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(cd[36])
        mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = ext_call.return_data[0]
        mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(cd[36]) << 64
        mem[64] = _2503 + ceil32(return_data.size) + ceil32(return_data.size) + 329
        mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])):
            revert with 0, 'Address: call to non-contract'
        s = 0
        while s < 68:
            mem[s + _2503 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _2503 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
            s = s + 32
            continue 
        mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
        call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]).mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
             gas gas_remaining wei
            args mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _2503 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _2503 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            emit 0xa271a759: ext_call.return_data[0], address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]), address(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[64] = _2503 + (4 * ceil32(return_data.size)) + 330
        mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
        mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2503 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2503 + (4 * ceil32(return_data.size)) + 334] = 32
            idx = 0
            while idx < 32:
                mem[idx + _2503 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _2503 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_2503 + (4 * ceil32(return_data.size)) + 398]
        if not return_data.size:
            mem[_2503 + (4 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
            emit 0xa271a759: ext_call.return_data[0], address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]), address(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require return_data.size >= 32
        require mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
        if mem[_2503 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
            mem[_2503 + (4 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
            emit 0xa271a759: ext_call.return_data[0], address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]), address(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_2503 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_2503 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_2503 + (4 * ceil32(return_data.size)) + 366] = 42
        mem[_2503 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
        mem[_2503 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
        revert with memory
          from _2503 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
