contract main {




// =====================  Runtime code  =====================


address owner;
address sub_7cf76648Address;
address sub_12548a42Address;
address stor3;
array of struct stor4;
address stor5;
address stor6;
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor12;

function sub_12548a42(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_12548a42Address
}

function sub_7cf76648(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_7cf76648Address
}

function owner() {
    return owner
}

function getMaxBuy() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return stor10, stor11
}

function sub_72f16e6b(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return stor5, stor6
}

function sub_362f79fa(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = 0
    return 1
}

function sub_4956536d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = 1
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a7d36e42(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor12), stor3, stor9, stor7, stor8, stor5, stor6
}

function sub_39cd8404(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
    stor11 = arg2
    return 1
}

function sub_6bf0a6af(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7cf76648Address = address(arg1)
    return 1
}

function sub_986e25cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_12548a42Address = address(arg1)
    return 1
}

function sub_dd2745b6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = address(arg1)
    stor9 = arg2
    stor12 = 0
    return 1
}

function sub_9f387358(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = address(arg1)
    stor8 = address(arg2)
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_ed8e7a3d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = address(arg1)
    stor6 = address(arg2)
    call sub_7cf76648Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_169cdd0d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args sub_12548a42Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_fddd2c26(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough tokens in contract'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args sub_12548a42Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_ae848c88(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            stor4[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_f7535ddf(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        idx = 0
        s = (32 * stor4.length) + 192
        t = 128
        while idx < stor4.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor4.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function sub_92da4c3c(?) {
    if stor12:
        revert with 0, 'bolt.'
    mem[100] = stor7
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'nope'
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall sub_7cf76648Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if sub_7cf76648Address == stor8:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = sub_7cf76648Address
            mem[(2 * ceil32(return_data.size)) + 160] = stor3
            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 228] = 64
            mem[(2 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _176 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _178 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = _178
            require (32 * _178) + _176 + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _178)] = mem[(2 * ceil32(return_data.size)) + _176 + 224 len ceil32(32 * _178)]
            if _178 < 1:
                revert with 0, 17
            if _178 - 1 >= _178:
                revert with 0, 50
            if mem[(32 * _178 - 1) + (4 * ceil32(return_data.size)) + 224] >= stor9:
                if 120 > !block.timestamp:
                    revert with 0, 17
                _326 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 68] = stor9
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 228
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp + 120
                _448 = mem[64]
                mem[mem[64]] = 260
                mem[64] = mem[64] + 292
                mem[_448 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
                _454 = mem[_448]
                mem[_326 + 292 len ceil32(mem[_448])] = mem[_448 + 32 len ceil32(mem[_448])]
                if ceil32(_454) > _454:
                    mem[_326 + _454 + 292] = 0
                call stor5.mem[_326 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_326 + 296 len _454 - 4]
                if ext_call.success:
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    require return_data.size >= 32
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_12548a42Address, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = sub_7cf76648Address
            mem[(2 * ceil32(return_data.size)) + 160] = stor8
            mem[(2 * ceil32(return_data.size)) + 192] = stor3
            mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 260] = 64
            mem[(2 * ceil32(return_data.size)) + 292] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _177 = mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _179 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            require (32 * _179) + _177 + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 256 len ceil32(32 * _179)] = mem[(2 * ceil32(return_data.size)) + _177 + 256 len ceil32(32 * _179)]
            if _179 < 1:
                revert with 0, 17
            if _179 - 1 >= _179:
                revert with 0, 50
            if mem[(32 * _179 - 1) + (4 * ceil32(return_data.size)) + 256] >= stor9:
                if 120 > !block.timestamp:
                    revert with 0, 17
                _327 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 68] = stor9
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 228
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp + 120
                _451 = mem[64]
                mem[mem[64]] = 292
                mem[64] = mem[64] + 324
                mem[_451 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
                _455 = mem[_451]
                mem[_327 + 324 len ceil32(mem[_451])] = mem[_451 + 32 len ceil32(mem[_451])]
                if ceil32(_455) > _455:
                    mem[_327 + _455 + 324] = 0
                call stor5.mem[_327 + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[_327 + 328 len _455 - 4]
                if ext_call.success:
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    require return_data.size >= 32
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_12548a42Address, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor12 = 1
    return 1
}

function sub_0923c114(?) {
    if stor12:
        revert with 0, 'bolt.b'
    mem[100] = stor7
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'undiscovered'
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall sub_7cf76648Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if sub_7cf76648Address == stor8:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[64] = (2 * ceil32(return_data.size)) + 192
            mem[(2 * ceil32(return_data.size)) + 128] = sub_7cf76648Address
            mem[(2 * ceil32(return_data.size)) + 160] = stor3
            if not stor4.length:
                revert with 0, 'undiscovered'
            idx = 0
            s = 96
            while idx < stor4.length:
                if not stor4.length:
                    revert with 0, 18
                _104 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0] / stor4.length
                mem[mem[64] + 36] = 64
                _106 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
                s = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 100
                while s < _106:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _104 + (32 * _106) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _178 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _180 = mem[_178]
                require mem[_178] <= test266151307()
                require _178 + mem[_178] + 31 < _178 + return_data.size
                _182 = mem[_178 + mem[_178]]
                if mem[_178 + mem[_178]] > test266151307():
                    revert with 0, 65
                if _178 + ceil32(return_data.size) + ceil32(32 * mem[_178 + mem[_178]]) + 1 > test266151307() or ceil32(32 * mem[_178 + mem[_178]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _178 + ceil32(return_data.size) + ceil32(32 * mem[_178 + mem[_178]]) + 1
                mem[_178 + ceil32(return_data.size)] = _182
                require (32 * _182) + _180 + 32 <= return_data.size
                t = _178 + ceil32(return_data.size) + 32
                s = _178 + _180 + 32
                while s < (32 * _182) + _178 + _180 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if not stor4.length:
                    revert with 0, 18
                if _182 < 1:
                    revert with 0, 17
                if _182 - 1 >= _182:
                    revert with 0, 50
                if mem[(32 * _182 - 1) + _178 + ceil32(return_data.size) + 32] >= stor9 / stor4.length:
                    if not stor4.length:
                        revert with 0, 18
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    if 120 > !block.timestamp:
                        revert with 0, 17
                    _254 = mem[64]
                    mem[mem[64] + 36] = ext_call.return_data[0] / stor4.length
                    mem[mem[64] + 68] = stor9 / stor4.length
                    mem[mem[64] + 100] = 160
                    _256 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 96]
                    s = 0
                    t = (2 * ceil32(return_data.size)) + 128
                    u = mem[64] + 228
                    while s < _256:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_254 + 132] = stor4[idx].field_0
                    mem[_254 + 164] = block.timestamp + 120
                    _296 = mem[64]
                    mem[mem[64]] = _254 + (32 * _256) + -mem[64] + 196
                    mem[64] = _254 + (32 * _256) + 228
                    mem[_296 + 32] = mem[_296 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    _302 = mem[_296]
                    s = 0
                    while s < _302:
                        mem[s + _254 + (32 * _256) + 228] = mem[_296 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_302) > _302:
                        mem[_254 + (32 * _256) + _302 + 228] = 0
                    call stor5.mem[_254 + (32 * _256) + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[_254 + (32 * _256) + 232 len _302 - 4]
                    if return_data.size:
                        mem[64] = _254 + (32 * _256) + ceil32(return_data.size) + 229
                        mem[_254 + (32 * _256) + 228] = return_data.size
                        mem[_254 + (32 * _256) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _178 + ceil32(return_data.size)
                        continue 
                stor12 = 1
                return 1
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[64] = (2 * ceil32(return_data.size)) + 224
            mem[(2 * ceil32(return_data.size)) + 128] = sub_7cf76648Address
            mem[(2 * ceil32(return_data.size)) + 160] = stor8
            mem[(2 * ceil32(return_data.size)) + 192] = stor3
            if not stor4.length:
                revert with 0, 'undiscovered'
            idx = 0
            s = 96
            while idx < stor4.length:
                if not stor4.length:
                    revert with 0, 18
                _105 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0] / stor4.length
                mem[mem[64] + 36] = 64
                _107 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
                s = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 100
                while s < _107:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _105 + (32 * _107) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _179 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _181 = mem[_179]
                require mem[_179] <= test266151307()
                require _179 + mem[_179] + 31 < _179 + return_data.size
                _183 = mem[_179 + mem[_179]]
                if mem[_179 + mem[_179]] > test266151307():
                    revert with 0, 65
                if _179 + ceil32(return_data.size) + ceil32(32 * mem[_179 + mem[_179]]) + 1 > test266151307() or ceil32(32 * mem[_179 + mem[_179]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _179 + ceil32(return_data.size) + ceil32(32 * mem[_179 + mem[_179]]) + 1
                mem[_179 + ceil32(return_data.size)] = _183
                require (32 * _183) + _181 + 32 <= return_data.size
                t = _179 + ceil32(return_data.size) + 32
                s = _179 + _181 + 32
                while s < (32 * _183) + _179 + _181 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if not stor4.length:
                    revert with 0, 18
                if _183 < 1:
                    revert with 0, 17
                if _183 - 1 >= _183:
                    revert with 0, 50
                if mem[(32 * _183 - 1) + _179 + ceil32(return_data.size) + 32] >= stor9 / stor4.length:
                    if not stor4.length:
                        revert with 0, 18
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    if 120 > !block.timestamp:
                        revert with 0, 17
                    _255 = mem[64]
                    mem[mem[64] + 36] = ext_call.return_data[0] / stor4.length
                    mem[mem[64] + 68] = stor9 / stor4.length
                    mem[mem[64] + 100] = 160
                    _257 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 96]
                    s = 0
                    t = (2 * ceil32(return_data.size)) + 128
                    u = mem[64] + 228
                    while s < _257:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_255 + 132] = stor4[idx].field_0
                    mem[_255 + 164] = block.timestamp + 120
                    _299 = mem[64]
                    mem[mem[64]] = _255 + (32 * _257) + -mem[64] + 196
                    mem[64] = _255 + (32 * _257) + 228
                    mem[_299 + 32] = mem[_299 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    _303 = mem[_299]
                    s = 0
                    while s < _303:
                        mem[s + _255 + (32 * _257) + 228] = mem[_299 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_303) > _303:
                        mem[_255 + (32 * _257) + _303 + 228] = 0
                    call stor5.mem[_255 + (32 * _257) + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[_255 + (32 * _257) + 232 len _303 - 4]
                    if return_data.size:
                        mem[64] = _255 + (32 * _257) + ceil32(return_data.size) + 229
                        mem[_255 + (32 * _257) + 228] = return_data.size
                        mem[_255 + (32 * _257) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _179 + ceil32(return_data.size)
                        continue 
                stor12 = 1
                return 1
    stor12 = 1
    return 1
}

function sub_00945e70(?) {
    if stor12:
        revert with 0, 'bolt.p'
    mem[100] = stor7
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'undiscovered'
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall sub_7cf76648Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if sub_7cf76648Address == stor8:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[64] = (2 * ceil32(return_data.size)) + 192
            mem[(2 * ceil32(return_data.size)) + 128] = sub_7cf76648Address
            mem[(2 * ceil32(return_data.size)) + 160] = stor3
            if not stor4.length:
                revert with 0, 'undiscovered'
            idx = 0
            s = 96
            while idx < stor4.length:
                if not stor4.length:
                    revert with 0, 18
                _174 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0] / stor4.length
                mem[mem[64] + 36] = 64
                _176 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
                s = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 100
                while s < _176:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _174 + (32 * _176) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _318 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _320 = mem[_318]
                require mem[_318] <= test266151307()
                require _318 + mem[_318] + 31 < _318 + return_data.size
                _322 = mem[_318 + mem[_318]]
                if mem[_318 + mem[_318]] > test266151307():
                    revert with 0, 65
                if _318 + ceil32(return_data.size) + ceil32(32 * mem[_318 + mem[_318]]) + 1 > test266151307() or ceil32(32 * mem[_318 + mem[_318]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _318 + ceil32(return_data.size) + ceil32(32 * mem[_318 + mem[_318]]) + 1
                mem[_318 + ceil32(return_data.size)] = _322
                require (32 * _322) + _320 + 32 <= return_data.size
                t = _318 + ceil32(return_data.size) + 32
                s = _318 + _320 + 32
                while s < (32 * _322) + _318 + _320 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if not stor4.length:
                    revert with 0, 18
                if _322 < 1:
                    revert with 0, 17
                if _322 - 1 >= _322:
                    revert with 0, 50
                if mem[(32 * _322 - 1) + _318 + ceil32(return_data.size) + 32] < stor9 / stor4.length:
                    stor12 = 1
                    return 1
                if not stor4.length:
                    revert with 0, 18
                if 120 > !block.timestamp:
                    revert with 0, 17
                _462 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0] / stor4.length
                mem[mem[64] + 68] = stor9 / stor4.length
                mem[mem[64] + 100] = 160
                _464 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 96]
                s = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 228
                while s < _464:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_462 + 132] = this.address
                mem[_462 + 164] = block.timestamp + 120
                _576 = mem[64]
                mem[mem[64]] = _462 + (32 * _464) + -mem[64] + 196
                mem[64] = _462 + (32 * _464) + 228
                mem[_576 + 32] = mem[_576 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                _582 = mem[_576]
                s = 0
                while s < _582:
                    mem[s + _462 + (32 * _464) + 228] = mem[_576 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_582) > _582:
                    mem[_462 + (32 * _464) + _582 + 228] = 0
                call stor5.mem[_462 + (32 * _464) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_462 + (32 * _464) + 232 len _582 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        stor12 = 1
                        return 1
                    mem[_462 + (32 * _464) + 232] = this.address
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_462 + (32 * _464) + 228] = ext_call.return_data[0]
                    require return_data.size >= 32
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    mem[_462 + (32 * _464) + ceil32(return_data.size) + 232] = stor4[idx].field_0
                    mem[_462 + (32 * _464) + ceil32(return_data.size) + 264] = ext_call.return_data[0]
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4[idx].field_0, ext_call.return_data[0]
                    mem[_462 + (32 * _464) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _462 + (32 * _464) + (2 * ceil32(return_data.size)) + 228
                else:
                    mem[_462 + (32 * _464) + 228] = return_data.size
                    mem[_462 + (32 * _464) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        stor12 = 1
                        return 1
                    mem[_462 + (32 * _464) + ceil32(return_data.size) + 233] = this.address
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_462 + (32 * _464) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    require return_data.size >= 32
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    mem[_462 + (32 * _464) + ceil32(return_data.size) + ceil32(return_data.size) + 233] = stor4[idx].field_0
                    mem[_462 + (32 * _464) + ceil32(return_data.size) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4[idx].field_0, ext_call.return_data[0]
                    mem[_462 + (32 * _464) + ceil32(return_data.size) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _462 + (32 * _464) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 229
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _318 + ceil32(return_data.size)
                continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[64] = (2 * ceil32(return_data.size)) + 224
            mem[(2 * ceil32(return_data.size)) + 128] = sub_7cf76648Address
            mem[(2 * ceil32(return_data.size)) + 160] = stor8
            mem[(2 * ceil32(return_data.size)) + 192] = stor3
            if not stor4.length:
                revert with 0, 'undiscovered'
            idx = 0
            s = 96
            while idx < stor4.length:
                if not stor4.length:
                    revert with 0, 18
                _175 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0] / stor4.length
                mem[mem[64] + 36] = 64
                _177 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
                s = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 100
                while s < _177:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _175 + (32 * _177) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _319 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _321 = mem[_319]
                require mem[_319] <= test266151307()
                require _319 + mem[_319] + 31 < _319 + return_data.size
                _323 = mem[_319 + mem[_319]]
                if mem[_319 + mem[_319]] > test266151307():
                    revert with 0, 65
                if _319 + ceil32(return_data.size) + ceil32(32 * mem[_319 + mem[_319]]) + 1 > test266151307() or ceil32(32 * mem[_319 + mem[_319]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _319 + ceil32(return_data.size) + ceil32(32 * mem[_319 + mem[_319]]) + 1
                mem[_319 + ceil32(return_data.size)] = _323
                require (32 * _323) + _321 + 32 <= return_data.size
                t = _319 + ceil32(return_data.size) + 32
                s = _319 + _321 + 32
                while s < (32 * _323) + _319 + _321 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if not stor4.length:
                    revert with 0, 18
                if _323 < 1:
                    revert with 0, 17
                if _323 - 1 >= _323:
                    revert with 0, 50
                if mem[(32 * _323 - 1) + _319 + ceil32(return_data.size) + 32] < stor9 / stor4.length:
                    stor12 = 1
                    return 1
                if not stor4.length:
                    revert with 0, 18
                if 120 > !block.timestamp:
                    revert with 0, 17
                _463 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0] / stor4.length
                mem[mem[64] + 68] = stor9 / stor4.length
                mem[mem[64] + 100] = 160
                _465 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 96]
                s = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 228
                while s < _465:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_463 + 132] = this.address
                mem[_463 + 164] = block.timestamp + 120
                _579 = mem[64]
                mem[mem[64]] = _463 + (32 * _465) + -mem[64] + 196
                mem[64] = _463 + (32 * _465) + 228
                mem[_579 + 32] = mem[_579 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                _583 = mem[_579]
                s = 0
                while s < _583:
                    mem[s + _463 + (32 * _465) + 228] = mem[_579 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_583) > _583:
                    mem[_463 + (32 * _465) + _583 + 228] = 0
                call stor5.mem[_463 + (32 * _465) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_463 + (32 * _465) + 232 len _583 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        stor12 = 1
                        return 1
                    mem[_463 + (32 * _465) + 232] = this.address
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_463 + (32 * _465) + 228] = ext_call.return_data[0]
                    require return_data.size >= 32
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    mem[_463 + (32 * _465) + ceil32(return_data.size) + 232] = stor4[idx].field_0
                    mem[_463 + (32 * _465) + ceil32(return_data.size) + 264] = ext_call.return_data[0]
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4[idx].field_0, ext_call.return_data[0]
                    mem[_463 + (32 * _465) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _463 + (32 * _465) + (2 * ceil32(return_data.size)) + 228
                else:
                    mem[_463 + (32 * _465) + 228] = return_data.size
                    mem[_463 + (32 * _465) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        stor12 = 1
                        return 1
                    mem[_463 + (32 * _465) + ceil32(return_data.size) + 233] = this.address
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_463 + (32 * _465) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    require return_data.size >= 32
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    mem[_463 + (32 * _465) + ceil32(return_data.size) + ceil32(return_data.size) + 233] = stor4[idx].field_0
                    mem[_463 + (32 * _465) + ceil32(return_data.size) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4[idx].field_0, ext_call.return_data[0]
                    mem[_463 + (32 * _465) + ceil32(return_data.size) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _463 + (32 * _465) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 229
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _319 + ceil32(return_data.size)
                continue 
    stor12 = 1
    return 1
}

function sub_c2bc2f1b(?) {
    if stor12:
        revert with 0, 'bolt.mx'
    mem[100] = stor7
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'undiscovered'
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall sub_7cf76648Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if sub_7cf76648Address == stor8:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[64] = (2 * ceil32(return_data.size)) + 192
            mem[(2 * ceil32(return_data.size)) + 128] = sub_7cf76648Address
            mem[(2 * ceil32(return_data.size)) + 160] = stor3
            if not stor4.length:
                revert with 0, 'undiscovered'
            idx = 0
            s = 96
            while idx < stor4.length:
                _188 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor10
                mem[mem[64] + 36] = 64
                _193 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
                s = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 100
                while s < _193:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _188 + (32 * _193) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _354 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _356 = mem[_354]
                require mem[_354] <= test266151307()
                require _354 + mem[_354] + 31 < _354 + return_data.size
                _358 = mem[_354 + mem[_354]]
                if mem[_354 + mem[_354]] > test266151307():
                    revert with 0, 65
                if _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1 > test266151307() or ceil32(32 * mem[_354 + mem[_354]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1
                mem[_354 + ceil32(return_data.size)] = _358
                require (32 * _358) + _356 + 32 <= return_data.size
                t = _354 + ceil32(return_data.size) + 32
                s = _354 + _356 + 32
                while s < (32 * _358) + _354 + _356 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 0 >= _358:
                    revert with 0, 50
                if mem[_354 + ceil32(return_data.size) + 32] > stor11:
                    stor12 = 1
                    return 1
                if 0 >= _358:
                    revert with 0, 50
                _512 = mem[_354 + ceil32(return_data.size) + 32]
                mem[mem[64] + 4] = this.address
                staticcall sub_7cf76648Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_520] < _512:
                    stor12 = 1
                    return 1
                if not _358:
                    revert with 0, 50
                if stor10 < stor10 / 10:
                    revert with 0, 17
                if 120 > !block.timestamp:
                    revert with 0, 17
                _534 = mem[64]
                mem[mem[64] + 36] = mem[_354 + ceil32(return_data.size) + 32]
                mem[mem[64] + 68] = stor10 - (stor10 / 10)
                mem[mem[64] + 100] = 160
                _536 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 96]
                s = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 228
                while s < _536:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp + 120
                _648 = mem[64]
                mem[mem[64]] = (32 * _536) + 196
                mem[64] = mem[64] + (32 * _536) + 228
                mem[_648 + 32] = mem[_648 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                _654 = mem[_648]
                s = 0
                while s < _654:
                    mem[s + _534 + (32 * _536) + 228] = mem[_648 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_654) <= _654:
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _654 + _534 + (32 * _536) + -mem[64] + 224]
                    if not return_data.size:
                        if not ext_call.success:
                            stor12 = 1
                            return 1
                        mem[mem[64] + 4] = this.address
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        _772 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _800 = mem[_772]
                        if idx >= stor4.length:
                            revert with 0, 50
                        mem[0] = 4
                        mem[mem[64] + 4] = stor4[idx].field_0
                        mem[mem[64] + 36] = _800
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4[idx].field_0, _800
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _824 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_824] == bool(mem[_824])
                    else:
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_758] = return_data.size
                        mem[_758 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            stor12 = 1
                            return 1
                        mem[mem[64] + 4] = this.address
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        _774 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _801 = mem[_774]
                        if idx >= stor4.length:
                            revert with 0, 50
                        mem[0] = 4
                        mem[mem[64] + 4] = stor4[idx].field_0
                        mem[mem[64] + 36] = _801
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4[idx].field_0, _801
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _825 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_825] == bool(mem[_825])
                else:
                    mem[_534 + (32 * _536) + _654 + 228] = 0
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _654 + _534 + (32 * _536) + -mem[64] + 224]
                    if not return_data.size:
                        if not ext_call.success:
                            stor12 = 1
                            return 1
                        mem[mem[64] + 4] = this.address
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        _790 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _808 = mem[_790]
                        if idx >= stor4.length:
                            revert with 0, 50
                        mem[0] = 4
                        mem[mem[64] + 4] = stor4[idx].field_0
                        mem[mem[64] + 36] = _808
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4[idx].field_0, _808
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _840 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_840] == bool(mem[_840])
                    else:
                        _762 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_762] = return_data.size
                        mem[_762 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            stor12 = 1
                            return 1
                        mem[mem[64] + 4] = this.address
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        _792 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _809 = mem[_792]
                        if idx >= stor4.length:
                            revert with 0, 50
                        mem[0] = 4
                        mem[mem[64] + 4] = stor4[idx].field_0
                        mem[mem[64] + 36] = _809
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4[idx].field_0, _809
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _841 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_841] == bool(mem[_841])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _354 + ceil32(return_data.size)
                continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[64] = (2 * ceil32(return_data.size)) + 224
            mem[(2 * ceil32(return_data.size)) + 128] = sub_7cf76648Address
            mem[(2 * ceil32(return_data.size)) + 160] = stor8
            mem[(2 * ceil32(return_data.size)) + 192] = stor3
            if not stor4.length:
                revert with 0, 'undiscovered'
            idx = 0
            s = 96
            while idx < stor4.length:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor10
                mem[mem[64] + 36] = 64
                _195 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
                s = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 100
                while s < _195:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args stor10, 64, mem[mem[64] + 68 len (32 * _195) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _355 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _357 = mem[_355]
                require mem[_355] <= test266151307()
                require _355 + mem[_355] + 31 < _355 + return_data.size
                _359 = mem[_355 + mem[_355]]
                if mem[_355 + mem[_355]] > test266151307():
                    revert with 0, 65
                if _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1 > test266151307() or ceil32(32 * mem[_355 + mem[_355]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _355 + ceil32(return_data.size) + ceil32(32 * mem[_355 + mem[_355]]) + 1
                mem[_355 + ceil32(return_data.size)] = _359
                require (32 * _359) + _357 + 32 <= return_data.size
                t = _355 + ceil32(return_data.size) + 32
                s = _355 + _357 + 32
                while s < (32 * _359) + _355 + _357 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 0 >= _359:
                    revert with 0, 50
                if mem[_355 + ceil32(return_data.size) + 32] > stor11:
                    stor12 = 1
                    return 1
                if 0 >= _359:
                    revert with 0, 50
                _516 = mem[_355 + ceil32(return_data.size) + 32]
                mem[mem[64] + 4] = this.address
                staticcall sub_7cf76648Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _522 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_522] < _516:
                    stor12 = 1
                    return 1
                if not _359:
                    revert with 0, 50
                if stor10 < stor10 / 10:
                    revert with 0, 17
                if 120 > !block.timestamp:
                    revert with 0, 17
                _535 = mem[64]
                mem[mem[64] + 36] = mem[_355 + ceil32(return_data.size) + 32]
                mem[mem[64] + 68] = stor10 - (stor10 / 10)
                mem[mem[64] + 100] = 160
                _537 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 96]
                s = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 228
                while s < _537:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_535 + 132] = this.address
                mem[_535 + 164] = block.timestamp + 120
                _651 = mem[64]
                mem[mem[64]] = _535 + (32 * _537) + -mem[64] + 196
                mem[64] = _535 + (32 * _537) + 228
                mem[_651 + 32] = mem[_651 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                _655 = mem[_651]
                s = 0
                while s < _655:
                    mem[s + _535 + (32 * _537) + 228] = mem[_651 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_655) > _655:
                    mem[_535 + (32 * _537) + _655 + 228] = 0
                call stor5.mem[_535 + (32 * _537) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_535 + (32 * _537) + 232 len _655 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        stor12 = 1
                        return 1
                    mem[_535 + (32 * _537) + 232] = this.address
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_535 + (32 * _537) + 228] = ext_call.return_data[0]
                    require return_data.size >= 32
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    mem[_535 + (32 * _537) + ceil32(return_data.size) + 232] = stor4[idx].field_0
                    mem[_535 + (32 * _537) + ceil32(return_data.size) + 264] = ext_call.return_data[0]
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4[idx].field_0, ext_call.return_data[0]
                    mem[_535 + (32 * _537) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _535 + (32 * _537) + (2 * ceil32(return_data.size)) + 228
                else:
                    mem[_535 + (32 * _537) + 228] = return_data.size
                    mem[_535 + (32 * _537) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        stor12 = 1
                        return 1
                    mem[_535 + (32 * _537) + ceil32(return_data.size) + 233] = this.address
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_535 + (32 * _537) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    require return_data.size >= 32
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    mem[_535 + (32 * _537) + ceil32(return_data.size) + ceil32(return_data.size) + 233] = stor4[idx].field_0
                    mem[_535 + (32 * _537) + ceil32(return_data.size) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4[idx].field_0, ext_call.return_data[0]
                    mem[_535 + (32 * _537) + ceil32(return_data.size) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _535 + (32 * _537) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 229
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _355 + ceil32(return_data.size)
                continue 
    stor12 = 1
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        require ext_code.size(sub_7cf76648Address)
        call sub_7cf76648Address.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if unknown_0x92da4c3c(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x4956536d(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x72f16e6b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x72f16e6b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    return stor5, stor6
                if unknown_0x7cf76648(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    return sub_7cf76648Address
                require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return owner
            if unknown_0x4956536d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor12 = 1
                return 1
            if unknown_0x6bf0a6af(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                sub_7cf76648Address = address(cd[4])
                return 1
            require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            owner = 0
            emit OwnershipTransferred(owner, 0);
        if unknown_0x169cdd0d(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x169cdd0d(?????):
                if unknown_0x362f79fa(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor12 = 0
                else:
                    require unknown_0x39cd8404(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor10 = cd[4]
                    stor11 = cd[36]
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_12548a42Address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x00945e70(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if stor12:
                    revert with 0, 'bolt.p'
                mem[132] = stor7
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args stor7
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'undiscovered'
                mem[ceil32(return_data.size) + 132] = this.address
                staticcall sub_7cf76648Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if sub_7cf76648Address == stor8:
                        mem[(2 * ceil32(return_data.size)) + 128] = 2
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        mem[(2 * ceil32(return_data.size)) + 160] = sub_7cf76648Address
                        mem[(2 * ceil32(return_data.size)) + 192] = stor3
                        if not stor4.length:
                            revert with 0, 'undiscovered'
                        idx = 0
                        s = 96
                        while idx < stor4.length:
                            if not stor4.length:
                                revert with 0, 18
                            _756 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / stor4.length
                            mem[mem[64] + 36] = 64
                            _766 = mem[(2 * ceil32(return_data.size)) + 128]
                            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 128]
                            s = 0
                            t = (2 * ceil32(return_data.size)) + 160
                            u = mem[64] + 100
                            while s < _766:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _756 + (32 * _766) + -mem[64] + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1282 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1294 = mem[_1282]
                            require mem[_1282] <= test266151307()
                            require _1282 + mem[_1282] + 31 < _1282 + return_data.size
                            _1302 = mem[_1282 + mem[_1282]]
                            if mem[_1282 + mem[_1282]] > test266151307():
                                revert with 0, 65
                            if _1282 + ceil32(return_data.size) + ceil32(32 * mem[_1282 + mem[_1282]]) + 1 > test266151307() or ceil32(32 * mem[_1282 + mem[_1282]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1282 + ceil32(return_data.size) + ceil32(32 * mem[_1282 + mem[_1282]]) + 1
                            mem[_1282 + ceil32(return_data.size)] = _1302
                            require (32 * _1302) + _1294 + 32 <= return_data.size
                            t = _1282 + ceil32(return_data.size) + 32
                            s = _1282 + _1294 + 32
                            while s < (32 * _1302) + _1282 + _1294 + 32:
                                mem[t] = mem[s]
                                t = t + 32
                                s = s + 32
                                continue 
                            if not stor4.length:
                                revert with 0, 18
                            if _1302 < 1:
                                revert with 0, 17
                            if _1302 - 1 >= _1302:
                                revert with 0, 50
                            if mem[(32 * _1302 - 1) + _1282 + ceil32(return_data.size) + 32] < stor9 / stor4.length:
                                stor12 = 1
                                return 1
                            if not stor4.length:
                                revert with 0, 18
                            if 120 > !block.timestamp:
                                revert with 0, 17
                            _1912 = mem[64]
                            mem[mem[64] + 36] = ext_call.return_data[0] / stor4.length
                            mem[mem[64] + 68] = stor9 / stor4.length
                            mem[mem[64] + 100] = 160
                            _1922 = mem[(2 * ceil32(return_data.size)) + 128]
                            mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 128]
                            s = 0
                            t = (2 * ceil32(return_data.size)) + 160
                            u = mem[64] + 228
                            while s < _1922:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp + 120
                            _2204 = mem[64]
                            mem[mem[64]] = (32 * _1922) + 196
                            mem[64] = mem[64] + (32 * _1922) + 228
                            mem[_2204 + 32] = mem[_2204 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            _2224 = mem[_2204]
                            s = 0
                            while s < _2224:
                                mem[s + _1912 + (32 * _1922) + 228] = mem[_2204 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2224) <= _2224:
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2224 + _1912 + (32 * _1922) + -mem[64] + 224]
                                if not return_data.size:
                                    if not ext_call.success:
                                        stor12 = 1
                                        return 1
                                    mem[mem[64] + 4] = this.address
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    _2600 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2668 = mem[_2600]
                                    if idx >= stor4.length:
                                        revert with 0, 50
                                    mem[0] = 4
                                    mem[mem[64] + 4] = stor4[idx].field_0
                                    mem[mem[64] + 36] = _2668
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4[idx].field_0, _2668
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2720 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2720] == bool(mem[_2720])
                                else:
                                    _2566 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2566] = return_data.size
                                    mem[_2566 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        stor12 = 1
                                        return 1
                                    mem[mem[64] + 4] = this.address
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    _2602 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2669 = mem[_2602]
                                    if idx >= stor4.length:
                                        revert with 0, 50
                                    mem[0] = 4
                                    mem[mem[64] + 4] = stor4[idx].field_0
                                    mem[mem[64] + 36] = _2669
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4[idx].field_0, _2669
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2721 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2721] == bool(mem[_2721])
                            else:
                                mem[_1912 + (32 * _1922) + _2224 + 228] = 0
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2224 + _1912 + (32 * _1922) + -mem[64] + 224]
                                if not return_data.size:
                                    if not ext_call.success:
                                        stor12 = 1
                                        return 1
                                    mem[mem[64] + 4] = this.address
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    _2638 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2688 = mem[_2638]
                                    if idx >= stor4.length:
                                        revert with 0, 50
                                    mem[0] = 4
                                    mem[mem[64] + 4] = stor4[idx].field_0
                                    mem[mem[64] + 36] = _2688
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4[idx].field_0, _2688
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2752 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2752] == bool(mem[_2752])
                                else:
                                    _2578 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2578] = return_data.size
                                    mem[_2578 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        stor12 = 1
                                        return 1
                                    mem[mem[64] + 4] = this.address
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    _2640 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2689 = mem[_2640]
                                    if idx >= stor4.length:
                                        revert with 0, 50
                                    mem[0] = 4
                                    mem[mem[64] + 4] = stor4[idx].field_0
                                    mem[mem[64] + 36] = _2689
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4[idx].field_0, _2689
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2753 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2753] == bool(mem[_2753])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1282 + ceil32(return_data.size)
                            continue 
                    else:
                        mem[(2 * ceil32(return_data.size)) + 128] = 3
                        mem[64] = (2 * ceil32(return_data.size)) + 256
                        mem[(2 * ceil32(return_data.size)) + 160] = sub_7cf76648Address
                        mem[(2 * ceil32(return_data.size)) + 192] = stor8
                        mem[(2 * ceil32(return_data.size)) + 224] = stor3
                        if not stor4.length:
                            revert with 0, 'undiscovered'
                        idx = 0
                        s = 96
                        while idx < stor4.length:
                            if not stor4.length:
                                revert with 0, 18
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / stor4.length
                            mem[mem[64] + 36] = 64
                            _767 = mem[(2 * ceil32(return_data.size)) + 128]
                            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 128]
                            s = 0
                            t = (2 * ceil32(return_data.size)) + 160
                            u = mem[64] + 100
                            while s < _767:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / stor4.length, 64, mem[mem[64] + 68 len (32 * _767) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1283 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1295 = mem[_1283]
                            require mem[_1283] <= test266151307()
                            require _1283 + mem[_1283] + 31 < _1283 + return_data.size
                            _1303 = mem[_1283 + mem[_1283]]
                            if mem[_1283 + mem[_1283]] > test266151307():
                                revert with 0, 65
                            if _1283 + ceil32(return_data.size) + ceil32(32 * mem[_1283 + mem[_1283]]) + 1 > test266151307() or ceil32(32 * mem[_1283 + mem[_1283]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1283 + ceil32(return_data.size) + ceil32(32 * mem[_1283 + mem[_1283]]) + 1
                            mem[_1283 + ceil32(return_data.size)] = _1303
                            require (32 * _1303) + _1295 + 32 <= return_data.size
                            t = _1283 + ceil32(return_data.size) + 32
                            s = _1283 + _1295 + 32
                            while s < (32 * _1303) + _1283 + _1295 + 32:
                                mem[t] = mem[s]
                                t = t + 32
                                s = s + 32
                                continue 
                            if not stor4.length:
                                revert with 0, 18
                            if _1303 < 1:
                                revert with 0, 17
                            if _1303 - 1 >= _1303:
                                revert with 0, 50
                            if mem[(32 * _1303 - 1) + _1283 + ceil32(return_data.size) + 32] < stor9 / stor4.length:
                                stor12 = 1
                                return 1
                            if not stor4.length:
                                revert with 0, 18
                            if 120 > !block.timestamp:
                                revert with 0, 17
                            _1913 = mem[64]
                            mem[mem[64] + 36] = ext_call.return_data[0] / stor4.length
                            mem[mem[64] + 68] = stor9 / stor4.length
                            mem[mem[64] + 100] = 160
                            _1923 = mem[(2 * ceil32(return_data.size)) + 128]
                            mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 128]
                            s = 0
                            t = (2 * ceil32(return_data.size)) + 160
                            u = mem[64] + 228
                            while s < _1923:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1913 + 132] = this.address
                            mem[_1913 + 164] = block.timestamp + 120
                            _2207 = mem[64]
                            mem[mem[64]] = _1913 + (32 * _1923) + -mem[64] + 196
                            mem[64] = _1913 + (32 * _1923) + 228
                            mem[_2207 + 32] = mem[_2207 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            _2225 = mem[_2207]
                            s = 0
                            while s < _2225:
                                mem[s + _1913 + (32 * _1923) + 228] = mem[_2207 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2225) > _2225:
                                mem[_1913 + (32 * _1923) + _2225 + 228] = 0
                            call stor5.mem[_1913 + (32 * _1923) + 228 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1913 + (32 * _1923) + 232 len _2225 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    stor12 = 1
                                    return 1
                                mem[_1913 + (32 * _1923) + 232] = this.address
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_1913 + (32 * _1923) + 228] = ext_call.return_data[0]
                                require return_data.size >= 32
                                if idx >= stor4.length:
                                    revert with 0, 50
                                mem[0] = 4
                                mem[_1913 + (32 * _1923) + ceil32(return_data.size) + 232] = stor4[idx].field_0
                                mem[_1913 + (32 * _1923) + ceil32(return_data.size) + 264] = ext_call.return_data[0]
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor4[idx].field_0, ext_call.return_data[0]
                                mem[_1913 + (32 * _1923) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1913 + (32 * _1923) + (2 * ceil32(return_data.size)) + 228
                            else:
                                mem[_1913 + (32 * _1923) + 228] = return_data.size
                                mem[_1913 + (32 * _1923) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    stor12 = 1
                                    return 1
                                mem[_1913 + (32 * _1923) + ceil32(return_data.size) + 233] = this.address
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_1913 + (32 * _1923) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                                require return_data.size >= 32
                                if idx >= stor4.length:
                                    revert with 0, 50
                                mem[0] = 4
                                mem[_1913 + (32 * _1923) + ceil32(return_data.size) + ceil32(return_data.size) + 233] = stor4[idx].field_0
                                mem[_1913 + (32 * _1923) + ceil32(return_data.size) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor4[idx].field_0, ext_call.return_data[0]
                                mem[_1913 + (32 * _1923) + ceil32(return_data.size) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1913 + (32 * _1923) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 229
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1283 + ceil32(return_data.size)
                            continue 
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x0923c114(?????):
                    require unknown_0x12548a42(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    return sub_12548a42Address
                require not msg.value
                if stor12:
                    revert with 0, 'bolt.b'
                mem[132] = stor7
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args stor7
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'undiscovered'
                mem[ceil32(return_data.size) + 132] = this.address
                staticcall sub_7cf76648Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if sub_7cf76648Address == stor8:
                        mem[(2 * ceil32(return_data.size)) + 128] = 2
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        mem[(2 * ceil32(return_data.size)) + 160] = sub_7cf76648Address
                        mem[(2 * ceil32(return_data.size)) + 192] = stor3
                        if not stor4.length:
                            revert with 0, 'undiscovered'
                        idx = 0
                        s = 96
                        while idx < stor4.length:
                            if not stor4.length:
                                revert with 0, 18
                            _758 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / stor4.length
                            mem[mem[64] + 36] = 64
                            _768 = mem[(2 * ceil32(return_data.size)) + 128]
                            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 128]
                            s = 0
                            t = (2 * ceil32(return_data.size)) + 160
                            u = mem[64] + 100
                            while s < _768:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _758 + (32 * _768) + -mem[64] + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1284 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1296 = mem[_1284]
                            require mem[_1284] <= test266151307()
                            require _1284 + mem[_1284] + 31 < _1284 + return_data.size
                            _1304 = mem[_1284 + mem[_1284]]
                            if mem[_1284 + mem[_1284]] > test266151307():
                                revert with 0, 65
                            if _1284 + ceil32(return_data.size) + ceil32(32 * mem[_1284 + mem[_1284]]) + 1 > test266151307() or ceil32(32 * mem[_1284 + mem[_1284]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1284 + ceil32(return_data.size) + ceil32(32 * mem[_1284 + mem[_1284]]) + 1
                            mem[_1284 + ceil32(return_data.size)] = _1304
                            require (32 * _1304) + _1296 + 32 <= return_data.size
                            t = _1284 + ceil32(return_data.size) + 32
                            s = _1284 + _1296 + 32
                            while s < (32 * _1304) + _1284 + _1296 + 32:
                                mem[t] = mem[s]
                                t = t + 32
                                s = s + 32
                                continue 
                            if not stor4.length:
                                revert with 0, 18
                            if _1304 < 1:
                                revert with 0, 17
                            if _1304 - 1 >= _1304:
                                revert with 0, 50
                            if mem[(32 * _1304 - 1) + _1284 + ceil32(return_data.size) + 32] >= stor9 / stor4.length:
                                if not stor4.length:
                                    revert with 0, 18
                                if idx >= stor4.length:
                                    revert with 0, 50
                                mem[0] = 4
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                _1918 = mem[64]
                                mem[mem[64] + 36] = ext_call.return_data[0] / stor4.length
                                mem[mem[64] + 68] = stor9 / stor4.length
                                mem[mem[64] + 100] = 160
                                _1928 = mem[(2 * ceil32(return_data.size)) + 128]
                                mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 128]
                                s = 0
                                t = (2 * ceil32(return_data.size)) + 160
                                u = mem[64] + 228
                                while s < _1928:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1918 + 132] = stor4[idx].field_0
                                mem[_1918 + 164] = block.timestamp + 120
                                _2210 = mem[64]
                                mem[mem[64]] = _1918 + (32 * _1928) + -mem[64] + 196
                                mem[64] = _1918 + (32 * _1928) + 228
                                mem[_2210 + 32] = mem[_2210 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                _2226 = mem[_2210]
                                s = 0
                                while s < _2226:
                                    mem[s + _1918 + (32 * _1928) + 228] = mem[_2210 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2226) > _2226:
                                    mem[_1918 + (32 * _1928) + _2226 + 228] = 0
                                call stor5.mem[_1918 + (32 * _1928) + 228 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1918 + (32 * _1928) + 232 len _2226 - 4]
                                if return_data.size:
                                    mem[64] = _1918 + (32 * _1928) + ceil32(return_data.size) + 229
                                    mem[_1918 + (32 * _1928) + 228] = return_data.size
                                    mem[_1918 + (32 * _1928) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _1284 + ceil32(return_data.size)
                                    continue 
                            stor12 = 1
                            return 1
                    else:
                        mem[(2 * ceil32(return_data.size)) + 128] = 3
                        mem[64] = (2 * ceil32(return_data.size)) + 256
                        mem[(2 * ceil32(return_data.size)) + 160] = sub_7cf76648Address
                        mem[(2 * ceil32(return_data.size)) + 192] = stor8
                        mem[(2 * ceil32(return_data.size)) + 224] = stor3
                        if not stor4.length:
                            revert with 0, 'undiscovered'
                        idx = 0
                        s = 96
                        while idx < stor4.length:
                            if not stor4.length:
                                revert with 0, 18
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / stor4.length
                            mem[mem[64] + 36] = 64
                            _769 = mem[(2 * ceil32(return_data.size)) + 128]
                            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 128]
                            s = 0
                            t = (2 * ceil32(return_data.size)) + 160
                            u = mem[64] + 100
                            while s < _769:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / stor4.length, 64, mem[mem[64] + 68 len (32 * _769) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1285 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1297 = mem[_1285]
                            require mem[_1285] <= test266151307()
                            require _1285 + mem[_1285] + 31 < _1285 + return_data.size
                            _1305 = mem[_1285 + mem[_1285]]
                            if mem[_1285 + mem[_1285]] > test266151307():
                                revert with 0, 65
                            if _1285 + ceil32(return_data.size) + ceil32(32 * mem[_1285 + mem[_1285]]) + 1 > test266151307() or ceil32(32 * mem[_1285 + mem[_1285]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1285 + ceil32(return_data.size) + ceil32(32 * mem[_1285 + mem[_1285]]) + 1
                            mem[_1285 + ceil32(return_data.size)] = _1305
                            require (32 * _1305) + _1297 + 32 <= return_data.size
                            t = _1285 + ceil32(return_data.size) + 32
                            s = _1285 + _1297 + 32
                            while s < (32 * _1305) + _1285 + _1297 + 32:
                                mem[t] = mem[s]
                                t = t + 32
                                s = s + 32
                                continue 
                            if not stor4.length:
                                revert with 0, 18
                            if _1305 < 1:
                                revert with 0, 17
                            if _1305 - 1 >= _1305:
                                revert with 0, 50
                            if mem[(32 * _1305 - 1) + _1285 + ceil32(return_data.size) + 32] >= stor9 / stor4.length:
                                if not stor4.length:
                                    revert with 0, 18
                                if idx >= stor4.length:
                                    revert with 0, 50
                                mem[0] = 4
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                _1919 = mem[64]
                                mem[mem[64] + 36] = ext_call.return_data[0] / stor4.length
                                mem[mem[64] + 68] = stor9 / stor4.length
                                mem[mem[64] + 100] = 160
                                _1929 = mem[(2 * ceil32(return_data.size)) + 128]
                                mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 128]
                                s = 0
                                t = (2 * ceil32(return_data.size)) + 160
                                u = mem[64] + 228
                                while s < _1929:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1919 + 132] = stor4[idx].field_0
                                mem[_1919 + 164] = block.timestamp + 120
                                _2213 = mem[64]
                                mem[mem[64]] = _1919 + (32 * _1929) + -mem[64] + 196
                                mem[64] = _1919 + (32 * _1929) + 228
                                mem[_2213 + 32] = mem[_2213 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                _2227 = mem[_2213]
                                s = 0
                                while s < _2227:
                                    mem[s + _1919 + (32 * _1929) + 228] = mem[_2213 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2227) > _2227:
                                    mem[_1919 + (32 * _1929) + _2227 + 228] = 0
                                call stor5.mem[_1919 + (32 * _1929) + 228 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1919 + (32 * _1929) + 232 len _2227 - 4]
                                if return_data.size:
                                    mem[64] = _1919 + (32 * _1929) + ceil32(return_data.size) + 229
                                    mem[_1919 + (32 * _1929) + 228] = return_data.size
                                    mem[_1919 + (32 * _1929) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _1285 + ceil32(return_data.size)
                                    continue 
                            stor12 = 1
                            return 1
            stor12 = 1
    else:
        if unknown_0xc2bc2f1b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xf2fde38b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
                if unknown_0xf7535ddf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[64] = (32 * stor4.length) + 160
                    mem[128] = stor4.length
                    if not stor4.length:
                        mem[(32 * stor4.length) + 160] = 32
                        mem[(32 * stor4.length) + 192] = stor4.length
                        idx = 0
                        s = (32 * stor4.length) + 224
                        t = 160
                        while idx < stor4.length:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from (32 * stor4.length) + 160
                           len (96 * stor4.length) + 64
                    mem[160] = address(stor4.field_0)
                    idx = 160
                    s = 0
                    while (32 * stor4.length) + 128 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(32 * stor4.length) + 160] = 32
                    mem[(32 * stor4.length) + 192] = stor4.length
                    idx = 0
                    s = mem[64] + 64
                    t = 160
                    while idx < stor4.length:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (64 * stor4.length) + -mem[64] + 224
                require unknown_0xfddd2c26(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[36]:
                    revert with 0, 'not enough tokens in contract'
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_12548a42Address, cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xc2bc2f1b(?????):
                    if unknown_0xdd2745b6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor3 = address(cd[4])
                        stor9 = cd[36]
                        stor12 = 0
                    else:
                        require unknown_0xed8e7a3d(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor5 = address(cd[4])
                        stor6 = address(cd[36])
                        call sub_7cf76648Address.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require not msg.value
                    if stor12:
                        revert with 0, 'bolt.mx'
                    mem[132] = stor7
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor7
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'undiscovered'
                    mem[ceil32(return_data.size) + 132] = this.address
                    staticcall sub_7cf76648Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if sub_7cf76648Address == stor8:
                            mem[(2 * ceil32(return_data.size)) + 128] = 2
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_7cf76648Address
                            mem[(2 * ceil32(return_data.size)) + 192] = stor3
                            if not stor4.length:
                                revert with 0, 'undiscovered'
                            idx = 0
                            s = 96
                            while idx < stor4.length:
                                _736 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor10
                                mem[mem[64] + 36] = 64
                                _753 = mem[(2 * ceil32(return_data.size)) + 128]
                                mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 128]
                                s = 0
                                t = (2 * ceil32(return_data.size)) + 160
                                u = mem[64] + 100
                                while s < _753:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                staticcall stor5.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _736 + (32 * _753) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1287 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1300 = mem[_1287]
                                require mem[_1287] <= test266151307()
                                require _1287 + mem[_1287] + 31 < _1287 + return_data.size
                                _1308 = mem[_1287 + mem[_1287]]
                                if mem[_1287 + mem[_1287]] > test266151307():
                                    revert with 0, 65
                                if _1287 + ceil32(return_data.size) + ceil32(32 * mem[_1287 + mem[_1287]]) + 1 > test266151307() or ceil32(32 * mem[_1287 + mem[_1287]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _1287 + ceil32(return_data.size) + ceil32(32 * mem[_1287 + mem[_1287]]) + 1
                                mem[_1287 + ceil32(return_data.size)] = _1308
                                require (32 * _1308) + _1300 + 32 <= return_data.size
                                t = _1287 + ceil32(return_data.size) + 32
                                s = _1287 + _1300 + 32
                                while s < (32 * _1308) + _1287 + _1300 + 32:
                                    mem[t] = mem[s]
                                    t = t + 32
                                    s = s + 32
                                    continue 
                                if 0 >= _1308:
                                    revert with 0, 50
                                if mem[_1287 + ceil32(return_data.size) + 32] > stor11:
                                    stor12 = 1
                                    return 1
                                if 0 >= _1308:
                                    revert with 0, 50
                                _1786 = mem[_1287 + ceil32(return_data.size) + 32]
                                mem[mem[64] + 4] = this.address
                                staticcall sub_7cf76648Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1796 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1796] < _1786:
                                    stor12 = 1
                                    return 1
                                if not _1308:
                                    revert with 0, 50
                                if stor10 < stor10 / 10:
                                    revert with 0, 17
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                _1920 = mem[64]
                                mem[mem[64] + 36] = mem[_1287 + ceil32(return_data.size) + 32]
                                mem[mem[64] + 68] = stor10 - (stor10 / 10)
                                mem[mem[64] + 100] = 160
                                _1938 = mem[(2 * ceil32(return_data.size)) + 128]
                                mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 128]
                                s = 0
                                t = (2 * ceil32(return_data.size)) + 160
                                u = mem[64] + 228
                                while s < _1938:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1920 + 132] = this.address
                                mem[_1920 + 164] = block.timestamp + 120
                                _2218 = mem[64]
                                mem[mem[64]] = _1920 + (32 * _1938) + -mem[64] + 196
                                mem[64] = _1920 + (32 * _1938) + 228
                                mem[_2218 + 32] = mem[_2218 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                _2232 = mem[_2218]
                                s = 0
                                while s < _2232:
                                    mem[s + _1920 + (32 * _1938) + 228] = mem[_2218 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2232) > _2232:
                                    mem[_1920 + (32 * _1938) + _2232 + 228] = 0
                                call stor5.mem[_1920 + (32 * _1938) + 228 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1920 + (32 * _1938) + 232 len _2232 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        stor12 = 1
                                        return 1
                                    mem[_1920 + (32 * _1938) + 232] = this.address
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1920 + (32 * _1938) + 228] = ext_call.return_data[0]
                                    require return_data.size >= 32
                                    if idx >= stor4.length:
                                        revert with 0, 50
                                    mem[0] = 4
                                    mem[_1920 + (32 * _1938) + ceil32(return_data.size) + 232] = stor4[idx].field_0
                                    mem[_1920 + (32 * _1938) + ceil32(return_data.size) + 264] = ext_call.return_data[0]
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4[idx].field_0, ext_call.return_data[0]
                                    mem[_1920 + (32 * _1938) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1920 + (32 * _1938) + (2 * ceil32(return_data.size)) + 228
                                else:
                                    mem[_1920 + (32 * _1938) + 228] = return_data.size
                                    mem[_1920 + (32 * _1938) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        stor12 = 1
                                        return 1
                                    mem[_1920 + (32 * _1938) + ceil32(return_data.size) + 233] = this.address
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1920 + (32 * _1938) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                                    require return_data.size >= 32
                                    if idx >= stor4.length:
                                        revert with 0, 50
                                    mem[0] = 4
                                    mem[_1920 + (32 * _1938) + ceil32(return_data.size) + ceil32(return_data.size) + 233] = stor4[idx].field_0
                                    mem[_1920 + (32 * _1938) + ceil32(return_data.size) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4[idx].field_0, ext_call.return_data[0]
                                    mem[_1920 + (32 * _1938) + ceil32(return_data.size) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1920 + (32 * _1938) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 229
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1287 + ceil32(return_data.size)
                                continue 
                        else:
                            mem[(2 * ceil32(return_data.size)) + 128] = 3
                            mem[64] = (2 * ceil32(return_data.size)) + 256
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_7cf76648Address
                            mem[(2 * ceil32(return_data.size)) + 192] = stor8
                            mem[(2 * ceil32(return_data.size)) + 224] = stor3
                            if not stor4.length:
                                revert with 0, 'undiscovered'
                            idx = 0
                            s = 96
                            while idx < stor4.length:
                                _737 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor10
                                mem[mem[64] + 36] = 64
                                _755 = mem[(2 * ceil32(return_data.size)) + 128]
                                mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 128]
                                s = 0
                                t = (2 * ceil32(return_data.size)) + 160
                                u = mem[64] + 100
                                while s < _755:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                staticcall stor5.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _737 + (32 * _755) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1288 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1301 = mem[_1288]
                                require mem[_1288] <= test266151307()
                                require _1288 + mem[_1288] + 31 < _1288 + return_data.size
                                _1309 = mem[_1288 + mem[_1288]]
                                if mem[_1288 + mem[_1288]] > test266151307():
                                    revert with 0, 65
                                if _1288 + ceil32(return_data.size) + ceil32(32 * mem[_1288 + mem[_1288]]) + 1 > test266151307() or ceil32(32 * mem[_1288 + mem[_1288]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _1288 + ceil32(return_data.size) + ceil32(32 * mem[_1288 + mem[_1288]]) + 1
                                mem[_1288 + ceil32(return_data.size)] = _1309
                                require (32 * _1309) + _1301 + 32 <= return_data.size
                                t = _1288 + ceil32(return_data.size) + 32
                                s = _1288 + _1301 + 32
                                while s < (32 * _1309) + _1288 + _1301 + 32:
                                    mem[t] = mem[s]
                                    t = t + 32
                                    s = s + 32
                                    continue 
                                if 0 >= _1309:
                                    revert with 0, 50
                                if mem[_1288 + ceil32(return_data.size) + 32] > stor11:
                                    stor12 = 1
                                    return 1
                                if 0 >= _1309:
                                    revert with 0, 50
                                _1790 = mem[_1288 + ceil32(return_data.size) + 32]
                                mem[mem[64] + 4] = this.address
                                staticcall sub_7cf76648Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1798 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1798] < _1790:
                                    stor12 = 1
                                    return 1
                                if not _1309:
                                    revert with 0, 50
                                if stor10 < stor10 / 10:
                                    revert with 0, 17
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                _1921 = mem[64]
                                mem[mem[64] + 36] = mem[_1288 + ceil32(return_data.size) + 32]
                                mem[mem[64] + 68] = stor10 - (stor10 / 10)
                                mem[mem[64] + 100] = 160
                                _1939 = mem[(2 * ceil32(return_data.size)) + 128]
                                mem[mem[64] + 196] = mem[(2 * ceil32(return_data.size)) + 128]
                                s = 0
                                t = (2 * ceil32(return_data.size)) + 160
                                u = mem[64] + 228
                                while s < _1939:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp + 120
                                _2221 = mem[64]
                                mem[mem[64]] = (32 * _1939) + 196
                                mem[64] = mem[64] + (32 * _1939) + 228
                                mem[_2221 + 32] = mem[_2221 + 36 len 28] or 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                _2233 = mem[_2221]
                                s = 0
                                while s < _2233:
                                    mem[s + _1921 + (32 * _1939) + 228] = mem[_2221 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2233) <= _2233:
                                    call stor5.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2233 + _1921 + (32 * _1939) + -mem[64] + 224]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            stor12 = 1
                                            return 1
                                        mem[mem[64] + 4] = this.address
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        _2628 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2684 = mem[_2628]
                                        if idx >= stor4.length:
                                            revert with 0, 50
                                        mem[0] = 4
                                        mem[mem[64] + 4] = stor4[idx].field_0
                                        mem[mem[64] + 36] = _2684
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor4[idx].field_0, _2684
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2744 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2744] == bool(mem[_2744])
                                    else:
                                        _2576 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2576] = return_data.size
                                        mem[_2576 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            stor12 = 1
                                            return 1
                                        mem[mem[64] + 4] = this.address
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        _2630 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2685 = mem[_2630]
                                        if idx >= stor4.length:
                                            revert with 0, 50
                                        mem[0] = 4
                                        mem[mem[64] + 4] = stor4[idx].field_0
                                        mem[mem[64] + 36] = _2685
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor4[idx].field_0, _2685
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2745 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2745] == bool(mem[_2745])
                                else:
                                    mem[_1921 + (32 * _1939) + _2233 + 228] = 0
                                    call stor5.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2233 + _1921 + (32 * _1939) + -mem[64] + 224]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            stor12 = 1
                                            return 1
                                        mem[mem[64] + 4] = this.address
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        _2664 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2694 = mem[_2664]
                                        if idx >= stor4.length:
                                            revert with 0, 50
                                        mem[0] = 4
                                        mem[mem[64] + 4] = stor4[idx].field_0
                                        mem[mem[64] + 36] = _2694
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor4[idx].field_0, _2694
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2758 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2758] == bool(mem[_2758])
                                    else:
                                        _2583 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2583] = return_data.size
                                        mem[_2583 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            stor12 = 1
                                            return 1
                                        mem[mem[64] + 4] = this.address
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        _2666 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2695 = mem[_2666]
                                        if idx >= stor4.length:
                                            revert with 0, 50
                                        mem[0] = 4
                                        mem[mem[64] + 4] = stor4[idx].field_0
                                        mem[mem[64] + 36] = _2695
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor4[idx].field_0, _2695
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2759 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2759] == bool(mem[_2759])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1288 + ceil32(return_data.size)
                                continue 
                    stor12 = 1
        else:
            if unknown_0x9f387358(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x9f387358(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor7 = address(cd[4])
                    stor8 = address(cd[36])
                else:
                    if unknown_0xa7d36e42(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        return bool(stor12), stor3, stor9, stor7, stor8, stor5, stor6
                    require unknown_0xae848c88(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor4.length = ('cd', 4).length
                    if not ('cd', 4).length:
                        idx = 0
                        while stor4.length > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = cd[4] + 36
                        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
                            stor4[s].field_0 = address(cd[idx])
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                        while stor4.length > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x92da4c3c(?????):
                    if unknown_0x96790d4a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        return stor10, stor11
                    require unknown_0x986e25cc(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_12548a42Address = address(cd[4])
                else:
                    require not msg.value
                    if stor12:
                        revert with 0, 'bolt.'
                    mem[132] = stor7
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor7
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'nope'
                    mem[ceil32(return_data.size) + 132] = this.address
                    staticcall sub_7cf76648Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if sub_7cf76648Address == stor8:
                            mem[(2 * ceil32(return_data.size)) + 128] = 2
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_7cf76648Address
                            mem[(2 * ceil32(return_data.size)) + 192] = stor3
                            mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 260] = 64
                            mem[(2 * ceil32(return_data.size)) + 292] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 160
                            t = (2 * ceil32(return_data.size)) + 324
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 324 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _770 = mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                            _779 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                            require (32 * _779) + _770 + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 256 len ceil32(32 * _779)] = mem[(2 * ceil32(return_data.size)) + _770 + 256 len ceil32(32 * _779)]
                            if _779 < 1:
                                revert with 0, 17
                            if _779 - 1 >= _779:
                                revert with 0, 50
                            if mem[(32 * _779 - 1) + (4 * ceil32(return_data.size)) + 256] >= stor9:
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                _1318 = mem[64]
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = stor9
                                mem[mem[64] + 100] = 160
                                mem[mem[64] + 196] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 160
                                t = mem[64] + 228
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp + 120
                                _1770 = mem[64]
                                mem[mem[64]] = 260
                                mem[64] = mem[64] + 292
                                mem[_1770 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
                                _1778 = mem[_1770]
                                mem[_1318 + 292 len ceil32(mem[_1770])] = mem[_1770 + 32 len ceil32(mem[_1770])]
                                if ceil32(_1778) > _1778:
                                    mem[_1318 + _1778 + 292] = 0
                                call stor5.mem[_1318 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1318 + 296 len _1778 - 4]
                                if ext_call.success:
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    require return_data.size >= 32
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args sub_12548a42Address, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            mem[(2 * ceil32(return_data.size)) + 128] = 3
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_7cf76648Address
                            mem[(2 * ceil32(return_data.size)) + 192] = stor8
                            mem[(2 * ceil32(return_data.size)) + 224] = stor3
                            mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 292] = 64
                            mem[(2 * ceil32(return_data.size)) + 324] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 160
                            t = (2 * ceil32(return_data.size)) + 356
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 356 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _771 = mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                            _780 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 257
                            mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
                            require (32 * _780) + _771 + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 288 len ceil32(32 * _780)] = mem[(2 * ceil32(return_data.size)) + _771 + 288 len ceil32(32 * _780)]
                            if _780 < 1:
                                revert with 0, 17
                            if _780 - 1 >= _780:
                                revert with 0, 50
                            if mem[(32 * _780 - 1) + (4 * ceil32(return_data.size)) + 288] >= stor9:
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                _1319 = mem[64]
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = stor9
                                mem[mem[64] + 100] = 160
                                mem[mem[64] + 196] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 160
                                t = mem[64] + 228
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp + 120
                                _1773 = mem[64]
                                mem[mem[64]] = 292
                                mem[64] = mem[64] + 324
                                mem[_1773 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
                                _1779 = mem[_1773]
                                mem[_1319 + 324 len ceil32(mem[_1773])] = mem[_1773 + 32 len ceil32(mem[_1773])]
                                if ceil32(_1779) <= _1779:
                                    call stor5 with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1779 + _1319 + -mem[64] + 320]
                                    if not return_data.size:
                                        if ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            _2258 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2296 = mem[_2258]
                                            mem[mem[64] + 4] = sub_12548a42Address
                                            mem[mem[64] + 36] = _2296
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args sub_12548a42Address, _2296
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2336 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2336] == bool(mem[_2336])
                                    else:
                                        _2230 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2230] = return_data.size
                                        mem[_2230 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            _2260 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2297 = mem[_2260]
                                            mem[mem[64] + 4] = sub_12548a42Address
                                            mem[mem[64] + 36] = _2297
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args sub_12548a42Address, _2297
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2337 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2337] == bool(mem[_2337])
                                else:
                                    mem[_1319 + _1779 + 324] = 0
                                    call stor5 with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1779 + _1319 + -mem[64] + 320]
                                    if not return_data.size:
                                        if ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            _2278 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2318 = mem[_2278]
                                            mem[mem[64] + 4] = sub_12548a42Address
                                            mem[mem[64] + 36] = _2318
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args sub_12548a42Address, _2318
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2372 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2372] == bool(mem[_2372])
                                    else:
                                        _2235 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2235] = return_data.size
                                        mem[_2235 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            _2280 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2319 = mem[_2280]
                                            mem[mem[64] + 4] = sub_12548a42Address
                                            mem[mem[64] + 36] = _2319
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args sub_12548a42Address, _2319
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2373 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2373] == bool(mem[_2373])
                    stor12 = 1
    return 1
}



}
