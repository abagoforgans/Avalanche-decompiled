contract main {




// =====================  Runtime code  =====================


#
#  - sub_1b71afbd(?)
#  - sub_35e8b7d5(?)
#  - sub_5cc7647c(?)
#  - sub_88f61f9f(?)
#  - sub_89fecbd5(?)
#  - sub_8e8d8152(?)
#  - sub_ba2ebf96(?)
#  - sub_cee6202c(?)
#  - _fallback()
#
address owner;
address stor1;
uint16 stor2; offset 160
uint16 stor2; offset 176
address stor2;
mapping of address stor3;
mapping of uint8 stor4;

function owner() {
    return owner
}

function sub_9416cbc6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_88fbe419(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function sub_5424888b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)][address(arg2)] = address(arg3)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c2ab127a(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg2) < 25:
        revert with 0, 'FEE TOO HIGH; MAX FEE = 4%'
    address(stor2.field_0) = address(arg1)
    uint16(stor2.field_160) = uint16(arg2)
    uint16(stor2.field_176) = uint16(arg3)
    emit 0x85821cef: address(arg1), arg2 << 240, uint16(arg3)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
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
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function estimateZapIn(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor1 == address(ext_call.return_data[0]):
        if not stor3[stor1][address(arg2)]:
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if stor1 == stor1:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _3737 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _3785 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _3737 + (32 * _3785) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3785] = mem[(2 * ceil32(return_data.size)) + _3737 + 224 len 32 * _3785]
                    if _3785 < 1:
                        revert with 0, 17
                    if _3785 - 1 >= _3785:
                        revert with 0, 50
                    if stor1 == address(ext_call.return_data[0]):
                        return Mask(255, 1, arg3), mem[(32 * _3785 - 1) + (4 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = mem[(32 * _3785 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    if stor1 != ext_call.return_data[12 len 20]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor1
                        mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3738 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                        _3786 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require return_data.size >= _3738 + (32 * _3786) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3786] = mem[(2 * ceil32(return_data.size)) + _3738 + 256 len 32 * _3786]
                        if _3786 < 1:
                            revert with 0, 17
                        if _3786 - 1 >= _3786:
                            revert with 0, 50
                        if stor1 != address(ext_call.return_data[0]):
                            return mem[(32 * _3786 - 1) + (4 * ceil32(return_data.size)) + 256], Mask(255, 1, arg3)
                        return Mask(255, 1, arg3), mem[(32 * _3786 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _3739 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _3787 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _3739 + (32 * _3787) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3787] = mem[(2 * ceil32(return_data.size)) + _3739 + 224 len 32 * _3787]
                    if _3787 < 1:
                        revert with 0, 17
                    if _3787 - 1 >= _3787:
                        revert with 0, 50
                    if stor1 == address(ext_call.return_data[0]):
                        return Mask(255, 1, arg3), mem[(32 * _3787 - 1) + (4 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = mem[(32 * _3787 - 1) + (4 * ceil32(return_data.size)) + 224]
            else:
                mem[(2 * ceil32(return_data.size)) + 96] = 4
                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                mem[(2 * ceil32(return_data.size)) + 160] = stor1
                mem[(2 * ceil32(return_data.size)) + 192] = stor3[address(ext_call.return_data[0])][address(arg2)]
                mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
                mem[(2 * ceil32(return_data.size)) + 292] = 64
                mem[(2 * ceil32(return_data.size)) + 324] = 4
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 356
                while idx < 4:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _3740 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
                require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                _3788 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
                mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                require return_data.size >= _3740 + (32 * _3788) + 32
                mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3788] = mem[(2 * ceil32(return_data.size)) + _3740 + 288 len 32 * _3788]
                if _3788 < 1:
                    revert with 0, 17
                if _3788 - 1 >= _3788:
                    revert with 0, 50
                if stor1 == address(ext_call.return_data[0]):
                    return Mask(255, 1, arg3), mem[(32 * _3788 - 1) + (4 * ceil32(return_data.size)) + 288]
                mem[mem[64]] = mem[(32 * _3788 - 1) + (4 * ceil32(return_data.size)) + 288]
        else:
            if stor3[address(ext_call.return_data[0])][address(arg2)]:
                if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _3747 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    _3795 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    require return_data.size >= _3747 + (32 * _3795) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3795] = mem[(2 * ceil32(return_data.size)) + _3747 + 256 len 32 * _3795]
                    if _3795 < 1:
                        revert with 0, 17
                    if _3795 - 1 >= _3795:
                        revert with 0, 50
                    if stor1 == address(ext_call.return_data[0]):
                        return Mask(255, 1, arg3), mem[(32 * _3795 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[mem[64]] = mem[(32 * _3795 - 1) + (4 * ceil32(return_data.size)) + 256]
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 5
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 192] = stor1
                    mem[(2 * ceil32(return_data.size)) + 224] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 292] = arg3 / 2
                    mem[(2 * ceil32(return_data.size)) + 324] = 64
                    mem[(2 * ceil32(return_data.size)) + 356] = 5
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 5:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=5, data=mem[(2 * ceil32(return_data.size)) + 388 len 160])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    _3748 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
                    _3796 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                    mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    require return_data.size >= _3748 + (32 * _3796) + 32
                    mem[(4 * ceil32(return_data.size)) + 320 len 32 * _3796] = mem[(2 * ceil32(return_data.size)) + _3748 + 320 len 32 * _3796]
                    if _3796 < 1:
                        revert with 0, 17
                    if _3796 - 1 >= _3796:
                        revert with 0, 50
                    if stor1 == address(ext_call.return_data[0]):
                        return Mask(255, 1, arg3), mem[(32 * _3796 - 1) + (4 * ceil32(return_data.size)) + 320]
                    mem[mem[64]] = mem[(32 * _3796 - 1) + (4 * ceil32(return_data.size)) + 320]
            else:
                if stor3[stor1][address(arg2)]:
                    if stor1 == ext_call.return_data[12 len 20]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                        mem[(2 * ceil32(return_data.size)) + 192] = stor1
                        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3746 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                        _3794 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require return_data.size >= _3746 + (32 * _3794) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3794] = mem[(2 * ceil32(return_data.size)) + _3746 + 256 len 32 * _3794]
                        if _3794 < 1:
                            revert with 0, 17
                        if _3794 - 1 >= _3794:
                            revert with 0, 50
                        if stor1 == address(ext_call.return_data[0]):
                            return Mask(255, 1, arg3), mem[(32 * _3794 - 1) + (4 * ceil32(return_data.size)) + 256]
                        mem[mem[64]] = mem[(32 * _3794 - 1) + (4 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 96] = 4
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                        mem[(2 * ceil32(return_data.size)) + 192] = stor1
                        mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
                        mem[(2 * ceil32(return_data.size)) + 292] = 64
                        mem[(2 * ceil32(return_data.size)) + 324] = 4
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 356
                        while idx < 4:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 256
                        require return_data.size >= 32
                        _3745 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                        _3793 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        require return_data.size >= _3745 + (32 * _3793) + 32
                        mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3793] = mem[(2 * ceil32(return_data.size)) + _3745 + 288 len 32 * _3793]
                        if _3793 < 1:
                            revert with 0, 17
                        if _3793 - 1 >= _3793:
                            revert with 0, 50
                        if stor1 == address(ext_call.return_data[0]):
                            return Mask(255, 1, arg3), mem[(32 * _3793 - 1) + (4 * ceil32(return_data.size)) + 288]
                        mem[mem[64]] = mem[(32 * _3793 - 1) + (4 * ceil32(return_data.size)) + 288]
                else:
                    if stor3[address(ext_call.return_data[0])][address(arg2)]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 4
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor1
                        mem[(2 * ceil32(return_data.size)) + 192] = stor3[address(ext_call.return_data[0])][address(arg2)]
                        mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
                        mem[(2 * ceil32(return_data.size)) + 292] = 64
                        mem[(2 * ceil32(return_data.size)) + 324] = 4
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 356
                        while idx < 4:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 256
                        require return_data.size >= 32
                        _3744 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                        _3792 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        require return_data.size >= _3744 + (32 * _3792) + 32
                        mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3792] = mem[(2 * ceil32(return_data.size)) + _3744 + 288 len 32 * _3792]
                        if _3792 < 1:
                            revert with 0, 17
                        if _3792 - 1 >= _3792:
                            revert with 0, 50
                        if stor1 == address(ext_call.return_data[0]):
                            return Mask(255, 1, arg3), mem[(32 * _3792 - 1) + (4 * ceil32(return_data.size)) + 288]
                        mem[mem[64]] = mem[(32 * _3792 - 1) + (4 * ceil32(return_data.size)) + 288]
                    else:
                        if stor1 == stor1:
                            mem[(2 * ceil32(return_data.size)) + 96] = 2
                            mem[(2 * ceil32(return_data.size)) + 128] = stor1
                            mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                            require ext_code.size(arg2)
                            staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3741 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                            _3789 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require return_data.size >= _3741 + (32 * _3789) + 32
                            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3789] = mem[(2 * ceil32(return_data.size)) + _3741 + 224 len 32 * _3789]
                            if _3789 < 1:
                                revert with 0, 17
                            if _3789 - 1 >= _3789:
                                revert with 0, 50
                            if stor1 == address(ext_call.return_data[0]):
                                return Mask(255, 1, arg3), mem[(32 * _3789 - 1) + (4 * ceil32(return_data.size)) + 224]
                            mem[mem[64]] = mem[(32 * _3789 - 1) + (4 * ceil32(return_data.size)) + 224]
                        else:
                            if stor1 == ext_call.return_data[12 len 20]:
                                mem[(2 * ceil32(return_data.size)) + 96] = 2
                                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                                mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                                require ext_code.size(arg2)
                                staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3743 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                                _3791 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                                require return_data.size >= _3743 + (32 * _3791) + 32
                                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3791] = mem[(2 * ceil32(return_data.size)) + _3743 + 224 len 32 * _3791]
                                if _3791 < 1:
                                    revert with 0, 17
                                if _3791 - 1 >= _3791:
                                    revert with 0, 50
                                if stor1 == address(ext_call.return_data[0]):
                                    return Mask(255, 1, arg3), mem[(32 * _3791 - 1) + (4 * ceil32(return_data.size)) + 224]
                                mem[mem[64]] = mem[(32 * _3791 - 1) + (4 * ceil32(return_data.size)) + 224]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 96] = 3
                                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                                mem[(2 * ceil32(return_data.size)) + 160] = stor1
                                mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                                require ext_code.size(arg2)
                                staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3742 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                                _3790 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                require return_data.size >= _3742 + (32 * _3790) + 32
                                mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3790] = mem[(2 * ceil32(return_data.size)) + _3742 + 256 len 32 * _3790]
                                if _3790 < 1:
                                    revert with 0, 17
                                if _3790 - 1 >= _3790:
                                    revert with 0, 50
                                if stor1 == address(ext_call.return_data[0]):
                                    return Mask(255, 1, arg3), mem[(32 * _3790 - 1) + (4 * ceil32(return_data.size)) + 256]
                                mem[mem[64]] = mem[(32 * _3790 - 1) + (4 * ceil32(return_data.size)) + 256]
        return mem[mem[64]], Mask(255, 1, arg3)
    if stor1 == ext_call.return_data[12 len 20]:
        if stor1 == address(ext_call.return_data[0]):
            if not stor3[stor1][address(arg2)]:
                if stor3[address(ext_call.return_data[0])][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 4
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = stor1
                    mem[(2 * ceil32(return_data.size)) + 192] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
                    mem[(2 * ceil32(return_data.size)) + 292] = 64
                    mem[(2 * ceil32(return_data.size)) + 324] = 4
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 356
                    while idx < 4:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3764 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                    _3812 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
                    mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                    require return_data.size >= _3764 + (32 * _3812) + 32
                    mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3812] = mem[(2 * ceil32(return_data.size)) + _3764 + 288 len 32 * _3812]
                    if _3812 < 1:
                        revert with 0, 17
                    if _3812 - 1 >= _3812:
                        revert with 0, 50
                    if stor1 != address(ext_call.return_data[0]):
                        return mem[(32 * _3812 - 1) + (4 * ceil32(return_data.size)) + 288], Mask(255, 1, arg3)
                    return Mask(255, 1, arg3), mem[(32 * _3812 - 1) + (4 * ceil32(return_data.size)) + 288]
                if stor1 == stor1:
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _3761 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _3809 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _3761 + (32 * _3809) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3809] = mem[(2 * ceil32(return_data.size)) + _3761 + 224 len 32 * _3809]
                    if _3809 < 1:
                        revert with 0, 17
                    if _3809 - 1 >= _3809:
                        revert with 0, 50
                    if stor1 != address(ext_call.return_data[0]):
                        return mem[(32 * _3809 - 1) + (4 * ceil32(return_data.size)) + 224], arg3 / 2
                    return Mask(255, 1, arg3), mem[(32 * _3809 - 1) + (4 * ceil32(return_data.size)) + 224]
                if stor1 == ext_call.return_data[12 len 20]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _3763 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _3811 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _3763 + (32 * _3811) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3811] = mem[(2 * ceil32(return_data.size)) + _3763 + 224 len 32 * _3811]
                    if _3811 < 1:
                        revert with 0, 17
                    if _3811 - 1 >= _3811:
                        revert with 0, 50
                    if stor1 == address(ext_call.return_data[0]):
                        return Mask(255, 1, arg3), mem[(32 * _3811 - 1) + (4 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = mem[(32 * _3811 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = stor1
                    mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _3762 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    _3810 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    require return_data.size >= _3762 + (32 * _3810) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3810] = mem[(2 * ceil32(return_data.size)) + _3762 + 256 len 32 * _3810]
                    if _3810 < 1:
                        revert with 0, 17
                    if _3810 - 1 >= _3810:
                        revert with 0, 50
                    if stor1 == address(ext_call.return_data[0]):
                        return Mask(255, 1, arg3), mem[(32 * _3810 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[mem[64]] = mem[(32 * _3810 - 1) + (4 * ceil32(return_data.size)) + 256]
            else:
                if stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                        mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3771 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                        _3819 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require return_data.size >= _3771 + (32 * _3819) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3819] = mem[(2 * ceil32(return_data.size)) + _3771 + 256 len 32 * _3819]
                        if _3819 < 1:
                            revert with 0, 17
                        if _3819 - 1 >= _3819:
                            revert with 0, 50
                        if stor1 != address(ext_call.return_data[0]):
                            return mem[(32 * _3819 - 1) + (4 * ceil32(return_data.size)) + 256], arg3 / 2
                        return Mask(255, 1, arg3), mem[(32 * _3819 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[(2 * ceil32(return_data.size)) + 96] = 5
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 192] = stor1
                    mem[(2 * ceil32(return_data.size)) + 224] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 292] = arg3 / 2
                    mem[(2 * ceil32(return_data.size)) + 324] = 64
                    mem[(2 * ceil32(return_data.size)) + 356] = 5
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 5:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=5, data=mem[(2 * ceil32(return_data.size)) + 388 len 160])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    _3772 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
                    _3820 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                    mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    require return_data.size >= _3772 + (32 * _3820) + 32
                    mem[(4 * ceil32(return_data.size)) + 320 len 32 * _3820] = mem[(2 * ceil32(return_data.size)) + _3772 + 320 len 32 * _3820]
                    if _3820 < 1:
                        revert with 0, 17
                    if _3820 - 1 >= _3820:
                        revert with 0, 50
                    if stor1 != address(ext_call.return_data[0]):
                        return mem[(32 * _3820 - 1) + (4 * ceil32(return_data.size)) + 320], Mask(255, 1, arg3)
                    return Mask(255, 1, arg3), mem[(32 * _3820 - 1) + (4 * ceil32(return_data.size)) + 320]
                if stor3[stor1][address(arg2)]:
                    if stor1 == ext_call.return_data[12 len 20]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                        mem[(2 * ceil32(return_data.size)) + 192] = stor1
                        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3770 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                        _3818 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require return_data.size >= _3770 + (32 * _3818) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3818] = mem[(2 * ceil32(return_data.size)) + _3770 + 256 len 32 * _3818]
                        if _3818 < 1:
                            revert with 0, 17
                        if _3818 - 1 >= _3818:
                            revert with 0, 50
                        if stor1 != address(ext_call.return_data[0]):
                            return mem[(32 * _3818 - 1) + (4 * ceil32(return_data.size)) + 256], Mask(255, 1, arg3)
                        return Mask(255, 1, arg3), mem[(32 * _3818 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[(2 * ceil32(return_data.size)) + 96] = 4
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 192] = stor1
                    mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
                    mem[(2 * ceil32(return_data.size)) + 292] = 64
                    mem[(2 * ceil32(return_data.size)) + 324] = 4
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 356
                    while idx < 4:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3769 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                    _3817 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
                    mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                    require return_data.size >= _3769 + (32 * _3817) + 32
                    mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3817] = mem[(2 * ceil32(return_data.size)) + _3769 + 288 len 32 * _3817]
                    if _3817 < 1:
                        revert with 0, 17
                    if _3817 - 1 >= _3817:
                        revert with 0, 50
                    if stor1 == address(ext_call.return_data[0]):
                        return Mask(255, 1, arg3), mem[(32 * _3817 - 1) + (4 * ceil32(return_data.size)) + 288]
                    mem[mem[64]] = mem[(32 * _3817 - 1) + (4 * ceil32(return_data.size)) + 288]
                else:
                    if stor3[address(ext_call.return_data[0])][address(arg2)]:
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor1
                        mem[(2 * ceil32(return_data.size)) + 192] = stor3[address(ext_call.return_data[0])][address(arg2)]
                        mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
                        mem[(2 * ceil32(return_data.size)) + 292] = 64
                        mem[(2 * ceil32(return_data.size)) + 324] = 4
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 356
                        while idx < 4:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 256
                        require return_data.size >= 32
                        _3768 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                        _3816 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        require return_data.size >= _3768 + (32 * _3816) + 32
                        mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3816] = mem[(2 * ceil32(return_data.size)) + _3768 + 288 len 32 * _3816]
                        if _3816 < 1:
                            revert with 0, 17
                        if _3816 - 1 >= _3816:
                            revert with 0, 50
                        if stor1 != address(ext_call.return_data[0]):
                            return mem[(32 * _3816 - 1) + (4 * ceil32(return_data.size)) + 288], arg3 / 2
                        return Mask(255, 1, arg3), mem[(32 * _3816 - 1) + (4 * ceil32(return_data.size)) + 288]
                    if stor1 == stor1:
                        mem[(2 * ceil32(return_data.size)) + 96] = 2
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _3765 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                        _3813 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require return_data.size >= _3765 + (32 * _3813) + 32
                        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3813] = mem[(2 * ceil32(return_data.size)) + _3765 + 224 len 32 * _3813]
                        if _3813 < 1:
                            revert with 0, 17
                        if _3813 - 1 >= _3813:
                            revert with 0, 50
                        if stor1 == address(ext_call.return_data[0]):
                            return Mask(255, 1, arg3), mem[(32 * _3813 - 1) + (4 * ceil32(return_data.size)) + 224]
                        mem[mem[64]] = mem[(32 * _3813 - 1) + (4 * ceil32(return_data.size)) + 224]
                    else:
                        if stor1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 96] = 2
                            mem[(2 * ceil32(return_data.size)) + 128] = stor1
                            mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                            require ext_code.size(arg2)
                            staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3767 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                            _3815 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require return_data.size >= _3767 + (32 * _3815) + 32
                            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3815] = mem[(2 * ceil32(return_data.size)) + _3767 + 224 len 32 * _3815]
                            if _3815 < 1:
                                revert with 0, 17
                            if _3815 - 1 >= _3815:
                                revert with 0, 50
                            if stor1 == address(ext_call.return_data[0]):
                                return Mask(255, 1, arg3), mem[(32 * _3815 - 1) + (4 * ceil32(return_data.size)) + 224]
                            mem[mem[64]] = mem[(32 * _3815 - 1) + (4 * ceil32(return_data.size)) + 224]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 96] = 3
                            mem[(2 * ceil32(return_data.size)) + 128] = stor1
                            mem[(2 * ceil32(return_data.size)) + 160] = stor1
                            mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                            require ext_code.size(arg2)
                            staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _3766 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                            _3814 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            require return_data.size >= _3766 + (32 * _3814) + 32
                            mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3814] = mem[(2 * ceil32(return_data.size)) + _3766 + 256 len 32 * _3814]
                            if _3814 < 1:
                                revert with 0, 17
                            if _3814 - 1 >= _3814:
                                revert with 0, 50
                            if stor1 == address(ext_call.return_data[0]):
                                return Mask(255, 1, arg3), mem[(32 * _3814 - 1) + (4 * ceil32(return_data.size)) + 256]
                            mem[mem[64]] = mem[(32 * _3814 - 1) + (4 * ceil32(return_data.size)) + 256]
        else:
            if not stor3[stor1][address(arg2)]:
                if stor3[address(ext_call.return_data[0])][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 4
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = stor1
                    mem[(2 * ceil32(return_data.size)) + 192] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
                    mem[(2 * ceil32(return_data.size)) + 292] = 64
                    mem[(2 * ceil32(return_data.size)) + 324] = 4
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 356
                    while idx < 4:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3776 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                    _3824 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
                    mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                    require return_data.size >= _3776 + (32 * _3824) + 32
                    mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3824] = mem[(2 * ceil32(return_data.size)) + _3776 + 288 len 32 * _3824]
                    if _3824 < 1:
                        revert with 0, 17
                    if _3824 - 1 >= _3824:
                        revert with 0, 50
                    if stor1 == address(ext_call.return_data[0]):
                        return Mask(255, 1, arg3), mem[(32 * _3824 - 1) + (4 * ceil32(return_data.size)) + 288]
                    mem[mem[64]] = mem[(32 * _3824 - 1) + (4 * ceil32(return_data.size)) + 288]
                else:
                    if stor1 == stor1:
                        mem[(2 * ceil32(return_data.size)) + 96] = 2
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _3773 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                        _3821 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require return_data.size >= _3773 + (32 * _3821) + 32
                        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3821] = mem[(2 * ceil32(return_data.size)) + _3773 + 224 len 32 * _3821]
                        if _3821 < 1:
                            revert with 0, 17
                        if _3821 - 1 >= _3821:
                            revert with 0, 50
                        if stor1 == address(ext_call.return_data[0]):
                            return Mask(255, 1, arg3), mem[(32 * _3821 - 1) + (4 * ceil32(return_data.size)) + 224]
                        mem[mem[64]] = mem[(32 * _3821 - 1) + (4 * ceil32(return_data.size)) + 224]
                    else:
                        if stor1 == address(ext_call.return_data[0]):
                            mem[(2 * ceil32(return_data.size)) + 128] = stor1
                            mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                            require ext_code.size(arg2)
                            staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3775 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                            _3823 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require return_data.size >= _3775 + (32 * _3823) + 32
                            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3823] = mem[(2 * ceil32(return_data.size)) + _3775 + 224 len 32 * _3823]
                            if _3823 < 1:
                                revert with 0, 17
                            if _3823 - 1 >= _3823:
                                revert with 0, 50
                            if stor1 != address(ext_call.return_data[0]):
                                return mem[(32 * _3823 - 1) + (4 * ceil32(return_data.size)) + 224], arg3 / 2
                            return Mask(255, 1, arg3), mem[(32 * _3823 - 1) + (4 * ceil32(return_data.size)) + 224]
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor1
                        mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3774 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                        _3822 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require return_data.size >= _3774 + (32 * _3822) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3822] = mem[(2 * ceil32(return_data.size)) + _3774 + 256 len 32 * _3822]
                        if _3822 < 1:
                            revert with 0, 17
                        if _3822 - 1 >= _3822:
                            revert with 0, 50
                        if stor1 == address(ext_call.return_data[0]):
                            return Mask(255, 1, arg3), mem[(32 * _3822 - 1) + (4 * ceil32(return_data.size)) + 256]
                        mem[mem[64]] = mem[(32 * _3822 - 1) + (4 * ceil32(return_data.size)) + 256]
            else:
                if stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                        mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3783 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                        _3831 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require return_data.size >= _3783 + (32 * _3831) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3831] = mem[(2 * ceil32(return_data.size)) + _3783 + 256 len 32 * _3831]
                        if _3831 < 1:
                            revert with 0, 17
                        if _3831 - 1 >= _3831:
                            revert with 0, 50
                        if stor1 != address(ext_call.return_data[0]):
                            return mem[(32 * _3831 - 1) + (4 * ceil32(return_data.size)) + 256], Mask(255, 1, arg3)
                        return Mask(255, 1, arg3), mem[(32 * _3831 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 192] = stor1
                    mem[(2 * ceil32(return_data.size)) + 224] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 292] = arg3 / 2
                    mem[(2 * ceil32(return_data.size)) + 324] = 64
                    mem[(2 * ceil32(return_data.size)) + 356] = 5
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 5:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=5, data=mem[(2 * ceil32(return_data.size)) + 388 len 160])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    _3784 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
                    _3832 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
                    mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    require return_data.size >= _3784 + (32 * _3832) + 32
                    mem[(4 * ceil32(return_data.size)) + 320 len 32 * _3832] = mem[(2 * ceil32(return_data.size)) + _3784 + 320 len 32 * _3832]
                    if _3832 < 1:
                        revert with 0, 17
                    if _3832 - 1 >= _3832:
                        revert with 0, 50
                    if stor1 != address(ext_call.return_data[0]):
                        return mem[(32 * _3832 - 1) + (4 * ceil32(return_data.size)) + 320], arg3 / 2
                    return Mask(255, 1, arg3), mem[(32 * _3832 - 1) + (4 * ceil32(return_data.size)) + 320]
                if stor3[stor1][address(arg2)]:
                    if stor1 == address(ext_call.return_data[0]):
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                        mem[(2 * ceil32(return_data.size)) + 192] = stor1
                        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3782 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                        _3830 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require return_data.size >= _3782 + (32 * _3830) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3830] = mem[(2 * ceil32(return_data.size)) + _3782 + 256 len 32 * _3830]
                        if _3830 < 1:
                            revert with 0, 17
                        if _3830 - 1 >= _3830:
                            revert with 0, 50
                        if stor1 != address(ext_call.return_data[0]):
                            return mem[(32 * _3830 - 1) + (4 * ceil32(return_data.size)) + 256], Mask(255, 1, arg3)
                        return Mask(255, 1, arg3), mem[(32 * _3830 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[(2 * ceil32(return_data.size)) + 96] = 4
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 192] = stor1
                    mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
                    mem[(2 * ceil32(return_data.size)) + 292] = 64
                    mem[(2 * ceil32(return_data.size)) + 324] = 4
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 356
                    while idx < 4:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _3781 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                    _3829 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
                    mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                    require return_data.size >= _3781 + (32 * _3829) + 32
                    mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3829] = mem[(2 * ceil32(return_data.size)) + _3781 + 288 len 32 * _3829]
                    if _3829 < 1:
                        revert with 0, 17
                    if _3829 - 1 >= _3829:
                        revert with 0, 50
                    if stor1 == address(ext_call.return_data[0]):
                        return Mask(255, 1, arg3), mem[(32 * _3829 - 1) + (4 * ceil32(return_data.size)) + 288]
                    mem[mem[64]] = mem[(32 * _3829 - 1) + (4 * ceil32(return_data.size)) + 288]
                else:
                    if stor3[address(ext_call.return_data[0])][address(arg2)]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 4
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor1
                        mem[(2 * ceil32(return_data.size)) + 192] = stor3[address(ext_call.return_data[0])][address(arg2)]
                        mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
                        mem[(2 * ceil32(return_data.size)) + 292] = 64
                        mem[(2 * ceil32(return_data.size)) + 324] = 4
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 356
                        while idx < 4:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 256
                        require return_data.size >= 32
                        _3780 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                        _3828 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
                        mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        require return_data.size >= _3780 + (32 * _3828) + 32
                        mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3828] = mem[(2 * ceil32(return_data.size)) + _3780 + 288 len 32 * _3828]
                        if _3828 < 1:
                            revert with 0, 17
                        if _3828 - 1 >= _3828:
                            revert with 0, 50
                        if stor1 != address(ext_call.return_data[0]):
                            return mem[(32 * _3828 - 1) + (4 * ceil32(return_data.size)) + 288], Mask(255, 1, arg3)
                        return Mask(255, 1, arg3), mem[(32 * _3828 - 1) + (4 * ceil32(return_data.size)) + 288]
                    if stor1 == stor1:
                        mem[(2 * ceil32(return_data.size)) + 96] = 2
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _3777 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                        _3825 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require return_data.size >= _3777 + (32 * _3825) + 32
                        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3825] = mem[(2 * ceil32(return_data.size)) + _3777 + 224 len 32 * _3825]
                        if _3825 < 1:
                            revert with 0, 17
                        if _3825 - 1 >= _3825:
                            revert with 0, 50
                        if stor1 == address(ext_call.return_data[0]):
                            return Mask(255, 1, arg3), mem[(32 * _3825 - 1) + (4 * ceil32(return_data.size)) + 224]
                        mem[mem[64]] = mem[(32 * _3825 - 1) + (4 * ceil32(return_data.size)) + 224]
                    else:
                        if stor1 == address(ext_call.return_data[0]):
                            mem[(2 * ceil32(return_data.size)) + 96] = 2
                            mem[(2 * ceil32(return_data.size)) + 128] = stor1
                            mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
                            require ext_code.size(arg2)
                            staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3779 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                            _3827 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require return_data.size >= _3779 + (32 * _3827) + 32
                            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3827] = mem[(2 * ceil32(return_data.size)) + _3779 + 224 len 32 * _3827]
                            if _3827 < 1:
                                revert with 0, 17
                            if _3827 - 1 >= _3827:
                                revert with 0, 50
                            if stor1 != address(ext_call.return_data[0]):
                                return mem[(32 * _3827 - 1) + (4 * ceil32(return_data.size)) + 224], Mask(255, 1, arg3)
                            return Mask(255, 1, arg3), mem[(32 * _3827 - 1) + (4 * ceil32(return_data.size)) + 224]
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = stor1
                        mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
                        require ext_code.size(arg2)
                        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3778 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                        _3826 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require return_data.size >= _3778 + (32 * _3826) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3826] = mem[(2 * ceil32(return_data.size)) + _3778 + 256 len 32 * _3826]
                        if _3826 < 1:
                            revert with 0, 17
                        if _3826 - 1 >= _3826:
                            revert with 0, 50
                        if stor1 == address(ext_call.return_data[0]):
                            return Mask(255, 1, arg3), mem[(32 * _3826 - 1) + (4 * ceil32(return_data.size)) + 256]
                        mem[mem[64]] = mem[(32 * _3826 - 1) + (4 * ceil32(return_data.size)) + 256]
        return mem[mem[64]], Mask(255, 1, arg3)
    if not stor3[stor1][address(arg2)]:
        if stor3[address(ext_call.return_data[0])][address(arg2)]:
            mem[(2 * ceil32(return_data.size)) + 96] = 4
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[(2 * ceil32(return_data.size)) + 160] = stor1
            mem[(2 * ceil32(return_data.size)) + 192] = stor3[address(ext_call.return_data[0])][address(arg2)]
            mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
            mem[(2 * ceil32(return_data.size)) + 292] = 64
            mem[(2 * ceil32(return_data.size)) + 324] = 4
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 356
            while idx < 4:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _3752 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
            _3800 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
            mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            require return_data.size >= _3752 + (32 * _3800) + 32
            mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3800] = mem[(2 * ceil32(return_data.size)) + _3752 + 288 len 32 * _3800]
            if _3800 < 1:
                revert with 0, 17
            if _3800 - 1 >= _3800:
                revert with 0, 50
            _7028 = mem[(32 * _3800 - 1) + (4 * ceil32(return_data.size)) + 288]
            mem[0] = arg2
            mem[32] = sha3(address(ext_call.return_data[0]), 3)
            if not stor3[stor1][address(arg2)]:
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor1 == stor1:
                        _7457 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7457]:
                            revert with 0, 50
                        mem[_7457 + 32] = stor1
                        if 1 >= mem[_7457]:
                            revert with 0, 50
                        mem[_7457 + 64] = address(ext_call.return_data[0])
                        mem[_7457 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7457 + 100] = arg3 / 2
                        mem[_7457 + 132] = 64
                        mem[_7457 + 164] = mem[_7457]
                        idx = 0
                        s = _7457 + 32
                        t = _7457 + 196
                        while idx < mem[_7457]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7457 + (32 * mem[_7457]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10181 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10325 = mem[_10181]
                        require mem[_10181] <= test266151307()
                        require _10181 + mem[_10181] + 31 < _10181 + return_data.size
                        _10469 = mem[_10181 + mem[_10181]]
                        if mem[_10181 + mem[_10181]] > test266151307():
                            revert with 0, 65
                        if _10181 + ceil32(return_data.size) + ceil32(32 * mem[_10181 + mem[_10181]]) + 1 > test266151307() or ceil32(32 * mem[_10181 + mem[_10181]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10181 + ceil32(return_data.size) + ceil32(32 * mem[_10181 + mem[_10181]]) + 1
                        mem[_10181 + ceil32(return_data.size)] = _10469
                        require return_data.size >= _10325 + (32 * _10469) + 32
                        mem[_10181 + ceil32(return_data.size) + 32 len 32 * _10469] = mem[_10181 + _10325 + 32 len 32 * _10469]
                        if _10469 < 1:
                            revert with 0, 17
                        if _10469 - 1 >= _10469:
                            revert with 0, 50
                        return _7028, mem[(32 * _10469 - 1) + _10181 + ceil32(return_data.size) + 32]
                    if stor1 == address(ext_call.return_data[0]):
                        _7568 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7568]:
                            revert with 0, 50
                        mem[_7568 + 32] = stor1
                        if 1 >= mem[_7568]:
                            revert with 0, 50
                        mem[_7568 + 64] = address(ext_call.return_data[0])
                        mem[_7568 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7568 + 100] = arg3 / 2
                        mem[_7568 + 132] = 64
                        mem[_7568 + 164] = mem[_7568]
                        idx = 0
                        s = _7568 + 32
                        t = _7568 + 196
                        while idx < mem[_7568]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7568 + (32 * mem[_7568]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10183 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10327 = mem[_10183]
                        require mem[_10183] <= test266151307()
                        require _10183 + mem[_10183] + 31 < _10183 + return_data.size
                        _10471 = mem[_10183 + mem[_10183]]
                        if mem[_10183 + mem[_10183]] > test266151307():
                            revert with 0, 65
                        if _10183 + ceil32(return_data.size) + ceil32(32 * mem[_10183 + mem[_10183]]) + 1 > test266151307() or ceil32(32 * mem[_10183 + mem[_10183]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10183 + ceil32(return_data.size) + ceil32(32 * mem[_10183 + mem[_10183]]) + 1
                        mem[_10183 + ceil32(return_data.size)] = _10471
                        require return_data.size >= _10327 + (32 * _10471) + 32
                        mem[_10183 + ceil32(return_data.size) + 32 len 32 * _10471] = mem[_10183 + _10327 + 32 len 32 * _10471]
                        if _10471 < 1:
                            revert with 0, 17
                        if _10471 - 1 >= _10471:
                            revert with 0, 50
                        return _7028, mem[(32 * _10471 - 1) + _10183 + ceil32(return_data.size) + 32]
                    _7566 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7566]:
                        revert with 0, 50
                    mem[_7566 + 32] = stor1
                    if 1 >= mem[_7566]:
                        revert with 0, 50
                    mem[_7566 + 64] = stor1
                    if 2 >= mem[_7566]:
                        revert with 0, 50
                    mem[_7566 + 96] = address(ext_call.return_data[0])
                    mem[_7566 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7566 + 132] = arg3 / 2
                    mem[_7566 + 164] = 64
                    mem[_7566 + 196] = mem[_7566]
                    idx = 0
                    s = _7566 + 32
                    t = _7566 + 228
                    while idx < mem[_7566]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7566 + (32 * mem[_7566]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10182 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10326 = mem[_10182]
                    require mem[_10182] <= test266151307()
                    require _10182 + mem[_10182] + 31 < _10182 + return_data.size
                    _10470 = mem[_10182 + mem[_10182]]
                    if mem[_10182 + mem[_10182]] > test266151307():
                        revert with 0, 65
                    if _10182 + ceil32(return_data.size) + ceil32(32 * mem[_10182 + mem[_10182]]) + 1 > test266151307() or ceil32(32 * mem[_10182 + mem[_10182]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10182 + ceil32(return_data.size) + ceil32(32 * mem[_10182 + mem[_10182]]) + 1
                    mem[_10182 + ceil32(return_data.size)] = _10470
                    require return_data.size >= _10326 + (32 * _10470) + 32
                    mem[_10182 + ceil32(return_data.size) + 32 len 32 * _10470] = mem[_10182 + _10326 + 32 len 32 * _10470]
                    if _10470 < 1:
                        revert with 0, 17
                    if _10470 - 1 >= _10470:
                        revert with 0, 50
                    return _7028, mem[(32 * _10470 - 1) + _10182 + ceil32(return_data.size) + 32]
                _7271 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7271]:
                    revert with 0, 50
                mem[_7271 + 32] = stor1
                if 1 >= mem[_7271]:
                    revert with 0, 50
                mem[_7271 + 64] = stor1
                if 2 >= mem[_7271]:
                    revert with 0, 50
                mem[_7271 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                if 3 >= mem[_7271]:
                    revert with 0, 50
                mem[_7271 + 128] = address(ext_call.return_data[0])
                mem[_7271 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7271 + 164] = arg3 / 2
                mem[_7271 + 196] = 64
                mem[_7271 + 228] = mem[_7271]
                idx = 0
                s = _7271 + 32
                t = _7271 + 260
                while idx < mem[_7271]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7271 + (32 * mem[_7271]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10184 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10328 = mem[_10184]
                require mem[_10184] <= test266151307()
                require _10184 + mem[_10184] + 31 < _10184 + return_data.size
                _10472 = mem[_10184 + mem[_10184]]
                if mem[_10184 + mem[_10184]] > test266151307():
                    revert with 0, 65
                if _10184 + ceil32(return_data.size) + ceil32(32 * mem[_10184 + mem[_10184]]) + 1 > test266151307() or ceil32(32 * mem[_10184 + mem[_10184]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10184 + ceil32(return_data.size) + ceil32(32 * mem[_10184 + mem[_10184]]) + 1
                mem[_10184 + ceil32(return_data.size)] = _10472
                require return_data.size >= _10328 + (32 * _10472) + 32
                mem[_10184 + ceil32(return_data.size) + 32 len 32 * _10472] = mem[_10184 + _10328 + 32 len 32 * _10472]
                if _10472 < 1:
                    revert with 0, 17
                if _10472 - 1 >= _10472:
                    revert with 0, 50
                return _7028, mem[(32 * _10472 - 1) + _10184 + ceil32(return_data.size) + 32]
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if not stor3[stor1][address(arg2)]:
                    if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                        if stor1 == stor1:
                            _7571 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_7571]:
                                revert with 0, 50
                            mem[_7571 + 32] = stor1
                            if 1 >= mem[_7571]:
                                revert with 0, 50
                            mem[_7571 + 64] = address(ext_call.return_data[0])
                            mem[_7571 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_7571 + 100] = arg3 / 2
                            mem[_7571 + 132] = 64
                            mem[_7571 + 164] = mem[_7571]
                            idx = 0
                            s = _7571 + 32
                            t = _7571 + 196
                            while idx < mem[_7571]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg2)
                            staticcall arg2.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7571 + (32 * mem[_7571]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10185 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10329 = mem[_10185]
                            require mem[_10185] <= test266151307()
                            require _10185 + mem[_10185] + 31 < _10185 + return_data.size
                            _10473 = mem[_10185 + mem[_10185]]
                            if mem[_10185 + mem[_10185]] > test266151307():
                                revert with 0, 65
                            if _10185 + ceil32(return_data.size) + ceil32(32 * mem[_10185 + mem[_10185]]) + 1 > test266151307() or ceil32(32 * mem[_10185 + mem[_10185]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10185 + ceil32(return_data.size) + ceil32(32 * mem[_10185 + mem[_10185]]) + 1
                            mem[_10185 + ceil32(return_data.size)] = _10473
                            require return_data.size >= _10329 + (32 * _10473) + 32
                            mem[_10185 + ceil32(return_data.size) + 32 len 32 * _10473] = mem[_10185 + _10329 + 32 len 32 * _10473]
                            if _10473 < 1:
                                revert with 0, 17
                            if _10473 - 1 >= _10473:
                                revert with 0, 50
                            return _7028, mem[(32 * _10473 - 1) + _10185 + ceil32(return_data.size) + 32]
                        if stor1 == address(ext_call.return_data[0]):
                            _7711 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_7711]:
                                revert with 0, 50
                            mem[_7711 + 32] = stor1
                            if 1 >= mem[_7711]:
                                revert with 0, 50
                            mem[_7711 + 64] = address(ext_call.return_data[0])
                            mem[_7711 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_7711 + 100] = arg3 / 2
                            mem[_7711 + 132] = 64
                            mem[_7711 + 164] = mem[_7711]
                            idx = 0
                            s = _7711 + 32
                            t = _7711 + 196
                            while idx < mem[_7711]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg2)
                            staticcall arg2.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7711 + (32 * mem[_7711]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10187 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10331 = mem[_10187]
                            require mem[_10187] <= test266151307()
                            require _10187 + mem[_10187] + 31 < _10187 + return_data.size
                            _10475 = mem[_10187 + mem[_10187]]
                            if mem[_10187 + mem[_10187]] > test266151307():
                                revert with 0, 65
                            if _10187 + ceil32(return_data.size) + ceil32(32 * mem[_10187 + mem[_10187]]) + 1 > test266151307() or ceil32(32 * mem[_10187 + mem[_10187]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10187 + ceil32(return_data.size) + ceil32(32 * mem[_10187 + mem[_10187]]) + 1
                            mem[_10187 + ceil32(return_data.size)] = _10475
                            require return_data.size >= _10331 + (32 * _10475) + 32
                            mem[_10187 + ceil32(return_data.size) + 32 len 32 * _10475] = mem[_10187 + _10331 + 32 len 32 * _10475]
                            if _10475 < 1:
                                revert with 0, 17
                            if _10475 - 1 >= _10475:
                                revert with 0, 50
                            return _7028, mem[(32 * _10475 - 1) + _10187 + ceil32(return_data.size) + 32]
                        _7709 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_7709]:
                            revert with 0, 50
                        mem[_7709 + 32] = stor1
                        if 1 >= mem[_7709]:
                            revert with 0, 50
                        mem[_7709 + 64] = stor1
                        if 2 >= mem[_7709]:
                            revert with 0, 50
                        mem[_7709 + 96] = address(ext_call.return_data[0])
                        mem[_7709 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7709 + 132] = arg3 / 2
                        mem[_7709 + 164] = 64
                        mem[_7709 + 196] = mem[_7709]
                        idx = 0
                        s = _7709 + 32
                        t = _7709 + 228
                        while idx < mem[_7709]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7709 + (32 * mem[_7709]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10186 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10330 = mem[_10186]
                        require mem[_10186] <= test266151307()
                        require _10186 + mem[_10186] + 31 < _10186 + return_data.size
                        _10474 = mem[_10186 + mem[_10186]]
                        if mem[_10186 + mem[_10186]] > test266151307():
                            revert with 0, 65
                        if _10186 + ceil32(return_data.size) + ceil32(32 * mem[_10186 + mem[_10186]]) + 1 > test266151307() or ceil32(32 * mem[_10186 + mem[_10186]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10186 + ceil32(return_data.size) + ceil32(32 * mem[_10186 + mem[_10186]]) + 1
                        mem[_10186 + ceil32(return_data.size)] = _10474
                        require return_data.size >= _10330 + (32 * _10474) + 32
                        mem[_10186 + ceil32(return_data.size) + 32 len 32 * _10474] = mem[_10186 + _10330 + 32 len 32 * _10474]
                        if _10474 < 1:
                            revert with 0, 17
                        if _10474 - 1 >= _10474:
                            revert with 0, 50
                        return _7028, mem[(32 * _10474 - 1) + _10186 + ceil32(return_data.size) + 32]
                    _7353 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 160
                    if 0 >= mem[_7353]:
                        revert with 0, 50
                    mem[_7353 + 32] = stor1
                    if 1 >= mem[_7353]:
                        revert with 0, 50
                    mem[_7353 + 64] = stor1
                    if 2 >= mem[_7353]:
                        revert with 0, 50
                    mem[_7353 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    if 3 >= mem[_7353]:
                        revert with 0, 50
                    mem[_7353 + 128] = address(ext_call.return_data[0])
                    mem[_7353 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7353 + 164] = arg3 / 2
                    mem[_7353 + 196] = 64
                    mem[_7353 + 228] = mem[_7353]
                    idx = 0
                    s = _7353 + 32
                    t = _7353 + 260
                    while idx < mem[_7353]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7353 + (32 * mem[_7353]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10188 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10332 = mem[_10188]
                    require mem[_10188] <= test266151307()
                    require _10188 + mem[_10188] + 31 < _10188 + return_data.size
                    _10476 = mem[_10188 + mem[_10188]]
                    if mem[_10188 + mem[_10188]] > test266151307():
                        revert with 0, 65
                    if _10188 + ceil32(return_data.size) + ceil32(32 * mem[_10188 + mem[_10188]]) + 1 > test266151307() or ceil32(32 * mem[_10188 + mem[_10188]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10188 + ceil32(return_data.size) + ceil32(32 * mem[_10188 + mem[_10188]]) + 1
                    mem[_10188 + ceil32(return_data.size)] = _10476
                    require return_data.size >= _10332 + (32 * _10476) + 32
                    mem[_10188 + ceil32(return_data.size) + 32 len 32 * _10476] = mem[_10188 + _10332 + 32 len 32 * _10476]
                    if _10476 < 1:
                        revert with 0, 17
                    if _10476 - 1 >= _10476:
                        revert with 0, 50
                    return _7028, mem[(32 * _10476 - 1) + _10188 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7357 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7357]:
                        revert with 0, 50
                    mem[_7357 + 32] = stor1
                    if 1 >= mem[_7357]:
                        revert with 0, 50
                    mem[_7357 + 64] = stor3[stor1][address(arg2)]
                    if 2 >= mem[_7357]:
                        revert with 0, 50
                    mem[_7357 + 96] = stor1
                    mem[_7357 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7357 + 132] = arg3 / 2
                    mem[_7357 + 164] = 64
                    mem[_7357 + 196] = mem[_7357]
                    idx = 0
                    s = _7357 + 32
                    t = _7357 + 228
                    while idx < mem[_7357]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7357 + (32 * mem[_7357]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10190 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10334 = mem[_10190]
                    require mem[_10190] <= test266151307()
                    require _10190 + mem[_10190] + 31 < _10190 + return_data.size
                    _10478 = mem[_10190 + mem[_10190]]
                    if mem[_10190 + mem[_10190]] > test266151307():
                        revert with 0, 65
                    if _10190 + ceil32(return_data.size) + ceil32(32 * mem[_10190 + mem[_10190]]) + 1 > test266151307() or ceil32(32 * mem[_10190 + mem[_10190]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10190 + ceil32(return_data.size) + ceil32(32 * mem[_10190 + mem[_10190]]) + 1
                    mem[_10190 + ceil32(return_data.size)] = _10478
                    require return_data.size >= _10334 + (32 * _10478) + 32
                    mem[_10190 + ceil32(return_data.size) + 32 len 32 * _10478] = mem[_10190 + _10334 + 32 len 32 * _10478]
                    if _10478 < 1:
                        revert with 0, 17
                    if _10478 - 1 >= _10478:
                        revert with 0, 50
                    return _7028, mem[(32 * _10478 - 1) + _10190 + ceil32(return_data.size) + 32]
                _7355 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7355]:
                    revert with 0, 50
                mem[_7355 + 32] = stor1
                if 1 >= mem[_7355]:
                    revert with 0, 50
                mem[_7355 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7355]:
                    revert with 0, 50
                mem[_7355 + 96] = stor1
                if 3 >= mem[_7355]:
                    revert with 0, 50
                mem[_7355 + 128] = address(ext_call.return_data[0])
                mem[_7355 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7355 + 164] = arg3 / 2
                mem[_7355 + 196] = 64
                mem[_7355 + 228] = mem[_7355]
                idx = 0
                s = _7355 + 32
                t = _7355 + 260
                while idx < mem[_7355]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7355 + (32 * mem[_7355]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10189 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10333 = mem[_10189]
                require mem[_10189] <= test266151307()
                require _10189 + mem[_10189] + 31 < _10189 + return_data.size
                _10477 = mem[_10189 + mem[_10189]]
                if mem[_10189 + mem[_10189]] > test266151307():
                    revert with 0, 65
                if _10189 + ceil32(return_data.size) + ceil32(32 * mem[_10189 + mem[_10189]]) + 1 > test266151307() or ceil32(32 * mem[_10189 + mem[_10189]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10189 + ceil32(return_data.size) + ceil32(32 * mem[_10189 + mem[_10189]]) + 1
                mem[_10189 + ceil32(return_data.size)] = _10477
                require return_data.size >= _10333 + (32 * _10477) + 32
                mem[_10189 + ceil32(return_data.size) + 32 len 32 * _10477] = mem[_10189 + _10333 + 32 len 32 * _10477]
                if _10477 < 1:
                    revert with 0, 17
                if _10477 - 1 >= _10477:
                    revert with 0, 50
                return _7028, mem[(32 * _10477 - 1) + _10189 + ceil32(return_data.size) + 32]
            if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
                _7273 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7273]:
                    revert with 0, 50
                mem[_7273 + 32] = stor1
                if 1 >= mem[_7273]:
                    revert with 0, 50
                mem[_7273 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7273]:
                    revert with 0, 50
                mem[_7273 + 96] = address(ext_call.return_data[0])
                mem[_7273 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7273 + 132] = arg3 / 2
                mem[_7273 + 164] = 64
                mem[_7273 + 196] = mem[_7273]
                idx = 0
                s = _7273 + 32
                t = _7273 + 228
                while idx < mem[_7273]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7273 + (32 * mem[_7273]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10191 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10335 = mem[_10191]
                require mem[_10191] <= test266151307()
                require _10191 + mem[_10191] + 31 < _10191 + return_data.size
                _10479 = mem[_10191 + mem[_10191]]
                if mem[_10191 + mem[_10191]] > test266151307():
                    revert with 0, 65
                if _10191 + ceil32(return_data.size) + ceil32(32 * mem[_10191 + mem[_10191]]) + 1 > test266151307() or ceil32(32 * mem[_10191 + mem[_10191]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10191 + ceil32(return_data.size) + ceil32(32 * mem[_10191 + mem[_10191]]) + 1
                mem[_10191 + ceil32(return_data.size)] = _10479
                require return_data.size >= _10335 + (32 * _10479) + 32
                mem[_10191 + ceil32(return_data.size) + 32 len 32 * _10479] = mem[_10191 + _10335 + 32 len 32 * _10479]
                if _10479 < 1:
                    revert with 0, 17
                if _10479 - 1 >= _10479:
                    revert with 0, 50
                return _7028, mem[(32 * _10479 - 1) + _10191 + ceil32(return_data.size) + 32]
            _7275 = mem[64]
            mem[mem[64]] = 5
            mem[64] = mem[64] + 192
            if 0 >= mem[_7275]:
                revert with 0, 50
            mem[_7275 + 32] = stor1
            if 1 >= mem[_7275]:
                revert with 0, 50
            mem[_7275 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7275]:
                revert with 0, 50
            mem[_7275 + 96] = stor1
            if 3 >= mem[_7275]:
                revert with 0, 50
            mem[_7275 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 4 >= mem[_7275]:
                revert with 0, 50
            mem[_7275 + 160] = address(ext_call.return_data[0])
            mem[_7275 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7275 + 196] = arg3 / 2
            mem[_7275 + 228] = 64
            mem[_7275 + 260] = mem[_7275]
            idx = 0
            s = _7275 + 32
            t = _7275 + 292
            while idx < mem[_7275]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7275 + (32 * mem[_7275]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10192 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10336 = mem[_10192]
            require mem[_10192] <= test266151307()
            require _10192 + mem[_10192] + 31 < _10192 + return_data.size
            _10480 = mem[_10192 + mem[_10192]]
            if mem[_10192 + mem[_10192]] > test266151307():
                revert with 0, 65
            if _10192 + ceil32(return_data.size) + ceil32(32 * mem[_10192 + mem[_10192]]) + 1 > test266151307() or ceil32(32 * mem[_10192 + mem[_10192]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10192 + ceil32(return_data.size) + ceil32(32 * mem[_10192 + mem[_10192]]) + 1
            mem[_10192 + ceil32(return_data.size)] = _10480
            require return_data.size >= _10336 + (32 * _10480) + 32
            mem[_10192 + ceil32(return_data.size) + 32 len 32 * _10480] = mem[_10192 + _10336 + 32 len 32 * _10480]
            if _10480 < 1:
                revert with 0, 17
            if _10480 - 1 >= _10480:
                revert with 0, 50
            return _7028, mem[(32 * _10480 - 1) + _10192 + ceil32(return_data.size) + 32]
        if stor1 == stor1:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
            require ext_code.size(arg2)
            staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _3749 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _3797 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _3749 + (32 * _3797) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3797] = mem[(2 * ceil32(return_data.size)) + _3749 + 224 len 32 * _3797]
            if _3797 < 1:
                revert with 0, 17
            if _3797 - 1 >= _3797:
                revert with 0, 50
            _7025 = mem[(32 * _3797 - 1) + (4 * ceil32(return_data.size)) + 224]
            mem[0] = arg2
            mem[32] = sha3(address(ext_call.return_data[0]), 3)
            if not stor3[stor1][address(arg2)]:
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor1 == stor1:
                        _7433 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7433]:
                            revert with 0, 50
                        mem[_7433 + 32] = stor1
                        if 1 >= mem[_7433]:
                            revert with 0, 50
                        mem[_7433 + 64] = address(ext_call.return_data[0])
                        mem[_7433 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7433 + 100] = arg3 / 2
                        mem[_7433 + 132] = 64
                        mem[_7433 + 164] = mem[_7433]
                        idx = 0
                        s = _7433 + 32
                        t = _7433 + 196
                        while idx < mem[_7433]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7433 + (32 * mem[_7433]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10145 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10289 = mem[_10145]
                        require mem[_10145] <= test266151307()
                        require _10145 + mem[_10145] + 31 < _10145 + return_data.size
                        _10433 = mem[_10145 + mem[_10145]]
                        if mem[_10145 + mem[_10145]] > test266151307():
                            revert with 0, 65
                        if _10145 + ceil32(return_data.size) + ceil32(32 * mem[_10145 + mem[_10145]]) + 1 > test266151307() or ceil32(32 * mem[_10145 + mem[_10145]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10145 + ceil32(return_data.size) + ceil32(32 * mem[_10145 + mem[_10145]]) + 1
                        mem[_10145 + ceil32(return_data.size)] = _10433
                        require return_data.size >= _10289 + (32 * _10433) + 32
                        mem[_10145 + ceil32(return_data.size) + 32 len 32 * _10433] = mem[_10145 + _10289 + 32 len 32 * _10433]
                        if _10433 < 1:
                            revert with 0, 17
                        if _10433 - 1 >= _10433:
                            revert with 0, 50
                        return _7025, mem[(32 * _10433 - 1) + _10145 + ceil32(return_data.size) + 32]
                    if stor1 == address(ext_call.return_data[0]):
                        _7532 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7532]:
                            revert with 0, 50
                        mem[_7532 + 32] = stor1
                        if 1 >= mem[_7532]:
                            revert with 0, 50
                        mem[_7532 + 64] = address(ext_call.return_data[0])
                        mem[_7532 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7532 + 100] = arg3 / 2
                        mem[_7532 + 132] = 64
                        mem[_7532 + 164] = mem[_7532]
                        idx = 0
                        s = _7532 + 32
                        t = _7532 + 196
                        while idx < mem[_7532]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7532 + (32 * mem[_7532]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10147 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10291 = mem[_10147]
                        require mem[_10147] <= test266151307()
                        require _10147 + mem[_10147] + 31 < _10147 + return_data.size
                        _10435 = mem[_10147 + mem[_10147]]
                        if mem[_10147 + mem[_10147]] > test266151307():
                            revert with 0, 65
                        if _10147 + ceil32(return_data.size) + ceil32(32 * mem[_10147 + mem[_10147]]) + 1 > test266151307() or ceil32(32 * mem[_10147 + mem[_10147]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10147 + ceil32(return_data.size) + ceil32(32 * mem[_10147 + mem[_10147]]) + 1
                        mem[_10147 + ceil32(return_data.size)] = _10435
                        require return_data.size >= _10291 + (32 * _10435) + 32
                        mem[_10147 + ceil32(return_data.size) + 32 len 32 * _10435] = mem[_10147 + _10291 + 32 len 32 * _10435]
                        if _10435 < 1:
                            revert with 0, 17
                        if _10435 - 1 >= _10435:
                            revert with 0, 50
                        return _7025, mem[(32 * _10435 - 1) + _10147 + ceil32(return_data.size) + 32]
                    _7530 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7530]:
                        revert with 0, 50
                    mem[_7530 + 32] = stor1
                    if 1 >= mem[_7530]:
                        revert with 0, 50
                    mem[_7530 + 64] = stor1
                    if 2 >= mem[_7530]:
                        revert with 0, 50
                    mem[_7530 + 96] = address(ext_call.return_data[0])
                    mem[_7530 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7530 + 132] = arg3 / 2
                    mem[_7530 + 164] = 64
                    mem[_7530 + 196] = mem[_7530]
                    idx = 0
                    s = _7530 + 32
                    t = _7530 + 228
                    while idx < mem[_7530]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7530 + (32 * mem[_7530]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10146 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10290 = mem[_10146]
                    require mem[_10146] <= test266151307()
                    require _10146 + mem[_10146] + 31 < _10146 + return_data.size
                    _10434 = mem[_10146 + mem[_10146]]
                    if mem[_10146 + mem[_10146]] > test266151307():
                        revert with 0, 65
                    if _10146 + ceil32(return_data.size) + ceil32(32 * mem[_10146 + mem[_10146]]) + 1 > test266151307() or ceil32(32 * mem[_10146 + mem[_10146]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10146 + ceil32(return_data.size) + ceil32(32 * mem[_10146 + mem[_10146]]) + 1
                    mem[_10146 + ceil32(return_data.size)] = _10434
                    require return_data.size >= _10290 + (32 * _10434) + 32
                    mem[_10146 + ceil32(return_data.size) + 32 len 32 * _10434] = mem[_10146 + _10290 + 32 len 32 * _10434]
                    if _10434 < 1:
                        revert with 0, 17
                    if _10434 - 1 >= _10434:
                        revert with 0, 50
                    return _7025, mem[(32 * _10434 - 1) + _10146 + ceil32(return_data.size) + 32]
                _7253 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7253]:
                    revert with 0, 50
                mem[_7253 + 32] = stor1
                if 1 >= mem[_7253]:
                    revert with 0, 50
                mem[_7253 + 64] = stor1
                if 2 >= mem[_7253]:
                    revert with 0, 50
                mem[_7253 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                if 3 >= mem[_7253]:
                    revert with 0, 50
                mem[_7253 + 128] = address(ext_call.return_data[0])
                mem[_7253 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7253 + 164] = arg3 / 2
                mem[_7253 + 196] = 64
                mem[_7253 + 228] = mem[_7253]
                idx = 0
                s = _7253 + 32
                t = _7253 + 260
                while idx < mem[_7253]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7253 + (32 * mem[_7253]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10148 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10292 = mem[_10148]
                require mem[_10148] <= test266151307()
                require _10148 + mem[_10148] + 31 < _10148 + return_data.size
                _10436 = mem[_10148 + mem[_10148]]
                if mem[_10148 + mem[_10148]] > test266151307():
                    revert with 0, 65
                if _10148 + ceil32(return_data.size) + ceil32(32 * mem[_10148 + mem[_10148]]) + 1 > test266151307() or ceil32(32 * mem[_10148 + mem[_10148]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10148 + ceil32(return_data.size) + ceil32(32 * mem[_10148 + mem[_10148]]) + 1
                mem[_10148 + ceil32(return_data.size)] = _10436
                require return_data.size >= _10292 + (32 * _10436) + 32
                mem[_10148 + ceil32(return_data.size) + 32 len 32 * _10436] = mem[_10148 + _10292 + 32 len 32 * _10436]
                if _10436 < 1:
                    revert with 0, 17
                if _10436 - 1 >= _10436:
                    revert with 0, 50
                return _7025, mem[(32 * _10436 - 1) + _10148 + ceil32(return_data.size) + 32]
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if not stor3[stor1][address(arg2)]:
                    if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                        if stor1 == stor1:
                            _7535 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_7535]:
                                revert with 0, 50
                            mem[_7535 + 32] = stor1
                            if 1 >= mem[_7535]:
                                revert with 0, 50
                            mem[_7535 + 64] = address(ext_call.return_data[0])
                            mem[_7535 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_7535 + 100] = arg3 / 2
                            mem[_7535 + 132] = 64
                            mem[_7535 + 164] = mem[_7535]
                            idx = 0
                            s = _7535 + 32
                            t = _7535 + 196
                            while idx < mem[_7535]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg2)
                            staticcall arg2.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7535 + (32 * mem[_7535]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10149 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10293 = mem[_10149]
                            require mem[_10149] <= test266151307()
                            require _10149 + mem[_10149] + 31 < _10149 + return_data.size
                            _10437 = mem[_10149 + mem[_10149]]
                            if mem[_10149 + mem[_10149]] > test266151307():
                                revert with 0, 65
                            if _10149 + ceil32(return_data.size) + ceil32(32 * mem[_10149 + mem[_10149]]) + 1 > test266151307() or ceil32(32 * mem[_10149 + mem[_10149]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10149 + ceil32(return_data.size) + ceil32(32 * mem[_10149 + mem[_10149]]) + 1
                            mem[_10149 + ceil32(return_data.size)] = _10437
                            require return_data.size >= _10293 + (32 * _10437) + 32
                            mem[_10149 + ceil32(return_data.size) + 32 len 32 * _10437] = mem[_10149 + _10293 + 32 len 32 * _10437]
                            if _10437 < 1:
                                revert with 0, 17
                            if _10437 - 1 >= _10437:
                                revert with 0, 50
                            return _7025, mem[(32 * _10437 - 1) + _10149 + ceil32(return_data.size) + 32]
                        if stor1 == address(ext_call.return_data[0]):
                            _7678 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_7678]:
                                revert with 0, 50
                            mem[_7678 + 32] = stor1
                            if 1 >= mem[_7678]:
                                revert with 0, 50
                            mem[_7678 + 64] = address(ext_call.return_data[0])
                            mem[_7678 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_7678 + 100] = arg3 / 2
                            mem[_7678 + 132] = 64
                            mem[_7678 + 164] = mem[_7678]
                            idx = 0
                            s = _7678 + 32
                            t = _7678 + 196
                            while idx < mem[_7678]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg2)
                            staticcall arg2.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7678 + (32 * mem[_7678]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10151 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10295 = mem[_10151]
                            require mem[_10151] <= test266151307()
                            require _10151 + mem[_10151] + 31 < _10151 + return_data.size
                            _10439 = mem[_10151 + mem[_10151]]
                            if mem[_10151 + mem[_10151]] > test266151307():
                                revert with 0, 65
                            if _10151 + ceil32(return_data.size) + ceil32(32 * mem[_10151 + mem[_10151]]) + 1 > test266151307() or ceil32(32 * mem[_10151 + mem[_10151]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10151 + ceil32(return_data.size) + ceil32(32 * mem[_10151 + mem[_10151]]) + 1
                            mem[_10151 + ceil32(return_data.size)] = _10439
                            require return_data.size >= _10295 + (32 * _10439) + 32
                            mem[_10151 + ceil32(return_data.size) + 32 len 32 * _10439] = mem[_10151 + _10295 + 32 len 32 * _10439]
                            if _10439 < 1:
                                revert with 0, 17
                            if _10439 - 1 >= _10439:
                                revert with 0, 50
                            return _7025, mem[(32 * _10439 - 1) + _10151 + ceil32(return_data.size) + 32]
                        _7676 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_7676]:
                            revert with 0, 50
                        mem[_7676 + 32] = stor1
                        if 1 >= mem[_7676]:
                            revert with 0, 50
                        mem[_7676 + 64] = stor1
                        if 2 >= mem[_7676]:
                            revert with 0, 50
                        mem[_7676 + 96] = address(ext_call.return_data[0])
                        mem[_7676 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7676 + 132] = arg3 / 2
                        mem[_7676 + 164] = 64
                        mem[_7676 + 196] = mem[_7676]
                        idx = 0
                        s = _7676 + 32
                        t = _7676 + 228
                        while idx < mem[_7676]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7676 + (32 * mem[_7676]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10150 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10294 = mem[_10150]
                        require mem[_10150] <= test266151307()
                        require _10150 + mem[_10150] + 31 < _10150 + return_data.size
                        _10438 = mem[_10150 + mem[_10150]]
                        if mem[_10150 + mem[_10150]] > test266151307():
                            revert with 0, 65
                        if _10150 + ceil32(return_data.size) + ceil32(32 * mem[_10150 + mem[_10150]]) + 1 > test266151307() or ceil32(32 * mem[_10150 + mem[_10150]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10150 + ceil32(return_data.size) + ceil32(32 * mem[_10150 + mem[_10150]]) + 1
                        mem[_10150 + ceil32(return_data.size)] = _10438
                        require return_data.size >= _10294 + (32 * _10438) + 32
                        mem[_10150 + ceil32(return_data.size) + 32 len 32 * _10438] = mem[_10150 + _10294 + 32 len 32 * _10438]
                        if _10438 < 1:
                            revert with 0, 17
                        if _10438 - 1 >= _10438:
                            revert with 0, 50
                        return _7025, mem[(32 * _10438 - 1) + _10150 + ceil32(return_data.size) + 32]
                    _7326 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 160
                    if 0 >= mem[_7326]:
                        revert with 0, 50
                    mem[_7326 + 32] = stor1
                    if 1 >= mem[_7326]:
                        revert with 0, 50
                    mem[_7326 + 64] = stor1
                    if 2 >= mem[_7326]:
                        revert with 0, 50
                    mem[_7326 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    if 3 >= mem[_7326]:
                        revert with 0, 50
                    mem[_7326 + 128] = address(ext_call.return_data[0])
                    mem[_7326 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7326 + 164] = arg3 / 2
                    mem[_7326 + 196] = 64
                    mem[_7326 + 228] = mem[_7326]
                    idx = 0
                    s = _7326 + 32
                    t = _7326 + 260
                    while idx < mem[_7326]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7326 + (32 * mem[_7326]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10152 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10296 = mem[_10152]
                    require mem[_10152] <= test266151307()
                    require _10152 + mem[_10152] + 31 < _10152 + return_data.size
                    _10440 = mem[_10152 + mem[_10152]]
                    if mem[_10152 + mem[_10152]] > test266151307():
                        revert with 0, 65
                    if _10152 + ceil32(return_data.size) + ceil32(32 * mem[_10152 + mem[_10152]]) + 1 > test266151307() or ceil32(32 * mem[_10152 + mem[_10152]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10152 + ceil32(return_data.size) + ceil32(32 * mem[_10152 + mem[_10152]]) + 1
                    mem[_10152 + ceil32(return_data.size)] = _10440
                    require return_data.size >= _10296 + (32 * _10440) + 32
                    mem[_10152 + ceil32(return_data.size) + 32 len 32 * _10440] = mem[_10152 + _10296 + 32 len 32 * _10440]
                    if _10440 < 1:
                        revert with 0, 17
                    if _10440 - 1 >= _10440:
                        revert with 0, 50
                    return _7025, mem[(32 * _10440 - 1) + _10152 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7330 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7330]:
                        revert with 0, 50
                    mem[_7330 + 32] = stor1
                    if 1 >= mem[_7330]:
                        revert with 0, 50
                    mem[_7330 + 64] = stor3[stor1][address(arg2)]
                    if 2 >= mem[_7330]:
                        revert with 0, 50
                    mem[_7330 + 96] = stor1
                    mem[_7330 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7330 + 132] = arg3 / 2
                    mem[_7330 + 164] = 64
                    mem[_7330 + 196] = mem[_7330]
                    idx = 0
                    s = _7330 + 32
                    t = _7330 + 228
                    while idx < mem[_7330]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7330 + (32 * mem[_7330]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10154 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10298 = mem[_10154]
                    require mem[_10154] <= test266151307()
                    require _10154 + mem[_10154] + 31 < _10154 + return_data.size
                    _10442 = mem[_10154 + mem[_10154]]
                    if mem[_10154 + mem[_10154]] > test266151307():
                        revert with 0, 65
                    if _10154 + ceil32(return_data.size) + ceil32(32 * mem[_10154 + mem[_10154]]) + 1 > test266151307() or ceil32(32 * mem[_10154 + mem[_10154]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10154 + ceil32(return_data.size) + ceil32(32 * mem[_10154 + mem[_10154]]) + 1
                    mem[_10154 + ceil32(return_data.size)] = _10442
                    require return_data.size >= _10298 + (32 * _10442) + 32
                    mem[_10154 + ceil32(return_data.size) + 32 len 32 * _10442] = mem[_10154 + _10298 + 32 len 32 * _10442]
                    if _10442 < 1:
                        revert with 0, 17
                    if _10442 - 1 >= _10442:
                        revert with 0, 50
                    return _7025, mem[(32 * _10442 - 1) + _10154 + ceil32(return_data.size) + 32]
                _7328 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7328]:
                    revert with 0, 50
                mem[_7328 + 32] = stor1
                if 1 >= mem[_7328]:
                    revert with 0, 50
                mem[_7328 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7328]:
                    revert with 0, 50
                mem[_7328 + 96] = stor1
                if 3 >= mem[_7328]:
                    revert with 0, 50
                mem[_7328 + 128] = address(ext_call.return_data[0])
                mem[_7328 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7328 + 164] = arg3 / 2
                mem[_7328 + 196] = 64
                mem[_7328 + 228] = mem[_7328]
                idx = 0
                s = _7328 + 32
                t = _7328 + 260
                while idx < mem[_7328]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7328 + (32 * mem[_7328]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10153 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10297 = mem[_10153]
                require mem[_10153] <= test266151307()
                require _10153 + mem[_10153] + 31 < _10153 + return_data.size
                _10441 = mem[_10153 + mem[_10153]]
                if mem[_10153 + mem[_10153]] > test266151307():
                    revert with 0, 65
                if _10153 + ceil32(return_data.size) + ceil32(32 * mem[_10153 + mem[_10153]]) + 1 > test266151307() or ceil32(32 * mem[_10153 + mem[_10153]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10153 + ceil32(return_data.size) + ceil32(32 * mem[_10153 + mem[_10153]]) + 1
                mem[_10153 + ceil32(return_data.size)] = _10441
                require return_data.size >= _10297 + (32 * _10441) + 32
                mem[_10153 + ceil32(return_data.size) + 32 len 32 * _10441] = mem[_10153 + _10297 + 32 len 32 * _10441]
                if _10441 < 1:
                    revert with 0, 17
                if _10441 - 1 >= _10441:
                    revert with 0, 50
                return _7025, mem[(32 * _10441 - 1) + _10153 + ceil32(return_data.size) + 32]
            if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
                _7255 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7255]:
                    revert with 0, 50
                mem[_7255 + 32] = stor1
                if 1 >= mem[_7255]:
                    revert with 0, 50
                mem[_7255 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7255]:
                    revert with 0, 50
                mem[_7255 + 96] = address(ext_call.return_data[0])
                mem[_7255 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7255 + 132] = arg3 / 2
                mem[_7255 + 164] = 64
                mem[_7255 + 196] = mem[_7255]
                idx = 0
                s = _7255 + 32
                t = _7255 + 228
                while idx < mem[_7255]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7255 + (32 * mem[_7255]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10155 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10299 = mem[_10155]
                require mem[_10155] <= test266151307()
                require _10155 + mem[_10155] + 31 < _10155 + return_data.size
                _10443 = mem[_10155 + mem[_10155]]
                if mem[_10155 + mem[_10155]] > test266151307():
                    revert with 0, 65
                if _10155 + ceil32(return_data.size) + ceil32(32 * mem[_10155 + mem[_10155]]) + 1 > test266151307() or ceil32(32 * mem[_10155 + mem[_10155]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10155 + ceil32(return_data.size) + ceil32(32 * mem[_10155 + mem[_10155]]) + 1
                mem[_10155 + ceil32(return_data.size)] = _10443
                require return_data.size >= _10299 + (32 * _10443) + 32
                mem[_10155 + ceil32(return_data.size) + 32 len 32 * _10443] = mem[_10155 + _10299 + 32 len 32 * _10443]
                if _10443 < 1:
                    revert with 0, 17
                if _10443 - 1 >= _10443:
                    revert with 0, 50
                return _7025, mem[(32 * _10443 - 1) + _10155 + ceil32(return_data.size) + 32]
            _7257 = mem[64]
            mem[mem[64]] = 5
            mem[64] = mem[64] + 192
            if 0 >= mem[_7257]:
                revert with 0, 50
            mem[_7257 + 32] = stor1
            if 1 >= mem[_7257]:
                revert with 0, 50
            mem[_7257 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7257]:
                revert with 0, 50
            mem[_7257 + 96] = stor1
            if 3 >= mem[_7257]:
                revert with 0, 50
            mem[_7257 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 4 >= mem[_7257]:
                revert with 0, 50
            mem[_7257 + 160] = address(ext_call.return_data[0])
            mem[_7257 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7257 + 196] = arg3 / 2
            mem[_7257 + 228] = 64
            mem[_7257 + 260] = mem[_7257]
            idx = 0
            s = _7257 + 32
            t = _7257 + 292
            while idx < mem[_7257]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7257 + (32 * mem[_7257]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10156 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10300 = mem[_10156]
            require mem[_10156] <= test266151307()
            require _10156 + mem[_10156] + 31 < _10156 + return_data.size
            _10444 = mem[_10156 + mem[_10156]]
            if mem[_10156 + mem[_10156]] > test266151307():
                revert with 0, 65
            if _10156 + ceil32(return_data.size) + ceil32(32 * mem[_10156 + mem[_10156]]) + 1 > test266151307() or ceil32(32 * mem[_10156 + mem[_10156]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10156 + ceil32(return_data.size) + ceil32(32 * mem[_10156 + mem[_10156]]) + 1
            mem[_10156 + ceil32(return_data.size)] = _10444
            require return_data.size >= _10300 + (32 * _10444) + 32
            mem[_10156 + ceil32(return_data.size) + 32 len 32 * _10444] = mem[_10156 + _10300 + 32 len 32 * _10444]
            if _10444 < 1:
                revert with 0, 17
            if _10444 - 1 >= _10444:
                revert with 0, 50
            return _7025, mem[(32 * _10444 - 1) + _10156 + ceil32(return_data.size) + 32]
        if stor1 == address(ext_call.return_data[0]):
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
            require ext_code.size(arg2)
            staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _3751 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _3799 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _3751 + (32 * _3799) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3799] = mem[(2 * ceil32(return_data.size)) + _3751 + 224 len 32 * _3799]
            if _3799 < 1:
                revert with 0, 17
            if _3799 - 1 >= _3799:
                revert with 0, 50
            _7027 = mem[(32 * _3799 - 1) + (4 * ceil32(return_data.size)) + 224]
            mem[0] = arg2
            mem[32] = sha3(address(ext_call.return_data[0]), 3)
            if not stor3[stor1][address(arg2)]:
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor1 == stor1:
                        _7449 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7449]:
                            revert with 0, 50
                        mem[_7449 + 32] = stor1
                        if 1 >= mem[_7449]:
                            revert with 0, 50
                        mem[_7449 + 64] = address(ext_call.return_data[0])
                        mem[_7449 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7449 + 100] = arg3 / 2
                        mem[_7449 + 132] = 64
                        mem[_7449 + 164] = mem[_7449]
                        idx = 0
                        s = _7449 + 32
                        t = _7449 + 196
                        while idx < mem[_7449]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7449 + (32 * mem[_7449]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10169 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10313 = mem[_10169]
                        require mem[_10169] <= test266151307()
                        require _10169 + mem[_10169] + 31 < _10169 + return_data.size
                        _10457 = mem[_10169 + mem[_10169]]
                        if mem[_10169 + mem[_10169]] > test266151307():
                            revert with 0, 65
                        if _10169 + ceil32(return_data.size) + ceil32(32 * mem[_10169 + mem[_10169]]) + 1 > test266151307() or ceil32(32 * mem[_10169 + mem[_10169]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10169 + ceil32(return_data.size) + ceil32(32 * mem[_10169 + mem[_10169]]) + 1
                        mem[_10169 + ceil32(return_data.size)] = _10457
                        require return_data.size >= _10313 + (32 * _10457) + 32
                        mem[_10169 + ceil32(return_data.size) + 32 len 32 * _10457] = mem[_10169 + _10313 + 32 len 32 * _10457]
                        if _10457 < 1:
                            revert with 0, 17
                        if _10457 - 1 >= _10457:
                            revert with 0, 50
                        return _7027, mem[(32 * _10457 - 1) + _10169 + ceil32(return_data.size) + 32]
                    if stor1 == address(ext_call.return_data[0]):
                        _7556 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7556]:
                            revert with 0, 50
                        mem[_7556 + 32] = stor1
                        if 1 >= mem[_7556]:
                            revert with 0, 50
                        mem[_7556 + 64] = address(ext_call.return_data[0])
                        mem[_7556 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7556 + 100] = arg3 / 2
                        mem[_7556 + 132] = 64
                        mem[_7556 + 164] = mem[_7556]
                        idx = 0
                        s = _7556 + 32
                        t = _7556 + 196
                        while idx < mem[_7556]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7556 + (32 * mem[_7556]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10171 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10315 = mem[_10171]
                        require mem[_10171] <= test266151307()
                        require _10171 + mem[_10171] + 31 < _10171 + return_data.size
                        _10459 = mem[_10171 + mem[_10171]]
                        if mem[_10171 + mem[_10171]] > test266151307():
                            revert with 0, 65
                        if _10171 + ceil32(return_data.size) + ceil32(32 * mem[_10171 + mem[_10171]]) + 1 > test266151307() or ceil32(32 * mem[_10171 + mem[_10171]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10171 + ceil32(return_data.size) + ceil32(32 * mem[_10171 + mem[_10171]]) + 1
                        mem[_10171 + ceil32(return_data.size)] = _10459
                        require return_data.size >= _10315 + (32 * _10459) + 32
                        mem[_10171 + ceil32(return_data.size) + 32 len 32 * _10459] = mem[_10171 + _10315 + 32 len 32 * _10459]
                        if _10459 < 1:
                            revert with 0, 17
                        if _10459 - 1 >= _10459:
                            revert with 0, 50
                        return _7027, mem[(32 * _10459 - 1) + _10171 + ceil32(return_data.size) + 32]
                    _7554 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7554]:
                        revert with 0, 50
                    mem[_7554 + 32] = stor1
                    if 1 >= mem[_7554]:
                        revert with 0, 50
                    mem[_7554 + 64] = stor1
                    if 2 >= mem[_7554]:
                        revert with 0, 50
                    mem[_7554 + 96] = address(ext_call.return_data[0])
                    mem[_7554 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7554 + 132] = arg3 / 2
                    mem[_7554 + 164] = 64
                    mem[_7554 + 196] = mem[_7554]
                    idx = 0
                    s = _7554 + 32
                    t = _7554 + 228
                    while idx < mem[_7554]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7554 + (32 * mem[_7554]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10170 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10314 = mem[_10170]
                    require mem[_10170] <= test266151307()
                    require _10170 + mem[_10170] + 31 < _10170 + return_data.size
                    _10458 = mem[_10170 + mem[_10170]]
                    if mem[_10170 + mem[_10170]] > test266151307():
                        revert with 0, 65
                    if _10170 + ceil32(return_data.size) + ceil32(32 * mem[_10170 + mem[_10170]]) + 1 > test266151307() or ceil32(32 * mem[_10170 + mem[_10170]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10170 + ceil32(return_data.size) + ceil32(32 * mem[_10170 + mem[_10170]]) + 1
                    mem[_10170 + ceil32(return_data.size)] = _10458
                    require return_data.size >= _10314 + (32 * _10458) + 32
                    mem[_10170 + ceil32(return_data.size) + 32 len 32 * _10458] = mem[_10170 + _10314 + 32 len 32 * _10458]
                    if _10458 < 1:
                        revert with 0, 17
                    if _10458 - 1 >= _10458:
                        revert with 0, 50
                    return _7027, mem[(32 * _10458 - 1) + _10170 + ceil32(return_data.size) + 32]
                _7265 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7265]:
                    revert with 0, 50
                mem[_7265 + 32] = stor1
                if 1 >= mem[_7265]:
                    revert with 0, 50
                mem[_7265 + 64] = stor1
                if 2 >= mem[_7265]:
                    revert with 0, 50
                mem[_7265 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                if 3 >= mem[_7265]:
                    revert with 0, 50
                mem[_7265 + 128] = address(ext_call.return_data[0])
                mem[_7265 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7265 + 164] = arg3 / 2
                mem[_7265 + 196] = 64
                mem[_7265 + 228] = mem[_7265]
                idx = 0
                s = _7265 + 32
                t = _7265 + 260
                while idx < mem[_7265]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7265 + (32 * mem[_7265]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10172 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10316 = mem[_10172]
                require mem[_10172] <= test266151307()
                require _10172 + mem[_10172] + 31 < _10172 + return_data.size
                _10460 = mem[_10172 + mem[_10172]]
                if mem[_10172 + mem[_10172]] > test266151307():
                    revert with 0, 65
                if _10172 + ceil32(return_data.size) + ceil32(32 * mem[_10172 + mem[_10172]]) + 1 > test266151307() or ceil32(32 * mem[_10172 + mem[_10172]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10172 + ceil32(return_data.size) + ceil32(32 * mem[_10172 + mem[_10172]]) + 1
                mem[_10172 + ceil32(return_data.size)] = _10460
                require return_data.size >= _10316 + (32 * _10460) + 32
                mem[_10172 + ceil32(return_data.size) + 32 len 32 * _10460] = mem[_10172 + _10316 + 32 len 32 * _10460]
                if _10460 < 1:
                    revert with 0, 17
                if _10460 - 1 >= _10460:
                    revert with 0, 50
                return _7027, mem[(32 * _10460 - 1) + _10172 + ceil32(return_data.size) + 32]
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if not stor3[stor1][address(arg2)]:
                    if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                        if stor1 == stor1:
                            _7559 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_7559]:
                                revert with 0, 50
                            mem[_7559 + 32] = stor1
                            if 1 >= mem[_7559]:
                                revert with 0, 50
                            mem[_7559 + 64] = address(ext_call.return_data[0])
                            mem[_7559 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_7559 + 100] = arg3 / 2
                            mem[_7559 + 132] = 64
                            mem[_7559 + 164] = mem[_7559]
                            idx = 0
                            s = _7559 + 32
                            t = _7559 + 196
                            while idx < mem[_7559]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg2)
                            staticcall arg2.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7559 + (32 * mem[_7559]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10173 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10317 = mem[_10173]
                            require mem[_10173] <= test266151307()
                            require _10173 + mem[_10173] + 31 < _10173 + return_data.size
                            _10461 = mem[_10173 + mem[_10173]]
                            if mem[_10173 + mem[_10173]] > test266151307():
                                revert with 0, 65
                            if _10173 + ceil32(return_data.size) + ceil32(32 * mem[_10173 + mem[_10173]]) + 1 > test266151307() or ceil32(32 * mem[_10173 + mem[_10173]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10173 + ceil32(return_data.size) + ceil32(32 * mem[_10173 + mem[_10173]]) + 1
                            mem[_10173 + ceil32(return_data.size)] = _10461
                            require return_data.size >= _10317 + (32 * _10461) + 32
                            mem[_10173 + ceil32(return_data.size) + 32 len 32 * _10461] = mem[_10173 + _10317 + 32 len 32 * _10461]
                            if _10461 < 1:
                                revert with 0, 17
                            if _10461 - 1 >= _10461:
                                revert with 0, 50
                            return _7027, mem[(32 * _10461 - 1) + _10173 + ceil32(return_data.size) + 32]
                        if stor1 == address(ext_call.return_data[0]):
                            _7700 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_7700]:
                                revert with 0, 50
                            mem[_7700 + 32] = stor1
                            if 1 >= mem[_7700]:
                                revert with 0, 50
                            mem[_7700 + 64] = address(ext_call.return_data[0])
                            mem[_7700 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_7700 + 100] = arg3 / 2
                            mem[_7700 + 132] = 64
                            mem[_7700 + 164] = mem[_7700]
                            idx = 0
                            s = _7700 + 32
                            t = _7700 + 196
                            while idx < mem[_7700]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg2)
                            staticcall arg2.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7700 + (32 * mem[_7700]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10175 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10319 = mem[_10175]
                            require mem[_10175] <= test266151307()
                            require _10175 + mem[_10175] + 31 < _10175 + return_data.size
                            _10463 = mem[_10175 + mem[_10175]]
                            if mem[_10175 + mem[_10175]] > test266151307():
                                revert with 0, 65
                            if _10175 + ceil32(return_data.size) + ceil32(32 * mem[_10175 + mem[_10175]]) + 1 > test266151307() or ceil32(32 * mem[_10175 + mem[_10175]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10175 + ceil32(return_data.size) + ceil32(32 * mem[_10175 + mem[_10175]]) + 1
                            mem[_10175 + ceil32(return_data.size)] = _10463
                            require return_data.size >= _10319 + (32 * _10463) + 32
                            mem[_10175 + ceil32(return_data.size) + 32 len 32 * _10463] = mem[_10175 + _10319 + 32 len 32 * _10463]
                            if _10463 < 1:
                                revert with 0, 17
                            if _10463 - 1 >= _10463:
                                revert with 0, 50
                            return _7027, mem[(32 * _10463 - 1) + _10175 + ceil32(return_data.size) + 32]
                        _7698 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_7698]:
                            revert with 0, 50
                        mem[_7698 + 32] = stor1
                        if 1 >= mem[_7698]:
                            revert with 0, 50
                        mem[_7698 + 64] = stor1
                        if 2 >= mem[_7698]:
                            revert with 0, 50
                        mem[_7698 + 96] = address(ext_call.return_data[0])
                        mem[_7698 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7698 + 132] = arg3 / 2
                        mem[_7698 + 164] = 64
                        mem[_7698 + 196] = mem[_7698]
                        idx = 0
                        s = _7698 + 32
                        t = _7698 + 228
                        while idx < mem[_7698]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7698 + (32 * mem[_7698]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10174 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10318 = mem[_10174]
                        require mem[_10174] <= test266151307()
                        require _10174 + mem[_10174] + 31 < _10174 + return_data.size
                        _10462 = mem[_10174 + mem[_10174]]
                        if mem[_10174 + mem[_10174]] > test266151307():
                            revert with 0, 65
                        if _10174 + ceil32(return_data.size) + ceil32(32 * mem[_10174 + mem[_10174]]) + 1 > test266151307() or ceil32(32 * mem[_10174 + mem[_10174]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10174 + ceil32(return_data.size) + ceil32(32 * mem[_10174 + mem[_10174]]) + 1
                        mem[_10174 + ceil32(return_data.size)] = _10462
                        require return_data.size >= _10318 + (32 * _10462) + 32
                        mem[_10174 + ceil32(return_data.size) + 32 len 32 * _10462] = mem[_10174 + _10318 + 32 len 32 * _10462]
                        if _10462 < 1:
                            revert with 0, 17
                        if _10462 - 1 >= _10462:
                            revert with 0, 50
                        return _7027, mem[(32 * _10462 - 1) + _10174 + ceil32(return_data.size) + 32]
                    _7344 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 160
                    if 0 >= mem[_7344]:
                        revert with 0, 50
                    mem[_7344 + 32] = stor1
                    if 1 >= mem[_7344]:
                        revert with 0, 50
                    mem[_7344 + 64] = stor1
                    if 2 >= mem[_7344]:
                        revert with 0, 50
                    mem[_7344 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    if 3 >= mem[_7344]:
                        revert with 0, 50
                    mem[_7344 + 128] = address(ext_call.return_data[0])
                    mem[_7344 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7344 + 164] = arg3 / 2
                    mem[_7344 + 196] = 64
                    mem[_7344 + 228] = mem[_7344]
                    idx = 0
                    s = _7344 + 32
                    t = _7344 + 260
                    while idx < mem[_7344]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7344 + (32 * mem[_7344]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10176 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10320 = mem[_10176]
                    require mem[_10176] <= test266151307()
                    require _10176 + mem[_10176] + 31 < _10176 + return_data.size
                    _10464 = mem[_10176 + mem[_10176]]
                    if mem[_10176 + mem[_10176]] > test266151307():
                        revert with 0, 65
                    if _10176 + ceil32(return_data.size) + ceil32(32 * mem[_10176 + mem[_10176]]) + 1 > test266151307() or ceil32(32 * mem[_10176 + mem[_10176]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10176 + ceil32(return_data.size) + ceil32(32 * mem[_10176 + mem[_10176]]) + 1
                    mem[_10176 + ceil32(return_data.size)] = _10464
                    require return_data.size >= _10320 + (32 * _10464) + 32
                    mem[_10176 + ceil32(return_data.size) + 32 len 32 * _10464] = mem[_10176 + _10320 + 32 len 32 * _10464]
                    if _10464 < 1:
                        revert with 0, 17
                    if _10464 - 1 >= _10464:
                        revert with 0, 50
                    return _7027, mem[(32 * _10464 - 1) + _10176 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7348 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7348]:
                        revert with 0, 50
                    mem[_7348 + 32] = stor1
                    if 1 >= mem[_7348]:
                        revert with 0, 50
                    mem[_7348 + 64] = stor3[stor1][address(arg2)]
                    if 2 >= mem[_7348]:
                        revert with 0, 50
                    mem[_7348 + 96] = stor1
                    mem[_7348 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7348 + 132] = arg3 / 2
                    mem[_7348 + 164] = 64
                    mem[_7348 + 196] = mem[_7348]
                    idx = 0
                    s = _7348 + 32
                    t = _7348 + 228
                    while idx < mem[_7348]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7348 + (32 * mem[_7348]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10178 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10322 = mem[_10178]
                    require mem[_10178] <= test266151307()
                    require _10178 + mem[_10178] + 31 < _10178 + return_data.size
                    _10466 = mem[_10178 + mem[_10178]]
                    if mem[_10178 + mem[_10178]] > test266151307():
                        revert with 0, 65
                    if _10178 + ceil32(return_data.size) + ceil32(32 * mem[_10178 + mem[_10178]]) + 1 > test266151307() or ceil32(32 * mem[_10178 + mem[_10178]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10178 + ceil32(return_data.size) + ceil32(32 * mem[_10178 + mem[_10178]]) + 1
                    mem[_10178 + ceil32(return_data.size)] = _10466
                    require return_data.size >= _10322 + (32 * _10466) + 32
                    mem[_10178 + ceil32(return_data.size) + 32 len 32 * _10466] = mem[_10178 + _10322 + 32 len 32 * _10466]
                    if _10466 < 1:
                        revert with 0, 17
                    if _10466 - 1 >= _10466:
                        revert with 0, 50
                    return _7027, mem[(32 * _10466 - 1) + _10178 + ceil32(return_data.size) + 32]
                _7346 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7346]:
                    revert with 0, 50
                mem[_7346 + 32] = stor1
                if 1 >= mem[_7346]:
                    revert with 0, 50
                mem[_7346 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7346]:
                    revert with 0, 50
                mem[_7346 + 96] = stor1
                if 3 >= mem[_7346]:
                    revert with 0, 50
                mem[_7346 + 128] = address(ext_call.return_data[0])
                mem[_7346 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7346 + 164] = arg3 / 2
                mem[_7346 + 196] = 64
                mem[_7346 + 228] = mem[_7346]
                idx = 0
                s = _7346 + 32
                t = _7346 + 260
                while idx < mem[_7346]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7346 + (32 * mem[_7346]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10177 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10321 = mem[_10177]
                require mem[_10177] <= test266151307()
                require _10177 + mem[_10177] + 31 < _10177 + return_data.size
                _10465 = mem[_10177 + mem[_10177]]
                if mem[_10177 + mem[_10177]] > test266151307():
                    revert with 0, 65
                if _10177 + ceil32(return_data.size) + ceil32(32 * mem[_10177 + mem[_10177]]) + 1 > test266151307() or ceil32(32 * mem[_10177 + mem[_10177]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10177 + ceil32(return_data.size) + ceil32(32 * mem[_10177 + mem[_10177]]) + 1
                mem[_10177 + ceil32(return_data.size)] = _10465
                require return_data.size >= _10321 + (32 * _10465) + 32
                mem[_10177 + ceil32(return_data.size) + 32 len 32 * _10465] = mem[_10177 + _10321 + 32 len 32 * _10465]
                if _10465 < 1:
                    revert with 0, 17
                if _10465 - 1 >= _10465:
                    revert with 0, 50
                return _7027, mem[(32 * _10465 - 1) + _10177 + ceil32(return_data.size) + 32]
            if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
                _7267 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7267]:
                    revert with 0, 50
                mem[_7267 + 32] = stor1
                if 1 >= mem[_7267]:
                    revert with 0, 50
                mem[_7267 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7267]:
                    revert with 0, 50
                mem[_7267 + 96] = address(ext_call.return_data[0])
                mem[_7267 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7267 + 132] = arg3 / 2
                mem[_7267 + 164] = 64
                mem[_7267 + 196] = mem[_7267]
                idx = 0
                s = _7267 + 32
                t = _7267 + 228
                while idx < mem[_7267]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7267 + (32 * mem[_7267]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10179 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10323 = mem[_10179]
                require mem[_10179] <= test266151307()
                require _10179 + mem[_10179] + 31 < _10179 + return_data.size
                _10467 = mem[_10179 + mem[_10179]]
                if mem[_10179 + mem[_10179]] > test266151307():
                    revert with 0, 65
                if _10179 + ceil32(return_data.size) + ceil32(32 * mem[_10179 + mem[_10179]]) + 1 > test266151307() or ceil32(32 * mem[_10179 + mem[_10179]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10179 + ceil32(return_data.size) + ceil32(32 * mem[_10179 + mem[_10179]]) + 1
                mem[_10179 + ceil32(return_data.size)] = _10467
                require return_data.size >= _10323 + (32 * _10467) + 32
                mem[_10179 + ceil32(return_data.size) + 32 len 32 * _10467] = mem[_10179 + _10323 + 32 len 32 * _10467]
                if _10467 < 1:
                    revert with 0, 17
                if _10467 - 1 >= _10467:
                    revert with 0, 50
                return _7027, mem[(32 * _10467 - 1) + _10179 + ceil32(return_data.size) + 32]
            _7269 = mem[64]
            mem[mem[64]] = 5
            mem[64] = mem[64] + 192
            if 0 >= mem[_7269]:
                revert with 0, 50
            mem[_7269 + 32] = stor1
            if 1 >= mem[_7269]:
                revert with 0, 50
            mem[_7269 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7269]:
                revert with 0, 50
            mem[_7269 + 96] = stor1
            if 3 >= mem[_7269]:
                revert with 0, 50
            mem[_7269 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 4 >= mem[_7269]:
                revert with 0, 50
            mem[_7269 + 160] = address(ext_call.return_data[0])
            mem[_7269 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7269 + 196] = arg3 / 2
            mem[_7269 + 228] = 64
            mem[_7269 + 260] = mem[_7269]
            idx = 0
            s = _7269 + 32
            t = _7269 + 292
            while idx < mem[_7269]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7269 + (32 * mem[_7269]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10180 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10324 = mem[_10180]
            require mem[_10180] <= test266151307()
            require _10180 + mem[_10180] + 31 < _10180 + return_data.size
            _10468 = mem[_10180 + mem[_10180]]
            if mem[_10180 + mem[_10180]] > test266151307():
                revert with 0, 65
            if _10180 + ceil32(return_data.size) + ceil32(32 * mem[_10180 + mem[_10180]]) + 1 > test266151307() or ceil32(32 * mem[_10180 + mem[_10180]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10180 + ceil32(return_data.size) + ceil32(32 * mem[_10180 + mem[_10180]]) + 1
            mem[_10180 + ceil32(return_data.size)] = _10468
            require return_data.size >= _10324 + (32 * _10468) + 32
            mem[_10180 + ceil32(return_data.size) + 32 len 32 * _10468] = mem[_10180 + _10324 + 32 len 32 * _10468]
            if _10468 < 1:
                revert with 0, 17
            if _10468 - 1 >= _10468:
                revert with 0, 50
            return _7027, mem[(32 * _10468 - 1) + _10180 + ceil32(return_data.size) + 32]
        mem[(2 * ceil32(return_data.size)) + 96] = 3
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = stor1
        mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
        require ext_code.size(arg2)
        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _3750 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        _3798 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        require return_data.size >= _3750 + (32 * _3798) + 32
        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3798] = mem[(2 * ceil32(return_data.size)) + _3750 + 256 len 32 * _3798]
        if _3798 < 1:
            revert with 0, 17
        if _3798 - 1 >= _3798:
            revert with 0, 50
        _7026 = mem[(32 * _3798 - 1) + (4 * ceil32(return_data.size)) + 256]
        mem[0] = arg2
        mem[32] = sha3(address(ext_call.return_data[0]), 3)
        if not stor3[stor1][address(arg2)]:
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if stor1 == stor1:
                    _7441 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7441]:
                        revert with 0, 50
                    mem[_7441 + 32] = stor1
                    if 1 >= mem[_7441]:
                        revert with 0, 50
                    mem[_7441 + 64] = address(ext_call.return_data[0])
                    mem[_7441 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7441 + 100] = arg3 / 2
                    mem[_7441 + 132] = 64
                    mem[_7441 + 164] = mem[_7441]
                    idx = 0
                    s = _7441 + 32
                    t = _7441 + 196
                    while idx < mem[_7441]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7441 + (32 * mem[_7441]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10157 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10301 = mem[_10157]
                    require mem[_10157] <= test266151307()
                    require _10157 + mem[_10157] + 31 < _10157 + return_data.size
                    _10445 = mem[_10157 + mem[_10157]]
                    if mem[_10157 + mem[_10157]] > test266151307():
                        revert with 0, 65
                    if _10157 + ceil32(return_data.size) + ceil32(32 * mem[_10157 + mem[_10157]]) + 1 > test266151307() or ceil32(32 * mem[_10157 + mem[_10157]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10157 + ceil32(return_data.size) + ceil32(32 * mem[_10157 + mem[_10157]]) + 1
                    mem[_10157 + ceil32(return_data.size)] = _10445
                    require return_data.size >= _10301 + (32 * _10445) + 32
                    mem[_10157 + ceil32(return_data.size) + 32 len 32 * _10445] = mem[_10157 + _10301 + 32 len 32 * _10445]
                    if _10445 < 1:
                        revert with 0, 17
                    if _10445 - 1 >= _10445:
                        revert with 0, 50
                    return _7026, mem[(32 * _10445 - 1) + _10157 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7544 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7544]:
                        revert with 0, 50
                    mem[_7544 + 32] = stor1
                    if 1 >= mem[_7544]:
                        revert with 0, 50
                    mem[_7544 + 64] = address(ext_call.return_data[0])
                    mem[_7544 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7544 + 100] = arg3 / 2
                    mem[_7544 + 132] = 64
                    mem[_7544 + 164] = mem[_7544]
                    idx = 0
                    s = _7544 + 32
                    t = _7544 + 196
                    while idx < mem[_7544]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7544 + (32 * mem[_7544]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10159 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10303 = mem[_10159]
                    require mem[_10159] <= test266151307()
                    require _10159 + mem[_10159] + 31 < _10159 + return_data.size
                    _10447 = mem[_10159 + mem[_10159]]
                    if mem[_10159 + mem[_10159]] > test266151307():
                        revert with 0, 65
                    if _10159 + ceil32(return_data.size) + ceil32(32 * mem[_10159 + mem[_10159]]) + 1 > test266151307() or ceil32(32 * mem[_10159 + mem[_10159]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10159 + ceil32(return_data.size) + ceil32(32 * mem[_10159 + mem[_10159]]) + 1
                    mem[_10159 + ceil32(return_data.size)] = _10447
                    require return_data.size >= _10303 + (32 * _10447) + 32
                    mem[_10159 + ceil32(return_data.size) + 32 len 32 * _10447] = mem[_10159 + _10303 + 32 len 32 * _10447]
                    if _10447 < 1:
                        revert with 0, 17
                    if _10447 - 1 >= _10447:
                        revert with 0, 50
                    return _7026, mem[(32 * _10447 - 1) + _10159 + ceil32(return_data.size) + 32]
                _7542 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7542]:
                    revert with 0, 50
                mem[_7542 + 32] = stor1
                if 1 >= mem[_7542]:
                    revert with 0, 50
                mem[_7542 + 64] = stor1
                if 2 >= mem[_7542]:
                    revert with 0, 50
                mem[_7542 + 96] = address(ext_call.return_data[0])
                mem[_7542 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7542 + 132] = arg3 / 2
                mem[_7542 + 164] = 64
                mem[_7542 + 196] = mem[_7542]
                idx = 0
                s = _7542 + 32
                t = _7542 + 228
                while idx < mem[_7542]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7542 + (32 * mem[_7542]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10158 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10302 = mem[_10158]
                require mem[_10158] <= test266151307()
                require _10158 + mem[_10158] + 31 < _10158 + return_data.size
                _10446 = mem[_10158 + mem[_10158]]
                if mem[_10158 + mem[_10158]] > test266151307():
                    revert with 0, 65
                if _10158 + ceil32(return_data.size) + ceil32(32 * mem[_10158 + mem[_10158]]) + 1 > test266151307() or ceil32(32 * mem[_10158 + mem[_10158]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10158 + ceil32(return_data.size) + ceil32(32 * mem[_10158 + mem[_10158]]) + 1
                mem[_10158 + ceil32(return_data.size)] = _10446
                require return_data.size >= _10302 + (32 * _10446) + 32
                mem[_10158 + ceil32(return_data.size) + 32 len 32 * _10446] = mem[_10158 + _10302 + 32 len 32 * _10446]
                if _10446 < 1:
                    revert with 0, 17
                if _10446 - 1 >= _10446:
                    revert with 0, 50
                return _7026, mem[(32 * _10446 - 1) + _10158 + ceil32(return_data.size) + 32]
            _7259 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7259]:
                revert with 0, 50
            mem[_7259 + 32] = stor1
            if 1 >= mem[_7259]:
                revert with 0, 50
            mem[_7259 + 64] = stor1
            if 2 >= mem[_7259]:
                revert with 0, 50
            mem[_7259 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 3 >= mem[_7259]:
                revert with 0, 50
            mem[_7259 + 128] = address(ext_call.return_data[0])
            mem[_7259 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7259 + 164] = arg3 / 2
            mem[_7259 + 196] = 64
            mem[_7259 + 228] = mem[_7259]
            idx = 0
            s = _7259 + 32
            t = _7259 + 260
            while idx < mem[_7259]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7259 + (32 * mem[_7259]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10160 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10304 = mem[_10160]
            require mem[_10160] <= test266151307()
            require _10160 + mem[_10160] + 31 < _10160 + return_data.size
            _10448 = mem[_10160 + mem[_10160]]
            if mem[_10160 + mem[_10160]] > test266151307():
                revert with 0, 65
            if _10160 + ceil32(return_data.size) + ceil32(32 * mem[_10160 + mem[_10160]]) + 1 > test266151307() or ceil32(32 * mem[_10160 + mem[_10160]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10160 + ceil32(return_data.size) + ceil32(32 * mem[_10160 + mem[_10160]]) + 1
            mem[_10160 + ceil32(return_data.size)] = _10448
            require return_data.size >= _10304 + (32 * _10448) + 32
            mem[_10160 + ceil32(return_data.size) + 32 len 32 * _10448] = mem[_10160 + _10304 + 32 len 32 * _10448]
            if _10448 < 1:
                revert with 0, 17
            if _10448 - 1 >= _10448:
                revert with 0, 50
            return _7026, mem[(32 * _10448 - 1) + _10160 + ceil32(return_data.size) + 32]
        if not stor3[address(ext_call.return_data[0])][address(arg2)]:
            if not stor3[stor1][address(arg2)]:
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor1 == stor1:
                        _7547 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7547]:
                            revert with 0, 50
                        mem[_7547 + 32] = stor1
                        if 1 >= mem[_7547]:
                            revert with 0, 50
                        mem[_7547 + 64] = address(ext_call.return_data[0])
                        mem[_7547 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7547 + 100] = arg3 / 2
                        mem[_7547 + 132] = 64
                        mem[_7547 + 164] = mem[_7547]
                        idx = 0
                        s = _7547 + 32
                        t = _7547 + 196
                        while idx < mem[_7547]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7547 + (32 * mem[_7547]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10161 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10305 = mem[_10161]
                        require mem[_10161] <= test266151307()
                        require _10161 + mem[_10161] + 31 < _10161 + return_data.size
                        _10449 = mem[_10161 + mem[_10161]]
                        if mem[_10161 + mem[_10161]] > test266151307():
                            revert with 0, 65
                        if _10161 + ceil32(return_data.size) + ceil32(32 * mem[_10161 + mem[_10161]]) + 1 > test266151307() or ceil32(32 * mem[_10161 + mem[_10161]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10161 + ceil32(return_data.size) + ceil32(32 * mem[_10161 + mem[_10161]]) + 1
                        mem[_10161 + ceil32(return_data.size)] = _10449
                        require return_data.size >= _10305 + (32 * _10449) + 32
                        mem[_10161 + ceil32(return_data.size) + 32 len 32 * _10449] = mem[_10161 + _10305 + 32 len 32 * _10449]
                        if _10449 < 1:
                            revert with 0, 17
                        if _10449 - 1 >= _10449:
                            revert with 0, 50
                        return _7026, mem[(32 * _10449 - 1) + _10161 + ceil32(return_data.size) + 32]
                    if stor1 == address(ext_call.return_data[0]):
                        _7689 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7689]:
                            revert with 0, 50
                        mem[_7689 + 32] = stor1
                        if 1 >= mem[_7689]:
                            revert with 0, 50
                        mem[_7689 + 64] = address(ext_call.return_data[0])
                        mem[_7689 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7689 + 100] = arg3 / 2
                        mem[_7689 + 132] = 64
                        mem[_7689 + 164] = mem[_7689]
                        idx = 0
                        s = _7689 + 32
                        t = _7689 + 196
                        while idx < mem[_7689]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7689 + (32 * mem[_7689]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10163 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10307 = mem[_10163]
                        require mem[_10163] <= test266151307()
                        require _10163 + mem[_10163] + 31 < _10163 + return_data.size
                        _10451 = mem[_10163 + mem[_10163]]
                        if mem[_10163 + mem[_10163]] > test266151307():
                            revert with 0, 65
                        if _10163 + ceil32(return_data.size) + ceil32(32 * mem[_10163 + mem[_10163]]) + 1 > test266151307() or ceil32(32 * mem[_10163 + mem[_10163]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10163 + ceil32(return_data.size) + ceil32(32 * mem[_10163 + mem[_10163]]) + 1
                        mem[_10163 + ceil32(return_data.size)] = _10451
                        require return_data.size >= _10307 + (32 * _10451) + 32
                        mem[_10163 + ceil32(return_data.size) + 32 len 32 * _10451] = mem[_10163 + _10307 + 32 len 32 * _10451]
                        if _10451 < 1:
                            revert with 0, 17
                        if _10451 - 1 >= _10451:
                            revert with 0, 50
                        return _7026, mem[(32 * _10451 - 1) + _10163 + ceil32(return_data.size) + 32]
                    _7687 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7687]:
                        revert with 0, 50
                    mem[_7687 + 32] = stor1
                    if 1 >= mem[_7687]:
                        revert with 0, 50
                    mem[_7687 + 64] = stor1
                    if 2 >= mem[_7687]:
                        revert with 0, 50
                    mem[_7687 + 96] = address(ext_call.return_data[0])
                    mem[_7687 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7687 + 132] = arg3 / 2
                    mem[_7687 + 164] = 64
                    mem[_7687 + 196] = mem[_7687]
                    idx = 0
                    s = _7687 + 32
                    t = _7687 + 228
                    while idx < mem[_7687]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7687 + (32 * mem[_7687]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10162 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10306 = mem[_10162]
                    require mem[_10162] <= test266151307()
                    require _10162 + mem[_10162] + 31 < _10162 + return_data.size
                    _10450 = mem[_10162 + mem[_10162]]
                    if mem[_10162 + mem[_10162]] > test266151307():
                        revert with 0, 65
                    if _10162 + ceil32(return_data.size) + ceil32(32 * mem[_10162 + mem[_10162]]) + 1 > test266151307() or ceil32(32 * mem[_10162 + mem[_10162]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10162 + ceil32(return_data.size) + ceil32(32 * mem[_10162 + mem[_10162]]) + 1
                    mem[_10162 + ceil32(return_data.size)] = _10450
                    require return_data.size >= _10306 + (32 * _10450) + 32
                    mem[_10162 + ceil32(return_data.size) + 32 len 32 * _10450] = mem[_10162 + _10306 + 32 len 32 * _10450]
                    if _10450 < 1:
                        revert with 0, 17
                    if _10450 - 1 >= _10450:
                        revert with 0, 50
                    return _7026, mem[(32 * _10450 - 1) + _10162 + ceil32(return_data.size) + 32]
                _7335 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7335]:
                    revert with 0, 50
                mem[_7335 + 32] = stor1
                if 1 >= mem[_7335]:
                    revert with 0, 50
                mem[_7335 + 64] = stor1
                if 2 >= mem[_7335]:
                    revert with 0, 50
                mem[_7335 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                if 3 >= mem[_7335]:
                    revert with 0, 50
                mem[_7335 + 128] = address(ext_call.return_data[0])
                mem[_7335 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7335 + 164] = arg3 / 2
                mem[_7335 + 196] = 64
                mem[_7335 + 228] = mem[_7335]
                idx = 0
                s = _7335 + 32
                t = _7335 + 260
                while idx < mem[_7335]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7335 + (32 * mem[_7335]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10164 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10308 = mem[_10164]
                require mem[_10164] <= test266151307()
                require _10164 + mem[_10164] + 31 < _10164 + return_data.size
                _10452 = mem[_10164 + mem[_10164]]
                if mem[_10164 + mem[_10164]] > test266151307():
                    revert with 0, 65
                if _10164 + ceil32(return_data.size) + ceil32(32 * mem[_10164 + mem[_10164]]) + 1 > test266151307() or ceil32(32 * mem[_10164 + mem[_10164]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10164 + ceil32(return_data.size) + ceil32(32 * mem[_10164 + mem[_10164]]) + 1
                mem[_10164 + ceil32(return_data.size)] = _10452
                require return_data.size >= _10308 + (32 * _10452) + 32
                mem[_10164 + ceil32(return_data.size) + 32 len 32 * _10452] = mem[_10164 + _10308 + 32 len 32 * _10452]
                if _10452 < 1:
                    revert with 0, 17
                if _10452 - 1 >= _10452:
                    revert with 0, 50
                return _7026, mem[(32 * _10452 - 1) + _10164 + ceil32(return_data.size) + 32]
            if stor1 == address(ext_call.return_data[0]):
                _7339 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7339]:
                    revert with 0, 50
                mem[_7339 + 32] = stor1
                if 1 >= mem[_7339]:
                    revert with 0, 50
                mem[_7339 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7339]:
                    revert with 0, 50
                mem[_7339 + 96] = stor1
                mem[_7339 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7339 + 132] = arg3 / 2
                mem[_7339 + 164] = 64
                mem[_7339 + 196] = mem[_7339]
                idx = 0
                s = _7339 + 32
                t = _7339 + 228
                while idx < mem[_7339]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7339 + (32 * mem[_7339]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10166 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10310 = mem[_10166]
                require mem[_10166] <= test266151307()
                require _10166 + mem[_10166] + 31 < _10166 + return_data.size
                _10454 = mem[_10166 + mem[_10166]]
                if mem[_10166 + mem[_10166]] > test266151307():
                    revert with 0, 65
                if _10166 + ceil32(return_data.size) + ceil32(32 * mem[_10166 + mem[_10166]]) + 1 > test266151307() or ceil32(32 * mem[_10166 + mem[_10166]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10166 + ceil32(return_data.size) + ceil32(32 * mem[_10166 + mem[_10166]]) + 1
                mem[_10166 + ceil32(return_data.size)] = _10454
                require return_data.size >= _10310 + (32 * _10454) + 32
                mem[_10166 + ceil32(return_data.size) + 32 len 32 * _10454] = mem[_10166 + _10310 + 32 len 32 * _10454]
                if _10454 < 1:
                    revert with 0, 17
                if _10454 - 1 >= _10454:
                    revert with 0, 50
                return _7026, mem[(32 * _10454 - 1) + _10166 + ceil32(return_data.size) + 32]
            _7337 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7337]:
                revert with 0, 50
            mem[_7337 + 32] = stor1
            if 1 >= mem[_7337]:
                revert with 0, 50
            mem[_7337 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7337]:
                revert with 0, 50
            mem[_7337 + 96] = stor1
            if 3 >= mem[_7337]:
                revert with 0, 50
            mem[_7337 + 128] = address(ext_call.return_data[0])
            mem[_7337 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7337 + 164] = arg3 / 2
            mem[_7337 + 196] = 64
            mem[_7337 + 228] = mem[_7337]
            idx = 0
            s = _7337 + 32
            t = _7337 + 260
            while idx < mem[_7337]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7337 + (32 * mem[_7337]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10165 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10309 = mem[_10165]
            require mem[_10165] <= test266151307()
            require _10165 + mem[_10165] + 31 < _10165 + return_data.size
            _10453 = mem[_10165 + mem[_10165]]
            if mem[_10165 + mem[_10165]] > test266151307():
                revert with 0, 65
            if _10165 + ceil32(return_data.size) + ceil32(32 * mem[_10165 + mem[_10165]]) + 1 > test266151307() or ceil32(32 * mem[_10165 + mem[_10165]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10165 + ceil32(return_data.size) + ceil32(32 * mem[_10165 + mem[_10165]]) + 1
            mem[_10165 + ceil32(return_data.size)] = _10453
            require return_data.size >= _10309 + (32 * _10453) + 32
            mem[_10165 + ceil32(return_data.size) + 32 len 32 * _10453] = mem[_10165 + _10309 + 32 len 32 * _10453]
            if _10453 < 1:
                revert with 0, 17
            if _10453 - 1 >= _10453:
                revert with 0, 50
            return _7026, mem[(32 * _10453 - 1) + _10165 + ceil32(return_data.size) + 32]
        if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
            _7261 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_7261]:
                revert with 0, 50
            mem[_7261 + 32] = stor1
            if 1 >= mem[_7261]:
                revert with 0, 50
            mem[_7261 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7261]:
                revert with 0, 50
            mem[_7261 + 96] = address(ext_call.return_data[0])
            mem[_7261 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7261 + 132] = arg3 / 2
            mem[_7261 + 164] = 64
            mem[_7261 + 196] = mem[_7261]
            idx = 0
            s = _7261 + 32
            t = _7261 + 228
            while idx < mem[_7261]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7261 + (32 * mem[_7261]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10167 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10311 = mem[_10167]
            require mem[_10167] <= test266151307()
            require _10167 + mem[_10167] + 31 < _10167 + return_data.size
            _10455 = mem[_10167 + mem[_10167]]
            if mem[_10167 + mem[_10167]] > test266151307():
                revert with 0, 65
            if _10167 + ceil32(return_data.size) + ceil32(32 * mem[_10167 + mem[_10167]]) + 1 > test266151307() or ceil32(32 * mem[_10167 + mem[_10167]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10167 + ceil32(return_data.size) + ceil32(32 * mem[_10167 + mem[_10167]]) + 1
            mem[_10167 + ceil32(return_data.size)] = _10455
            require return_data.size >= _10311 + (32 * _10455) + 32
            mem[_10167 + ceil32(return_data.size) + 32 len 32 * _10455] = mem[_10167 + _10311 + 32 len 32 * _10455]
            if _10455 < 1:
                revert with 0, 17
            if _10455 - 1 >= _10455:
                revert with 0, 50
            return _7026, mem[(32 * _10455 - 1) + _10167 + ceil32(return_data.size) + 32]
        _7263 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 192
        if 0 >= mem[_7263]:
            revert with 0, 50
        mem[_7263 + 32] = stor1
        if 1 >= mem[_7263]:
            revert with 0, 50
        mem[_7263 + 64] = stor3[stor1][address(arg2)]
        if 2 >= mem[_7263]:
            revert with 0, 50
        mem[_7263 + 96] = stor1
        if 3 >= mem[_7263]:
            revert with 0, 50
        mem[_7263 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
        if 4 >= mem[_7263]:
            revert with 0, 50
        mem[_7263 + 160] = address(ext_call.return_data[0])
        mem[_7263 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_7263 + 196] = arg3 / 2
        mem[_7263 + 228] = 64
        mem[_7263 + 260] = mem[_7263]
        idx = 0
        s = _7263 + 32
        t = _7263 + 292
        while idx < mem[_7263]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _7263 + (32 * mem[_7263]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10168 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10312 = mem[_10168]
        require mem[_10168] <= test266151307()
        require _10168 + mem[_10168] + 31 < _10168 + return_data.size
        _10456 = mem[_10168 + mem[_10168]]
        if mem[_10168 + mem[_10168]] > test266151307():
            revert with 0, 65
        if _10168 + ceil32(return_data.size) + ceil32(32 * mem[_10168 + mem[_10168]]) + 1 > test266151307() or ceil32(32 * mem[_10168 + mem[_10168]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _10168 + ceil32(return_data.size) + ceil32(32 * mem[_10168 + mem[_10168]]) + 1
        mem[_10168 + ceil32(return_data.size)] = _10456
        require return_data.size >= _10312 + (32 * _10456) + 32
        mem[_10168 + ceil32(return_data.size) + 32 len 32 * _10456] = mem[_10168 + _10312 + 32 len 32 * _10456]
        if _10456 < 1:
            revert with 0, 17
        if _10456 - 1 >= _10456:
            revert with 0, 50
        return _7026, mem[(32 * _10456 - 1) + _10168 + ceil32(return_data.size) + 32]
    if stor3[address(ext_call.return_data[0])][address(arg2)]:
        if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
            mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
            require ext_code.size(arg2)
            staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _3759 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _3807 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require return_data.size >= _3759 + (32 * _3807) + 32
            mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3807] = mem[(2 * ceil32(return_data.size)) + _3759 + 256 len 32 * _3807]
            if _3807 < 1:
                revert with 0, 17
            if _3807 - 1 >= _3807:
                revert with 0, 50
            _7035 = mem[(32 * _3807 - 1) + (4 * ceil32(return_data.size)) + 256]
            mem[0] = arg2
            mem[32] = sha3(address(ext_call.return_data[0]), 3)
            if not stor3[stor1][address(arg2)]:
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor1 == stor1:
                        _7513 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7513]:
                            revert with 0, 50
                        mem[_7513 + 32] = stor1
                        if 1 >= mem[_7513]:
                            revert with 0, 50
                        mem[_7513 + 64] = address(ext_call.return_data[0])
                        mem[_7513 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7513 + 100] = arg3 / 2
                        mem[_7513 + 132] = 64
                        mem[_7513 + 164] = mem[_7513]
                        idx = 0
                        s = _7513 + 32
                        t = _7513 + 196
                        while idx < mem[_7513]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7513 + (32 * mem[_7513]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10265 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10409 = mem[_10265]
                        require mem[_10265] <= test266151307()
                        require _10265 + mem[_10265] + 31 < _10265 + return_data.size
                        _10553 = mem[_10265 + mem[_10265]]
                        if mem[_10265 + mem[_10265]] > test266151307():
                            revert with 0, 65
                        if _10265 + ceil32(return_data.size) + ceil32(32 * mem[_10265 + mem[_10265]]) + 1 > test266151307() or ceil32(32 * mem[_10265 + mem[_10265]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10265 + ceil32(return_data.size) + ceil32(32 * mem[_10265 + mem[_10265]]) + 1
                        mem[_10265 + ceil32(return_data.size)] = _10553
                        require return_data.size >= _10409 + (32 * _10553) + 32
                        mem[_10265 + ceil32(return_data.size) + 32 len 32 * _10553] = mem[_10265 + _10409 + 32 len 32 * _10553]
                        if _10553 < 1:
                            revert with 0, 17
                        if _10553 - 1 >= _10553:
                            revert with 0, 50
                        return _7035, mem[(32 * _10553 - 1) + _10265 + ceil32(return_data.size) + 32]
                    if stor1 == address(ext_call.return_data[0]):
                        _7652 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7652]:
                            revert with 0, 50
                        mem[_7652 + 32] = stor1
                        if 1 >= mem[_7652]:
                            revert with 0, 50
                        mem[_7652 + 64] = address(ext_call.return_data[0])
                        mem[_7652 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7652 + 100] = arg3 / 2
                        mem[_7652 + 132] = 64
                        mem[_7652 + 164] = mem[_7652]
                        idx = 0
                        s = _7652 + 32
                        t = _7652 + 196
                        while idx < mem[_7652]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7652 + (32 * mem[_7652]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10267 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10411 = mem[_10267]
                        require mem[_10267] <= test266151307()
                        require _10267 + mem[_10267] + 31 < _10267 + return_data.size
                        _10555 = mem[_10267 + mem[_10267]]
                        if mem[_10267 + mem[_10267]] > test266151307():
                            revert with 0, 65
                        if _10267 + ceil32(return_data.size) + ceil32(32 * mem[_10267 + mem[_10267]]) + 1 > test266151307() or ceil32(32 * mem[_10267 + mem[_10267]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10267 + ceil32(return_data.size) + ceil32(32 * mem[_10267 + mem[_10267]]) + 1
                        mem[_10267 + ceil32(return_data.size)] = _10555
                        require return_data.size >= _10411 + (32 * _10555) + 32
                        mem[_10267 + ceil32(return_data.size) + 32 len 32 * _10555] = mem[_10267 + _10411 + 32 len 32 * _10555]
                        if _10555 < 1:
                            revert with 0, 17
                        if _10555 - 1 >= _10555:
                            revert with 0, 50
                        return _7035, mem[(32 * _10555 - 1) + _10267 + ceil32(return_data.size) + 32]
                    _7650 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7650]:
                        revert with 0, 50
                    mem[_7650 + 32] = stor1
                    if 1 >= mem[_7650]:
                        revert with 0, 50
                    mem[_7650 + 64] = stor1
                    if 2 >= mem[_7650]:
                        revert with 0, 50
                    mem[_7650 + 96] = address(ext_call.return_data[0])
                    mem[_7650 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7650 + 132] = arg3 / 2
                    mem[_7650 + 164] = 64
                    mem[_7650 + 196] = mem[_7650]
                    idx = 0
                    s = _7650 + 32
                    t = _7650 + 228
                    while idx < mem[_7650]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7650 + (32 * mem[_7650]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10266 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10410 = mem[_10266]
                    require mem[_10266] <= test266151307()
                    require _10266 + mem[_10266] + 31 < _10266 + return_data.size
                    _10554 = mem[_10266 + mem[_10266]]
                    if mem[_10266 + mem[_10266]] > test266151307():
                        revert with 0, 65
                    if _10266 + ceil32(return_data.size) + ceil32(32 * mem[_10266 + mem[_10266]]) + 1 > test266151307() or ceil32(32 * mem[_10266 + mem[_10266]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10266 + ceil32(return_data.size) + ceil32(32 * mem[_10266 + mem[_10266]]) + 1
                    mem[_10266 + ceil32(return_data.size)] = _10554
                    require return_data.size >= _10410 + (32 * _10554) + 32
                    mem[_10266 + ceil32(return_data.size) + 32 len 32 * _10554] = mem[_10266 + _10410 + 32 len 32 * _10554]
                    if _10554 < 1:
                        revert with 0, 17
                    if _10554 - 1 >= _10554:
                        revert with 0, 50
                    return _7035, mem[(32 * _10554 - 1) + _10266 + ceil32(return_data.size) + 32]
                _7313 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7313]:
                    revert with 0, 50
                mem[_7313 + 32] = stor1
                if 1 >= mem[_7313]:
                    revert with 0, 50
                mem[_7313 + 64] = stor1
                if 2 >= mem[_7313]:
                    revert with 0, 50
                mem[_7313 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                if 3 >= mem[_7313]:
                    revert with 0, 50
                mem[_7313 + 128] = address(ext_call.return_data[0])
                mem[_7313 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7313 + 164] = arg3 / 2
                mem[_7313 + 196] = 64
                mem[_7313 + 228] = mem[_7313]
                idx = 0
                s = _7313 + 32
                t = _7313 + 260
                while idx < mem[_7313]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7313 + (32 * mem[_7313]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10268 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10412 = mem[_10268]
                require mem[_10268] <= test266151307()
                require _10268 + mem[_10268] + 31 < _10268 + return_data.size
                _10556 = mem[_10268 + mem[_10268]]
                if mem[_10268 + mem[_10268]] > test266151307():
                    revert with 0, 65
                if _10268 + ceil32(return_data.size) + ceil32(32 * mem[_10268 + mem[_10268]]) + 1 > test266151307() or ceil32(32 * mem[_10268 + mem[_10268]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10268 + ceil32(return_data.size) + ceil32(32 * mem[_10268 + mem[_10268]]) + 1
                mem[_10268 + ceil32(return_data.size)] = _10556
                require return_data.size >= _10412 + (32 * _10556) + 32
                mem[_10268 + ceil32(return_data.size) + 32 len 32 * _10556] = mem[_10268 + _10412 + 32 len 32 * _10556]
                if _10556 < 1:
                    revert with 0, 17
                if _10556 - 1 >= _10556:
                    revert with 0, 50
                return _7035, mem[(32 * _10556 - 1) + _10268 + ceil32(return_data.size) + 32]
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if not stor3[stor1][address(arg2)]:
                    if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                        if stor1 == stor1:
                            _7655 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_7655]:
                                revert with 0, 50
                            mem[_7655 + 32] = stor1
                            if 1 >= mem[_7655]:
                                revert with 0, 50
                            mem[_7655 + 64] = address(ext_call.return_data[0])
                            mem[_7655 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_7655 + 100] = arg3 / 2
                            mem[_7655 + 132] = 64
                            mem[_7655 + 164] = mem[_7655]
                            idx = 0
                            s = _7655 + 32
                            t = _7655 + 196
                            while idx < mem[_7655]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg2)
                            staticcall arg2.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7655 + (32 * mem[_7655]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10269 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10413 = mem[_10269]
                            require mem[_10269] <= test266151307()
                            require _10269 + mem[_10269] + 31 < _10269 + return_data.size
                            _10557 = mem[_10269 + mem[_10269]]
                            if mem[_10269 + mem[_10269]] > test266151307():
                                revert with 0, 65
                            if _10269 + ceil32(return_data.size) + ceil32(32 * mem[_10269 + mem[_10269]]) + 1 > test266151307() or ceil32(32 * mem[_10269 + mem[_10269]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10269 + ceil32(return_data.size) + ceil32(32 * mem[_10269 + mem[_10269]]) + 1
                            mem[_10269 + ceil32(return_data.size)] = _10557
                            require return_data.size >= _10413 + (32 * _10557) + 32
                            mem[_10269 + ceil32(return_data.size) + 32 len 32 * _10557] = mem[_10269 + _10413 + 32 len 32 * _10557]
                            if _10557 < 1:
                                revert with 0, 17
                            if _10557 - 1 >= _10557:
                                revert with 0, 50
                            return _7035, mem[(32 * _10557 - 1) + _10269 + ceil32(return_data.size) + 32]
                        if stor1 == address(ext_call.return_data[0]):
                            _7788 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_7788]:
                                revert with 0, 50
                            mem[_7788 + 32] = stor1
                            if 1 >= mem[_7788]:
                                revert with 0, 50
                            mem[_7788 + 64] = address(ext_call.return_data[0])
                            mem[_7788 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_7788 + 100] = arg3 / 2
                            mem[_7788 + 132] = 64
                            mem[_7788 + 164] = mem[_7788]
                            idx = 0
                            s = _7788 + 32
                            t = _7788 + 196
                            while idx < mem[_7788]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg2)
                            staticcall arg2.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7788 + (32 * mem[_7788]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10271 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10415 = mem[_10271]
                            require mem[_10271] <= test266151307()
                            require _10271 + mem[_10271] + 31 < _10271 + return_data.size
                            _10559 = mem[_10271 + mem[_10271]]
                            if mem[_10271 + mem[_10271]] > test266151307():
                                revert with 0, 65
                            if _10271 + ceil32(return_data.size) + ceil32(32 * mem[_10271 + mem[_10271]]) + 1 > test266151307() or ceil32(32 * mem[_10271 + mem[_10271]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10271 + ceil32(return_data.size) + ceil32(32 * mem[_10271 + mem[_10271]]) + 1
                            mem[_10271 + ceil32(return_data.size)] = _10559
                            require return_data.size >= _10415 + (32 * _10559) + 32
                            mem[_10271 + ceil32(return_data.size) + 32 len 32 * _10559] = mem[_10271 + _10415 + 32 len 32 * _10559]
                            if _10559 < 1:
                                revert with 0, 17
                            if _10559 - 1 >= _10559:
                                revert with 0, 50
                            return _7035, mem[(32 * _10559 - 1) + _10271 + ceil32(return_data.size) + 32]
                        _7786 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_7786]:
                            revert with 0, 50
                        mem[_7786 + 32] = stor1
                        if 1 >= mem[_7786]:
                            revert with 0, 50
                        mem[_7786 + 64] = stor1
                        if 2 >= mem[_7786]:
                            revert with 0, 50
                        mem[_7786 + 96] = address(ext_call.return_data[0])
                        mem[_7786 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7786 + 132] = arg3 / 2
                        mem[_7786 + 164] = 64
                        mem[_7786 + 196] = mem[_7786]
                        idx = 0
                        s = _7786 + 32
                        t = _7786 + 228
                        while idx < mem[_7786]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7786 + (32 * mem[_7786]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10270 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10414 = mem[_10270]
                        require mem[_10270] <= test266151307()
                        require _10270 + mem[_10270] + 31 < _10270 + return_data.size
                        _10558 = mem[_10270 + mem[_10270]]
                        if mem[_10270 + mem[_10270]] > test266151307():
                            revert with 0, 65
                        if _10270 + ceil32(return_data.size) + ceil32(32 * mem[_10270 + mem[_10270]]) + 1 > test266151307() or ceil32(32 * mem[_10270 + mem[_10270]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10270 + ceil32(return_data.size) + ceil32(32 * mem[_10270 + mem[_10270]]) + 1
                        mem[_10270 + ceil32(return_data.size)] = _10558
                        require return_data.size >= _10414 + (32 * _10558) + 32
                        mem[_10270 + ceil32(return_data.size) + 32 len 32 * _10558] = mem[_10270 + _10414 + 32 len 32 * _10558]
                        if _10558 < 1:
                            revert with 0, 17
                        if _10558 - 1 >= _10558:
                            revert with 0, 50
                        return _7035, mem[(32 * _10558 - 1) + _10270 + ceil32(return_data.size) + 32]
                    _7416 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 160
                    if 0 >= mem[_7416]:
                        revert with 0, 50
                    mem[_7416 + 32] = stor1
                    if 1 >= mem[_7416]:
                        revert with 0, 50
                    mem[_7416 + 64] = stor1
                    if 2 >= mem[_7416]:
                        revert with 0, 50
                    mem[_7416 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    if 3 >= mem[_7416]:
                        revert with 0, 50
                    mem[_7416 + 128] = address(ext_call.return_data[0])
                    mem[_7416 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7416 + 164] = arg3 / 2
                    mem[_7416 + 196] = 64
                    mem[_7416 + 228] = mem[_7416]
                    idx = 0
                    s = _7416 + 32
                    t = _7416 + 260
                    while idx < mem[_7416]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7416 + (32 * mem[_7416]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10272 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10416 = mem[_10272]
                    require mem[_10272] <= test266151307()
                    require _10272 + mem[_10272] + 31 < _10272 + return_data.size
                    _10560 = mem[_10272 + mem[_10272]]
                    if mem[_10272 + mem[_10272]] > test266151307():
                        revert with 0, 65
                    if _10272 + ceil32(return_data.size) + ceil32(32 * mem[_10272 + mem[_10272]]) + 1 > test266151307() or ceil32(32 * mem[_10272 + mem[_10272]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10272 + ceil32(return_data.size) + ceil32(32 * mem[_10272 + mem[_10272]]) + 1
                    mem[_10272 + ceil32(return_data.size)] = _10560
                    require return_data.size >= _10416 + (32 * _10560) + 32
                    mem[_10272 + ceil32(return_data.size) + 32 len 32 * _10560] = mem[_10272 + _10416 + 32 len 32 * _10560]
                    if _10560 < 1:
                        revert with 0, 17
                    if _10560 - 1 >= _10560:
                        revert with 0, 50
                    return _7035, mem[(32 * _10560 - 1) + _10272 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7420 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7420]:
                        revert with 0, 50
                    mem[_7420 + 32] = stor1
                    if 1 >= mem[_7420]:
                        revert with 0, 50
                    mem[_7420 + 64] = stor3[stor1][address(arg2)]
                    if 2 >= mem[_7420]:
                        revert with 0, 50
                    mem[_7420 + 96] = stor1
                    mem[_7420 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7420 + 132] = arg3 / 2
                    mem[_7420 + 164] = 64
                    mem[_7420 + 196] = mem[_7420]
                    idx = 0
                    s = _7420 + 32
                    t = _7420 + 228
                    while idx < mem[_7420]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7420 + (32 * mem[_7420]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10274 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10418 = mem[_10274]
                    require mem[_10274] <= test266151307()
                    require _10274 + mem[_10274] + 31 < _10274 + return_data.size
                    _10562 = mem[_10274 + mem[_10274]]
                    if mem[_10274 + mem[_10274]] > test266151307():
                        revert with 0, 65
                    if _10274 + ceil32(return_data.size) + ceil32(32 * mem[_10274 + mem[_10274]]) + 1 > test266151307() or ceil32(32 * mem[_10274 + mem[_10274]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10274 + ceil32(return_data.size) + ceil32(32 * mem[_10274 + mem[_10274]]) + 1
                    mem[_10274 + ceil32(return_data.size)] = _10562
                    require return_data.size >= _10418 + (32 * _10562) + 32
                    mem[_10274 + ceil32(return_data.size) + 32 len 32 * _10562] = mem[_10274 + _10418 + 32 len 32 * _10562]
                    if _10562 < 1:
                        revert with 0, 17
                    if _10562 - 1 >= _10562:
                        revert with 0, 50
                    return _7035, mem[(32 * _10562 - 1) + _10274 + ceil32(return_data.size) + 32]
                _7418 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7418]:
                    revert with 0, 50
                mem[_7418 + 32] = stor1
                if 1 >= mem[_7418]:
                    revert with 0, 50
                mem[_7418 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7418]:
                    revert with 0, 50
                mem[_7418 + 96] = stor1
                if 3 >= mem[_7418]:
                    revert with 0, 50
                mem[_7418 + 128] = address(ext_call.return_data[0])
                mem[_7418 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7418 + 164] = arg3 / 2
                mem[_7418 + 196] = 64
                mem[_7418 + 228] = mem[_7418]
                idx = 0
                s = _7418 + 32
                t = _7418 + 260
                while idx < mem[_7418]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7418 + (32 * mem[_7418]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10273 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10417 = mem[_10273]
                require mem[_10273] <= test266151307()
                require _10273 + mem[_10273] + 31 < _10273 + return_data.size
                _10561 = mem[_10273 + mem[_10273]]
                if mem[_10273 + mem[_10273]] > test266151307():
                    revert with 0, 65
                if _10273 + ceil32(return_data.size) + ceil32(32 * mem[_10273 + mem[_10273]]) + 1 > test266151307() or ceil32(32 * mem[_10273 + mem[_10273]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10273 + ceil32(return_data.size) + ceil32(32 * mem[_10273 + mem[_10273]]) + 1
                mem[_10273 + ceil32(return_data.size)] = _10561
                require return_data.size >= _10417 + (32 * _10561) + 32
                mem[_10273 + ceil32(return_data.size) + 32 len 32 * _10561] = mem[_10273 + _10417 + 32 len 32 * _10561]
                if _10561 < 1:
                    revert with 0, 17
                if _10561 - 1 >= _10561:
                    revert with 0, 50
                return _7035, mem[(32 * _10561 - 1) + _10273 + ceil32(return_data.size) + 32]
            if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
                _7315 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7315]:
                    revert with 0, 50
                mem[_7315 + 32] = stor1
                if 1 >= mem[_7315]:
                    revert with 0, 50
                mem[_7315 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7315]:
                    revert with 0, 50
                mem[_7315 + 96] = address(ext_call.return_data[0])
                mem[_7315 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7315 + 132] = arg3 / 2
                mem[_7315 + 164] = 64
                mem[_7315 + 196] = mem[_7315]
                idx = 0
                s = _7315 + 32
                t = _7315 + 228
                while idx < mem[_7315]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7315 + (32 * mem[_7315]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10275 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10419 = mem[_10275]
                require mem[_10275] <= test266151307()
                require _10275 + mem[_10275] + 31 < _10275 + return_data.size
                _10563 = mem[_10275 + mem[_10275]]
                if mem[_10275 + mem[_10275]] > test266151307():
                    revert with 0, 65
                if _10275 + ceil32(return_data.size) + ceil32(32 * mem[_10275 + mem[_10275]]) + 1 > test266151307() or ceil32(32 * mem[_10275 + mem[_10275]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10275 + ceil32(return_data.size) + ceil32(32 * mem[_10275 + mem[_10275]]) + 1
                mem[_10275 + ceil32(return_data.size)] = _10563
                require return_data.size >= _10419 + (32 * _10563) + 32
                mem[_10275 + ceil32(return_data.size) + 32 len 32 * _10563] = mem[_10275 + _10419 + 32 len 32 * _10563]
                if _10563 < 1:
                    revert with 0, 17
                if _10563 - 1 >= _10563:
                    revert with 0, 50
                return _7035, mem[(32 * _10563 - 1) + _10275 + ceil32(return_data.size) + 32]
            _7317 = mem[64]
            mem[mem[64]] = 5
            mem[64] = mem[64] + 192
            if 0 >= mem[_7317]:
                revert with 0, 50
            mem[_7317 + 32] = stor1
            if 1 >= mem[_7317]:
                revert with 0, 50
            mem[_7317 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7317]:
                revert with 0, 50
            mem[_7317 + 96] = stor1
            if 3 >= mem[_7317]:
                revert with 0, 50
            mem[_7317 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 4 >= mem[_7317]:
                revert with 0, 50
            mem[_7317 + 160] = address(ext_call.return_data[0])
            mem[_7317 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7317 + 196] = arg3 / 2
            mem[_7317 + 228] = 64
            mem[_7317 + 260] = mem[_7317]
            idx = 0
            s = _7317 + 32
            t = _7317 + 292
            while idx < mem[_7317]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7317 + (32 * mem[_7317]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10276 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10420 = mem[_10276]
            require mem[_10276] <= test266151307()
            require _10276 + mem[_10276] + 31 < _10276 + return_data.size
            _10564 = mem[_10276 + mem[_10276]]
            if mem[_10276 + mem[_10276]] > test266151307():
                revert with 0, 65
            if _10276 + ceil32(return_data.size) + ceil32(32 * mem[_10276 + mem[_10276]]) + 1 > test266151307() or ceil32(32 * mem[_10276 + mem[_10276]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10276 + ceil32(return_data.size) + ceil32(32 * mem[_10276 + mem[_10276]]) + 1
            mem[_10276 + ceil32(return_data.size)] = _10564
            require return_data.size >= _10420 + (32 * _10564) + 32
            mem[_10276 + ceil32(return_data.size) + 32 len 32 * _10564] = mem[_10276 + _10420 + 32 len 32 * _10564]
            if _10564 < 1:
                revert with 0, 17
            if _10564 - 1 >= _10564:
                revert with 0, 50
            return _7035, mem[(32 * _10564 - 1) + _10276 + ceil32(return_data.size) + 32]
        mem[(2 * ceil32(return_data.size)) + 96] = 5
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
        mem[(2 * ceil32(return_data.size)) + 192] = stor1
        mem[(2 * ceil32(return_data.size)) + 224] = stor3[address(ext_call.return_data[0])][address(arg2)]
        mem[(2 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = arg3 / 2
        mem[(2 * ceil32(return_data.size)) + 324] = 64
        mem[(2 * ceil32(return_data.size)) + 356] = 5
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 5:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args Mask(255, 1, arg3), Array(len=5, data=mem[(2 * ceil32(return_data.size)) + 388 len 160])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _3760 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
        _3808 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
        mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        require return_data.size >= _3760 + (32 * _3808) + 32
        mem[(4 * ceil32(return_data.size)) + 320 len 32 * _3808] = mem[(2 * ceil32(return_data.size)) + _3760 + 320 len 32 * _3808]
        if _3808 < 1:
            revert with 0, 17
        if _3808 - 1 >= _3808:
            revert with 0, 50
        _7036 = mem[(32 * _3808 - 1) + (4 * ceil32(return_data.size)) + 320]
        mem[0] = arg2
        mem[32] = sha3(address(ext_call.return_data[0]), 3)
        if not stor3[stor1][address(arg2)]:
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if stor1 == stor1:
                    _7521 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7521]:
                        revert with 0, 50
                    mem[_7521 + 32] = stor1
                    if 1 >= mem[_7521]:
                        revert with 0, 50
                    mem[_7521 + 64] = address(ext_call.return_data[0])
                    mem[_7521 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7521 + 100] = arg3 / 2
                    mem[_7521 + 132] = 64
                    mem[_7521 + 164] = mem[_7521]
                    idx = 0
                    s = _7521 + 32
                    t = _7521 + 196
                    while idx < mem[_7521]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7521 + (32 * mem[_7521]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10277 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10421 = mem[_10277]
                    require mem[_10277] <= test266151307()
                    require _10277 + mem[_10277] + 31 < _10277 + return_data.size
                    _10565 = mem[_10277 + mem[_10277]]
                    if mem[_10277 + mem[_10277]] > test266151307():
                        revert with 0, 65
                    if _10277 + ceil32(return_data.size) + ceil32(32 * mem[_10277 + mem[_10277]]) + 1 > test266151307() or ceil32(32 * mem[_10277 + mem[_10277]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10277 + ceil32(return_data.size) + ceil32(32 * mem[_10277 + mem[_10277]]) + 1
                    mem[_10277 + ceil32(return_data.size)] = _10565
                    require return_data.size >= _10421 + (32 * _10565) + 32
                    mem[_10277 + ceil32(return_data.size) + 32 len 32 * _10565] = mem[_10277 + _10421 + 32 len 32 * _10565]
                    if _10565 < 1:
                        revert with 0, 17
                    if _10565 - 1 >= _10565:
                        revert with 0, 50
                    return _7036, mem[(32 * _10565 - 1) + _10277 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7664 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7664]:
                        revert with 0, 50
                    mem[_7664 + 32] = stor1
                    if 1 >= mem[_7664]:
                        revert with 0, 50
                    mem[_7664 + 64] = address(ext_call.return_data[0])
                    mem[_7664 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7664 + 100] = arg3 / 2
                    mem[_7664 + 132] = 64
                    mem[_7664 + 164] = mem[_7664]
                    idx = 0
                    s = _7664 + 32
                    t = _7664 + 196
                    while idx < mem[_7664]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7664 + (32 * mem[_7664]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10279 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10423 = mem[_10279]
                    require mem[_10279] <= test266151307()
                    require _10279 + mem[_10279] + 31 < _10279 + return_data.size
                    _10567 = mem[_10279 + mem[_10279]]
                    if mem[_10279 + mem[_10279]] > test266151307():
                        revert with 0, 65
                    if _10279 + ceil32(return_data.size) + ceil32(32 * mem[_10279 + mem[_10279]]) + 1 > test266151307() or ceil32(32 * mem[_10279 + mem[_10279]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10279 + ceil32(return_data.size) + ceil32(32 * mem[_10279 + mem[_10279]]) + 1
                    mem[_10279 + ceil32(return_data.size)] = _10567
                    require return_data.size >= _10423 + (32 * _10567) + 32
                    mem[_10279 + ceil32(return_data.size) + 32 len 32 * _10567] = mem[_10279 + _10423 + 32 len 32 * _10567]
                    if _10567 < 1:
                        revert with 0, 17
                    if _10567 - 1 >= _10567:
                        revert with 0, 50
                    return _7036, mem[(32 * _10567 - 1) + _10279 + ceil32(return_data.size) + 32]
                _7662 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7662]:
                    revert with 0, 50
                mem[_7662 + 32] = stor1
                if 1 >= mem[_7662]:
                    revert with 0, 50
                mem[_7662 + 64] = stor1
                if 2 >= mem[_7662]:
                    revert with 0, 50
                mem[_7662 + 96] = address(ext_call.return_data[0])
                mem[_7662 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7662 + 132] = arg3 / 2
                mem[_7662 + 164] = 64
                mem[_7662 + 196] = mem[_7662]
                idx = 0
                s = _7662 + 32
                t = _7662 + 228
                while idx < mem[_7662]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7662 + (32 * mem[_7662]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10278 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10422 = mem[_10278]
                require mem[_10278] <= test266151307()
                require _10278 + mem[_10278] + 31 < _10278 + return_data.size
                _10566 = mem[_10278 + mem[_10278]]
                if mem[_10278 + mem[_10278]] > test266151307():
                    revert with 0, 65
                if _10278 + ceil32(return_data.size) + ceil32(32 * mem[_10278 + mem[_10278]]) + 1 > test266151307() or ceil32(32 * mem[_10278 + mem[_10278]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10278 + ceil32(return_data.size) + ceil32(32 * mem[_10278 + mem[_10278]]) + 1
                mem[_10278 + ceil32(return_data.size)] = _10566
                require return_data.size >= _10422 + (32 * _10566) + 32
                mem[_10278 + ceil32(return_data.size) + 32 len 32 * _10566] = mem[_10278 + _10422 + 32 len 32 * _10566]
                if _10566 < 1:
                    revert with 0, 17
                if _10566 - 1 >= _10566:
                    revert with 0, 50
                return _7036, mem[(32 * _10566 - 1) + _10278 + ceil32(return_data.size) + 32]
            _7319 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7319]:
                revert with 0, 50
            mem[_7319 + 32] = stor1
            if 1 >= mem[_7319]:
                revert with 0, 50
            mem[_7319 + 64] = stor1
            if 2 >= mem[_7319]:
                revert with 0, 50
            mem[_7319 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 3 >= mem[_7319]:
                revert with 0, 50
            mem[_7319 + 128] = address(ext_call.return_data[0])
            mem[_7319 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7319 + 164] = arg3 / 2
            mem[_7319 + 196] = 64
            mem[_7319 + 228] = mem[_7319]
            idx = 0
            s = _7319 + 32
            t = _7319 + 260
            while idx < mem[_7319]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7319 + (32 * mem[_7319]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10280 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10424 = mem[_10280]
            require mem[_10280] <= test266151307()
            require _10280 + mem[_10280] + 31 < _10280 + return_data.size
            _10568 = mem[_10280 + mem[_10280]]
            if mem[_10280 + mem[_10280]] > test266151307():
                revert with 0, 65
            if _10280 + ceil32(return_data.size) + ceil32(32 * mem[_10280 + mem[_10280]]) + 1 > test266151307() or ceil32(32 * mem[_10280 + mem[_10280]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10280 + ceil32(return_data.size) + ceil32(32 * mem[_10280 + mem[_10280]]) + 1
            mem[_10280 + ceil32(return_data.size)] = _10568
            require return_data.size >= _10424 + (32 * _10568) + 32
            mem[_10280 + ceil32(return_data.size) + 32 len 32 * _10568] = mem[_10280 + _10424 + 32 len 32 * _10568]
            if _10568 < 1:
                revert with 0, 17
            if _10568 - 1 >= _10568:
                revert with 0, 50
            return _7036, mem[(32 * _10568 - 1) + _10280 + ceil32(return_data.size) + 32]
        if not stor3[address(ext_call.return_data[0])][address(arg2)]:
            if not stor3[stor1][address(arg2)]:
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor1 == stor1:
                        _7667 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7667]:
                            revert with 0, 50
                        mem[_7667 + 32] = stor1
                        if 1 >= mem[_7667]:
                            revert with 0, 50
                        mem[_7667 + 64] = address(ext_call.return_data[0])
                        mem[_7667 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7667 + 100] = arg3 / 2
                        mem[_7667 + 132] = 64
                        mem[_7667 + 164] = mem[_7667]
                        idx = 0
                        s = _7667 + 32
                        t = _7667 + 196
                        while idx < mem[_7667]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7667 + (32 * mem[_7667]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10281 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10425 = mem[_10281]
                        require mem[_10281] <= test266151307()
                        require _10281 + mem[_10281] + 31 < _10281 + return_data.size
                        _10569 = mem[_10281 + mem[_10281]]
                        if mem[_10281 + mem[_10281]] > test266151307():
                            revert with 0, 65
                        if _10281 + ceil32(return_data.size) + ceil32(32 * mem[_10281 + mem[_10281]]) + 1 > test266151307() or ceil32(32 * mem[_10281 + mem[_10281]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10281 + ceil32(return_data.size) + ceil32(32 * mem[_10281 + mem[_10281]]) + 1
                        mem[_10281 + ceil32(return_data.size)] = _10569
                        require return_data.size >= _10425 + (32 * _10569) + 32
                        mem[_10281 + ceil32(return_data.size) + 32 len 32 * _10569] = mem[_10281 + _10425 + 32 len 32 * _10569]
                        if _10569 < 1:
                            revert with 0, 17
                        if _10569 - 1 >= _10569:
                            revert with 0, 50
                        return _7036, mem[(32 * _10569 - 1) + _10281 + ceil32(return_data.size) + 32]
                    if stor1 == address(ext_call.return_data[0]):
                        _7799 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7799]:
                            revert with 0, 50
                        mem[_7799 + 32] = stor1
                        if 1 >= mem[_7799]:
                            revert with 0, 50
                        mem[_7799 + 64] = address(ext_call.return_data[0])
                        mem[_7799 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7799 + 100] = arg3 / 2
                        mem[_7799 + 132] = 64
                        mem[_7799 + 164] = mem[_7799]
                        idx = 0
                        s = _7799 + 32
                        t = _7799 + 196
                        while idx < mem[_7799]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7799 + (32 * mem[_7799]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10283 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10427 = mem[_10283]
                        require mem[_10283] <= test266151307()
                        require _10283 + mem[_10283] + 31 < _10283 + return_data.size
                        _10571 = mem[_10283 + mem[_10283]]
                        if mem[_10283 + mem[_10283]] > test266151307():
                            revert with 0, 65
                        if _10283 + ceil32(return_data.size) + ceil32(32 * mem[_10283 + mem[_10283]]) + 1 > test266151307() or ceil32(32 * mem[_10283 + mem[_10283]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10283 + ceil32(return_data.size) + ceil32(32 * mem[_10283 + mem[_10283]]) + 1
                        mem[_10283 + ceil32(return_data.size)] = _10571
                        require return_data.size >= _10427 + (32 * _10571) + 32
                        mem[_10283 + ceil32(return_data.size) + 32 len 32 * _10571] = mem[_10283 + _10427 + 32 len 32 * _10571]
                        if _10571 < 1:
                            revert with 0, 17
                        if _10571 - 1 >= _10571:
                            revert with 0, 50
                        return _7036, mem[(32 * _10571 - 1) + _10283 + ceil32(return_data.size) + 32]
                    _7797 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7797]:
                        revert with 0, 50
                    mem[_7797 + 32] = stor1
                    if 1 >= mem[_7797]:
                        revert with 0, 50
                    mem[_7797 + 64] = stor1
                    if 2 >= mem[_7797]:
                        revert with 0, 50
                    mem[_7797 + 96] = address(ext_call.return_data[0])
                    mem[_7797 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7797 + 132] = arg3 / 2
                    mem[_7797 + 164] = 64
                    mem[_7797 + 196] = mem[_7797]
                    idx = 0
                    s = _7797 + 32
                    t = _7797 + 228
                    while idx < mem[_7797]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7797 + (32 * mem[_7797]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10282 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10426 = mem[_10282]
                    require mem[_10282] <= test266151307()
                    require _10282 + mem[_10282] + 31 < _10282 + return_data.size
                    _10570 = mem[_10282 + mem[_10282]]
                    if mem[_10282 + mem[_10282]] > test266151307():
                        revert with 0, 65
                    if _10282 + ceil32(return_data.size) + ceil32(32 * mem[_10282 + mem[_10282]]) + 1 > test266151307() or ceil32(32 * mem[_10282 + mem[_10282]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10282 + ceil32(return_data.size) + ceil32(32 * mem[_10282 + mem[_10282]]) + 1
                    mem[_10282 + ceil32(return_data.size)] = _10570
                    require return_data.size >= _10426 + (32 * _10570) + 32
                    mem[_10282 + ceil32(return_data.size) + 32 len 32 * _10570] = mem[_10282 + _10426 + 32 len 32 * _10570]
                    if _10570 < 1:
                        revert with 0, 17
                    if _10570 - 1 >= _10570:
                        revert with 0, 50
                    return _7036, mem[(32 * _10570 - 1) + _10282 + ceil32(return_data.size) + 32]
                _7425 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7425]:
                    revert with 0, 50
                mem[_7425 + 32] = stor1
                if 1 >= mem[_7425]:
                    revert with 0, 50
                mem[_7425 + 64] = stor1
                if 2 >= mem[_7425]:
                    revert with 0, 50
                mem[_7425 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                if 3 >= mem[_7425]:
                    revert with 0, 50
                mem[_7425 + 128] = address(ext_call.return_data[0])
                mem[_7425 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7425 + 164] = arg3 / 2
                mem[_7425 + 196] = 64
                mem[_7425 + 228] = mem[_7425]
                idx = 0
                s = _7425 + 32
                t = _7425 + 260
                while idx < mem[_7425]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7425 + (32 * mem[_7425]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10284 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10428 = mem[_10284]
                require mem[_10284] <= test266151307()
                require _10284 + mem[_10284] + 31 < _10284 + return_data.size
                _10572 = mem[_10284 + mem[_10284]]
                if mem[_10284 + mem[_10284]] > test266151307():
                    revert with 0, 65
                if _10284 + ceil32(return_data.size) + ceil32(32 * mem[_10284 + mem[_10284]]) + 1 > test266151307() or ceil32(32 * mem[_10284 + mem[_10284]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10284 + ceil32(return_data.size) + ceil32(32 * mem[_10284 + mem[_10284]]) + 1
                mem[_10284 + ceil32(return_data.size)] = _10572
                require return_data.size >= _10428 + (32 * _10572) + 32
                mem[_10284 + ceil32(return_data.size) + 32 len 32 * _10572] = mem[_10284 + _10428 + 32 len 32 * _10572]
                if _10572 < 1:
                    revert with 0, 17
                if _10572 - 1 >= _10572:
                    revert with 0, 50
                return _7036, mem[(32 * _10572 - 1) + _10284 + ceil32(return_data.size) + 32]
            if stor1 == address(ext_call.return_data[0]):
                _7429 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7429]:
                    revert with 0, 50
                mem[_7429 + 32] = stor1
                if 1 >= mem[_7429]:
                    revert with 0, 50
                mem[_7429 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7429]:
                    revert with 0, 50
                mem[_7429 + 96] = stor1
                mem[_7429 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7429 + 132] = arg3 / 2
                mem[_7429 + 164] = 64
                mem[_7429 + 196] = mem[_7429]
                idx = 0
                s = _7429 + 32
                t = _7429 + 228
                while idx < mem[_7429]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7429 + (32 * mem[_7429]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10286 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10430 = mem[_10286]
                require mem[_10286] <= test266151307()
                require _10286 + mem[_10286] + 31 < _10286 + return_data.size
                _10574 = mem[_10286 + mem[_10286]]
                if mem[_10286 + mem[_10286]] > test266151307():
                    revert with 0, 65
                if _10286 + ceil32(return_data.size) + ceil32(32 * mem[_10286 + mem[_10286]]) + 1 > test266151307() or ceil32(32 * mem[_10286 + mem[_10286]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10286 + ceil32(return_data.size) + ceil32(32 * mem[_10286 + mem[_10286]]) + 1
                mem[_10286 + ceil32(return_data.size)] = _10574
                require return_data.size >= _10430 + (32 * _10574) + 32
                mem[_10286 + ceil32(return_data.size) + 32 len 32 * _10574] = mem[_10286 + _10430 + 32 len 32 * _10574]
                if _10574 < 1:
                    revert with 0, 17
                if _10574 - 1 >= _10574:
                    revert with 0, 50
                return _7036, mem[(32 * _10574 - 1) + _10286 + ceil32(return_data.size) + 32]
            _7427 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7427]:
                revert with 0, 50
            mem[_7427 + 32] = stor1
            if 1 >= mem[_7427]:
                revert with 0, 50
            mem[_7427 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7427]:
                revert with 0, 50
            mem[_7427 + 96] = stor1
            if 3 >= mem[_7427]:
                revert with 0, 50
            mem[_7427 + 128] = address(ext_call.return_data[0])
            mem[_7427 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7427 + 164] = arg3 / 2
            mem[_7427 + 196] = 64
            mem[_7427 + 228] = mem[_7427]
            idx = 0
            s = _7427 + 32
            t = _7427 + 260
            while idx < mem[_7427]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7427 + (32 * mem[_7427]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10285 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10429 = mem[_10285]
            require mem[_10285] <= test266151307()
            require _10285 + mem[_10285] + 31 < _10285 + return_data.size
            _10573 = mem[_10285 + mem[_10285]]
            if mem[_10285 + mem[_10285]] > test266151307():
                revert with 0, 65
            if _10285 + ceil32(return_data.size) + ceil32(32 * mem[_10285 + mem[_10285]]) + 1 > test266151307() or ceil32(32 * mem[_10285 + mem[_10285]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10285 + ceil32(return_data.size) + ceil32(32 * mem[_10285 + mem[_10285]]) + 1
            mem[_10285 + ceil32(return_data.size)] = _10573
            require return_data.size >= _10429 + (32 * _10573) + 32
            mem[_10285 + ceil32(return_data.size) + 32 len 32 * _10573] = mem[_10285 + _10429 + 32 len 32 * _10573]
            if _10573 < 1:
                revert with 0, 17
            if _10573 - 1 >= _10573:
                revert with 0, 50
            return _7036, mem[(32 * _10573 - 1) + _10285 + ceil32(return_data.size) + 32]
        if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
            _7321 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_7321]:
                revert with 0, 50
            mem[_7321 + 32] = stor1
            if 1 >= mem[_7321]:
                revert with 0, 50
            mem[_7321 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7321]:
                revert with 0, 50
            mem[_7321 + 96] = address(ext_call.return_data[0])
            mem[_7321 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7321 + 132] = arg3 / 2
            mem[_7321 + 164] = 64
            mem[_7321 + 196] = mem[_7321]
            idx = 0
            s = _7321 + 32
            t = _7321 + 228
            while idx < mem[_7321]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7321 + (32 * mem[_7321]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10287 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10431 = mem[_10287]
            require mem[_10287] <= test266151307()
            require _10287 + mem[_10287] + 31 < _10287 + return_data.size
            _10575 = mem[_10287 + mem[_10287]]
            if mem[_10287 + mem[_10287]] > test266151307():
                revert with 0, 65
            if _10287 + ceil32(return_data.size) + ceil32(32 * mem[_10287 + mem[_10287]]) + 1 > test266151307() or ceil32(32 * mem[_10287 + mem[_10287]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10287 + ceil32(return_data.size) + ceil32(32 * mem[_10287 + mem[_10287]]) + 1
            mem[_10287 + ceil32(return_data.size)] = _10575
            require return_data.size >= _10431 + (32 * _10575) + 32
            mem[_10287 + ceil32(return_data.size) + 32 len 32 * _10575] = mem[_10287 + _10431 + 32 len 32 * _10575]
            if _10575 < 1:
                revert with 0, 17
            if _10575 - 1 >= _10575:
                revert with 0, 50
            return _7036, mem[(32 * _10575 - 1) + _10287 + ceil32(return_data.size) + 32]
        _7323 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 192
        if 0 >= mem[_7323]:
            revert with 0, 50
        mem[_7323 + 32] = stor1
        if 1 >= mem[_7323]:
            revert with 0, 50
        mem[_7323 + 64] = stor3[stor1][address(arg2)]
        if 2 >= mem[_7323]:
            revert with 0, 50
        mem[_7323 + 96] = stor1
        if 3 >= mem[_7323]:
            revert with 0, 50
        mem[_7323 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
        if 4 >= mem[_7323]:
            revert with 0, 50
        mem[_7323 + 160] = address(ext_call.return_data[0])
        mem[_7323 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_7323 + 196] = arg3 / 2
        mem[_7323 + 228] = 64
        mem[_7323 + 260] = mem[_7323]
        idx = 0
        s = _7323 + 32
        t = _7323 + 292
        while idx < mem[_7323]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _7323 + (32 * mem[_7323]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10288 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10432 = mem[_10288]
        require mem[_10288] <= test266151307()
        require _10288 + mem[_10288] + 31 < _10288 + return_data.size
        _10576 = mem[_10288 + mem[_10288]]
        if mem[_10288 + mem[_10288]] > test266151307():
            revert with 0, 65
        if _10288 + ceil32(return_data.size) + ceil32(32 * mem[_10288 + mem[_10288]]) + 1 > test266151307() or ceil32(32 * mem[_10288 + mem[_10288]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _10288 + ceil32(return_data.size) + ceil32(32 * mem[_10288 + mem[_10288]]) + 1
        mem[_10288 + ceil32(return_data.size)] = _10576
        require return_data.size >= _10432 + (32 * _10576) + 32
        mem[_10288 + ceil32(return_data.size) + 32 len 32 * _10576] = mem[_10288 + _10432 + 32 len 32 * _10576]
        if _10576 < 1:
            revert with 0, 17
        if _10576 - 1 >= _10576:
            revert with 0, 50
        return _7036, mem[(32 * _10576 - 1) + _10288 + ceil32(return_data.size) + 32]
    if stor3[stor1][address(arg2)]:
        if stor1 == address(ext_call.return_data[0]):
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
            mem[(2 * ceil32(return_data.size)) + 192] = stor1
            mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
            require ext_code.size(arg2)
            staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _3758 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _3806 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require return_data.size >= _3758 + (32 * _3806) + 32
            mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3806] = mem[(2 * ceil32(return_data.size)) + _3758 + 256 len 32 * _3806]
            if _3806 < 1:
                revert with 0, 17
            if _3806 - 1 >= _3806:
                revert with 0, 50
            _7034 = mem[(32 * _3806 - 1) + (4 * ceil32(return_data.size)) + 256]
            mem[0] = arg2
            mem[32] = sha3(address(ext_call.return_data[0]), 3)
            if not stor3[stor1][address(arg2)]:
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor1 == stor1:
                        _7505 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7505]:
                            revert with 0, 50
                        mem[_7505 + 32] = stor1
                        if 1 >= mem[_7505]:
                            revert with 0, 50
                        mem[_7505 + 64] = address(ext_call.return_data[0])
                        mem[_7505 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7505 + 100] = arg3 / 2
                        mem[_7505 + 132] = 64
                        mem[_7505 + 164] = mem[_7505]
                        idx = 0
                        s = _7505 + 32
                        t = _7505 + 196
                        while idx < mem[_7505]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7505 + (32 * mem[_7505]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10253 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10397 = mem[_10253]
                        require mem[_10253] <= test266151307()
                        require _10253 + mem[_10253] + 31 < _10253 + return_data.size
                        _10541 = mem[_10253 + mem[_10253]]
                        if mem[_10253 + mem[_10253]] > test266151307():
                            revert with 0, 65
                        if _10253 + ceil32(return_data.size) + ceil32(32 * mem[_10253 + mem[_10253]]) + 1 > test266151307() or ceil32(32 * mem[_10253 + mem[_10253]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10253 + ceil32(return_data.size) + ceil32(32 * mem[_10253 + mem[_10253]]) + 1
                        mem[_10253 + ceil32(return_data.size)] = _10541
                        require return_data.size >= _10397 + (32 * _10541) + 32
                        mem[_10253 + ceil32(return_data.size) + 32 len 32 * _10541] = mem[_10253 + _10397 + 32 len 32 * _10541]
                        if _10541 < 1:
                            revert with 0, 17
                        if _10541 - 1 >= _10541:
                            revert with 0, 50
                        return _7034, mem[(32 * _10541 - 1) + _10253 + ceil32(return_data.size) + 32]
                    if stor1 == address(ext_call.return_data[0]):
                        _7640 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7640]:
                            revert with 0, 50
                        mem[_7640 + 32] = stor1
                        if 1 >= mem[_7640]:
                            revert with 0, 50
                        mem[_7640 + 64] = address(ext_call.return_data[0])
                        mem[_7640 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7640 + 100] = arg3 / 2
                        mem[_7640 + 132] = 64
                        mem[_7640 + 164] = mem[_7640]
                        idx = 0
                        s = _7640 + 32
                        t = _7640 + 196
                        while idx < mem[_7640]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7640 + (32 * mem[_7640]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10255 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10399 = mem[_10255]
                        require mem[_10255] <= test266151307()
                        require _10255 + mem[_10255] + 31 < _10255 + return_data.size
                        _10543 = mem[_10255 + mem[_10255]]
                        if mem[_10255 + mem[_10255]] > test266151307():
                            revert with 0, 65
                        if _10255 + ceil32(return_data.size) + ceil32(32 * mem[_10255 + mem[_10255]]) + 1 > test266151307() or ceil32(32 * mem[_10255 + mem[_10255]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10255 + ceil32(return_data.size) + ceil32(32 * mem[_10255 + mem[_10255]]) + 1
                        mem[_10255 + ceil32(return_data.size)] = _10543
                        require return_data.size >= _10399 + (32 * _10543) + 32
                        mem[_10255 + ceil32(return_data.size) + 32 len 32 * _10543] = mem[_10255 + _10399 + 32 len 32 * _10543]
                        if _10543 < 1:
                            revert with 0, 17
                        if _10543 - 1 >= _10543:
                            revert with 0, 50
                        return _7034, mem[(32 * _10543 - 1) + _10255 + ceil32(return_data.size) + 32]
                    _7638 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7638]:
                        revert with 0, 50
                    mem[_7638 + 32] = stor1
                    if 1 >= mem[_7638]:
                        revert with 0, 50
                    mem[_7638 + 64] = stor1
                    if 2 >= mem[_7638]:
                        revert with 0, 50
                    mem[_7638 + 96] = address(ext_call.return_data[0])
                    mem[_7638 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7638 + 132] = arg3 / 2
                    mem[_7638 + 164] = 64
                    mem[_7638 + 196] = mem[_7638]
                    idx = 0
                    s = _7638 + 32
                    t = _7638 + 228
                    while idx < mem[_7638]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7638 + (32 * mem[_7638]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10254 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10398 = mem[_10254]
                    require mem[_10254] <= test266151307()
                    require _10254 + mem[_10254] + 31 < _10254 + return_data.size
                    _10542 = mem[_10254 + mem[_10254]]
                    if mem[_10254 + mem[_10254]] > test266151307():
                        revert with 0, 65
                    if _10254 + ceil32(return_data.size) + ceil32(32 * mem[_10254 + mem[_10254]]) + 1 > test266151307() or ceil32(32 * mem[_10254 + mem[_10254]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10254 + ceil32(return_data.size) + ceil32(32 * mem[_10254 + mem[_10254]]) + 1
                    mem[_10254 + ceil32(return_data.size)] = _10542
                    require return_data.size >= _10398 + (32 * _10542) + 32
                    mem[_10254 + ceil32(return_data.size) + 32 len 32 * _10542] = mem[_10254 + _10398 + 32 len 32 * _10542]
                    if _10542 < 1:
                        revert with 0, 17
                    if _10542 - 1 >= _10542:
                        revert with 0, 50
                    return _7034, mem[(32 * _10542 - 1) + _10254 + ceil32(return_data.size) + 32]
                _7307 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7307]:
                    revert with 0, 50
                mem[_7307 + 32] = stor1
                if 1 >= mem[_7307]:
                    revert with 0, 50
                mem[_7307 + 64] = stor1
                if 2 >= mem[_7307]:
                    revert with 0, 50
                mem[_7307 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                if 3 >= mem[_7307]:
                    revert with 0, 50
                mem[_7307 + 128] = address(ext_call.return_data[0])
                mem[_7307 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7307 + 164] = arg3 / 2
                mem[_7307 + 196] = 64
                mem[_7307 + 228] = mem[_7307]
                idx = 0
                s = _7307 + 32
                t = _7307 + 260
                while idx < mem[_7307]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7307 + (32 * mem[_7307]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10256 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10400 = mem[_10256]
                require mem[_10256] <= test266151307()
                require _10256 + mem[_10256] + 31 < _10256 + return_data.size
                _10544 = mem[_10256 + mem[_10256]]
                if mem[_10256 + mem[_10256]] > test266151307():
                    revert with 0, 65
                if _10256 + ceil32(return_data.size) + ceil32(32 * mem[_10256 + mem[_10256]]) + 1 > test266151307() or ceil32(32 * mem[_10256 + mem[_10256]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10256 + ceil32(return_data.size) + ceil32(32 * mem[_10256 + mem[_10256]]) + 1
                mem[_10256 + ceil32(return_data.size)] = _10544
                require return_data.size >= _10400 + (32 * _10544) + 32
                mem[_10256 + ceil32(return_data.size) + 32 len 32 * _10544] = mem[_10256 + _10400 + 32 len 32 * _10544]
                if _10544 < 1:
                    revert with 0, 17
                if _10544 - 1 >= _10544:
                    revert with 0, 50
                return _7034, mem[(32 * _10544 - 1) + _10256 + ceil32(return_data.size) + 32]
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if not stor3[stor1][address(arg2)]:
                    if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                        if stor1 == stor1:
                            _7643 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_7643]:
                                revert with 0, 50
                            mem[_7643 + 32] = stor1
                            if 1 >= mem[_7643]:
                                revert with 0, 50
                            mem[_7643 + 64] = address(ext_call.return_data[0])
                            mem[_7643 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_7643 + 100] = arg3 / 2
                            mem[_7643 + 132] = 64
                            mem[_7643 + 164] = mem[_7643]
                            idx = 0
                            s = _7643 + 32
                            t = _7643 + 196
                            while idx < mem[_7643]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg2)
                            staticcall arg2.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7643 + (32 * mem[_7643]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10257 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10401 = mem[_10257]
                            require mem[_10257] <= test266151307()
                            require _10257 + mem[_10257] + 31 < _10257 + return_data.size
                            _10545 = mem[_10257 + mem[_10257]]
                            if mem[_10257 + mem[_10257]] > test266151307():
                                revert with 0, 65
                            if _10257 + ceil32(return_data.size) + ceil32(32 * mem[_10257 + mem[_10257]]) + 1 > test266151307() or ceil32(32 * mem[_10257 + mem[_10257]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10257 + ceil32(return_data.size) + ceil32(32 * mem[_10257 + mem[_10257]]) + 1
                            mem[_10257 + ceil32(return_data.size)] = _10545
                            require return_data.size >= _10401 + (32 * _10545) + 32
                            mem[_10257 + ceil32(return_data.size) + 32 len 32 * _10545] = mem[_10257 + _10401 + 32 len 32 * _10545]
                            if _10545 < 1:
                                revert with 0, 17
                            if _10545 - 1 >= _10545:
                                revert with 0, 50
                            return _7034, mem[(32 * _10545 - 1) + _10257 + ceil32(return_data.size) + 32]
                        if stor1 == address(ext_call.return_data[0]):
                            _7777 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_7777]:
                                revert with 0, 50
                            mem[_7777 + 32] = stor1
                            if 1 >= mem[_7777]:
                                revert with 0, 50
                            mem[_7777 + 64] = address(ext_call.return_data[0])
                            mem[_7777 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_7777 + 100] = arg3 / 2
                            mem[_7777 + 132] = 64
                            mem[_7777 + 164] = mem[_7777]
                            idx = 0
                            s = _7777 + 32
                            t = _7777 + 196
                            while idx < mem[_7777]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg2)
                            staticcall arg2.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7777 + (32 * mem[_7777]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10259 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10403 = mem[_10259]
                            require mem[_10259] <= test266151307()
                            require _10259 + mem[_10259] + 31 < _10259 + return_data.size
                            _10547 = mem[_10259 + mem[_10259]]
                            if mem[_10259 + mem[_10259]] > test266151307():
                                revert with 0, 65
                            if _10259 + ceil32(return_data.size) + ceil32(32 * mem[_10259 + mem[_10259]]) + 1 > test266151307() or ceil32(32 * mem[_10259 + mem[_10259]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10259 + ceil32(return_data.size) + ceil32(32 * mem[_10259 + mem[_10259]]) + 1
                            mem[_10259 + ceil32(return_data.size)] = _10547
                            require return_data.size >= _10403 + (32 * _10547) + 32
                            mem[_10259 + ceil32(return_data.size) + 32 len 32 * _10547] = mem[_10259 + _10403 + 32 len 32 * _10547]
                            if _10547 < 1:
                                revert with 0, 17
                            if _10547 - 1 >= _10547:
                                revert with 0, 50
                            return _7034, mem[(32 * _10547 - 1) + _10259 + ceil32(return_data.size) + 32]
                        _7775 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_7775]:
                            revert with 0, 50
                        mem[_7775 + 32] = stor1
                        if 1 >= mem[_7775]:
                            revert with 0, 50
                        mem[_7775 + 64] = stor1
                        if 2 >= mem[_7775]:
                            revert with 0, 50
                        mem[_7775 + 96] = address(ext_call.return_data[0])
                        mem[_7775 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7775 + 132] = arg3 / 2
                        mem[_7775 + 164] = 64
                        mem[_7775 + 196] = mem[_7775]
                        idx = 0
                        s = _7775 + 32
                        t = _7775 + 228
                        while idx < mem[_7775]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7775 + (32 * mem[_7775]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10258 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10402 = mem[_10258]
                        require mem[_10258] <= test266151307()
                        require _10258 + mem[_10258] + 31 < _10258 + return_data.size
                        _10546 = mem[_10258 + mem[_10258]]
                        if mem[_10258 + mem[_10258]] > test266151307():
                            revert with 0, 65
                        if _10258 + ceil32(return_data.size) + ceil32(32 * mem[_10258 + mem[_10258]]) + 1 > test266151307() or ceil32(32 * mem[_10258 + mem[_10258]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10258 + ceil32(return_data.size) + ceil32(32 * mem[_10258 + mem[_10258]]) + 1
                        mem[_10258 + ceil32(return_data.size)] = _10546
                        require return_data.size >= _10402 + (32 * _10546) + 32
                        mem[_10258 + ceil32(return_data.size) + 32 len 32 * _10546] = mem[_10258 + _10402 + 32 len 32 * _10546]
                        if _10546 < 1:
                            revert with 0, 17
                        if _10546 - 1 >= _10546:
                            revert with 0, 50
                        return _7034, mem[(32 * _10546 - 1) + _10258 + ceil32(return_data.size) + 32]
                    _7407 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 160
                    if 0 >= mem[_7407]:
                        revert with 0, 50
                    mem[_7407 + 32] = stor1
                    if 1 >= mem[_7407]:
                        revert with 0, 50
                    mem[_7407 + 64] = stor1
                    if 2 >= mem[_7407]:
                        revert with 0, 50
                    mem[_7407 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    if 3 >= mem[_7407]:
                        revert with 0, 50
                    mem[_7407 + 128] = address(ext_call.return_data[0])
                    mem[_7407 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7407 + 164] = arg3 / 2
                    mem[_7407 + 196] = 64
                    mem[_7407 + 228] = mem[_7407]
                    idx = 0
                    s = _7407 + 32
                    t = _7407 + 260
                    while idx < mem[_7407]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7407 + (32 * mem[_7407]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10260 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10404 = mem[_10260]
                    require mem[_10260] <= test266151307()
                    require _10260 + mem[_10260] + 31 < _10260 + return_data.size
                    _10548 = mem[_10260 + mem[_10260]]
                    if mem[_10260 + mem[_10260]] > test266151307():
                        revert with 0, 65
                    if _10260 + ceil32(return_data.size) + ceil32(32 * mem[_10260 + mem[_10260]]) + 1 > test266151307() or ceil32(32 * mem[_10260 + mem[_10260]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10260 + ceil32(return_data.size) + ceil32(32 * mem[_10260 + mem[_10260]]) + 1
                    mem[_10260 + ceil32(return_data.size)] = _10548
                    require return_data.size >= _10404 + (32 * _10548) + 32
                    mem[_10260 + ceil32(return_data.size) + 32 len 32 * _10548] = mem[_10260 + _10404 + 32 len 32 * _10548]
                    if _10548 < 1:
                        revert with 0, 17
                    if _10548 - 1 >= _10548:
                        revert with 0, 50
                    return _7034, mem[(32 * _10548 - 1) + _10260 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7411 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7411]:
                        revert with 0, 50
                    mem[_7411 + 32] = stor1
                    if 1 >= mem[_7411]:
                        revert with 0, 50
                    mem[_7411 + 64] = stor3[stor1][address(arg2)]
                    if 2 >= mem[_7411]:
                        revert with 0, 50
                    mem[_7411 + 96] = stor1
                    mem[_7411 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7411 + 132] = arg3 / 2
                    mem[_7411 + 164] = 64
                    mem[_7411 + 196] = mem[_7411]
                    idx = 0
                    s = _7411 + 32
                    t = _7411 + 228
                    while idx < mem[_7411]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7411 + (32 * mem[_7411]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10262 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10406 = mem[_10262]
                    require mem[_10262] <= test266151307()
                    require _10262 + mem[_10262] + 31 < _10262 + return_data.size
                    _10550 = mem[_10262 + mem[_10262]]
                    if mem[_10262 + mem[_10262]] > test266151307():
                        revert with 0, 65
                    if _10262 + ceil32(return_data.size) + ceil32(32 * mem[_10262 + mem[_10262]]) + 1 > test266151307() or ceil32(32 * mem[_10262 + mem[_10262]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10262 + ceil32(return_data.size) + ceil32(32 * mem[_10262 + mem[_10262]]) + 1
                    mem[_10262 + ceil32(return_data.size)] = _10550
                    require return_data.size >= _10406 + (32 * _10550) + 32
                    mem[_10262 + ceil32(return_data.size) + 32 len 32 * _10550] = mem[_10262 + _10406 + 32 len 32 * _10550]
                    if _10550 < 1:
                        revert with 0, 17
                    if _10550 - 1 >= _10550:
                        revert with 0, 50
                    return _7034, mem[(32 * _10550 - 1) + _10262 + ceil32(return_data.size) + 32]
                _7409 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7409]:
                    revert with 0, 50
                mem[_7409 + 32] = stor1
                if 1 >= mem[_7409]:
                    revert with 0, 50
                mem[_7409 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7409]:
                    revert with 0, 50
                mem[_7409 + 96] = stor1
                if 3 >= mem[_7409]:
                    revert with 0, 50
                mem[_7409 + 128] = address(ext_call.return_data[0])
                mem[_7409 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7409 + 164] = arg3 / 2
                mem[_7409 + 196] = 64
                mem[_7409 + 228] = mem[_7409]
                idx = 0
                s = _7409 + 32
                t = _7409 + 260
                while idx < mem[_7409]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7409 + (32 * mem[_7409]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10261 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10405 = mem[_10261]
                require mem[_10261] <= test266151307()
                require _10261 + mem[_10261] + 31 < _10261 + return_data.size
                _10549 = mem[_10261 + mem[_10261]]
                if mem[_10261 + mem[_10261]] > test266151307():
                    revert with 0, 65
                if _10261 + ceil32(return_data.size) + ceil32(32 * mem[_10261 + mem[_10261]]) + 1 > test266151307() or ceil32(32 * mem[_10261 + mem[_10261]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10261 + ceil32(return_data.size) + ceil32(32 * mem[_10261 + mem[_10261]]) + 1
                mem[_10261 + ceil32(return_data.size)] = _10549
                require return_data.size >= _10405 + (32 * _10549) + 32
                mem[_10261 + ceil32(return_data.size) + 32 len 32 * _10549] = mem[_10261 + _10405 + 32 len 32 * _10549]
                if _10549 < 1:
                    revert with 0, 17
                if _10549 - 1 >= _10549:
                    revert with 0, 50
                return _7034, mem[(32 * _10549 - 1) + _10261 + ceil32(return_data.size) + 32]
            if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
                _7309 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7309]:
                    revert with 0, 50
                mem[_7309 + 32] = stor1
                if 1 >= mem[_7309]:
                    revert with 0, 50
                mem[_7309 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7309]:
                    revert with 0, 50
                mem[_7309 + 96] = address(ext_call.return_data[0])
                mem[_7309 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7309 + 132] = arg3 / 2
                mem[_7309 + 164] = 64
                mem[_7309 + 196] = mem[_7309]
                idx = 0
                s = _7309 + 32
                t = _7309 + 228
                while idx < mem[_7309]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7309 + (32 * mem[_7309]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10263 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10407 = mem[_10263]
                require mem[_10263] <= test266151307()
                require _10263 + mem[_10263] + 31 < _10263 + return_data.size
                _10551 = mem[_10263 + mem[_10263]]
                if mem[_10263 + mem[_10263]] > test266151307():
                    revert with 0, 65
                if _10263 + ceil32(return_data.size) + ceil32(32 * mem[_10263 + mem[_10263]]) + 1 > test266151307() or ceil32(32 * mem[_10263 + mem[_10263]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10263 + ceil32(return_data.size) + ceil32(32 * mem[_10263 + mem[_10263]]) + 1
                mem[_10263 + ceil32(return_data.size)] = _10551
                require return_data.size >= _10407 + (32 * _10551) + 32
                mem[_10263 + ceil32(return_data.size) + 32 len 32 * _10551] = mem[_10263 + _10407 + 32 len 32 * _10551]
                if _10551 < 1:
                    revert with 0, 17
                if _10551 - 1 >= _10551:
                    revert with 0, 50
                return _7034, mem[(32 * _10551 - 1) + _10263 + ceil32(return_data.size) + 32]
            _7311 = mem[64]
            mem[mem[64]] = 5
            mem[64] = mem[64] + 192
            if 0 >= mem[_7311]:
                revert with 0, 50
            mem[_7311 + 32] = stor1
            if 1 >= mem[_7311]:
                revert with 0, 50
            mem[_7311 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7311]:
                revert with 0, 50
            mem[_7311 + 96] = stor1
            if 3 >= mem[_7311]:
                revert with 0, 50
            mem[_7311 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 4 >= mem[_7311]:
                revert with 0, 50
            mem[_7311 + 160] = address(ext_call.return_data[0])
            mem[_7311 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7311 + 196] = arg3 / 2
            mem[_7311 + 228] = 64
            mem[_7311 + 260] = mem[_7311]
            idx = 0
            s = _7311 + 32
            t = _7311 + 292
            while idx < mem[_7311]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7311 + (32 * mem[_7311]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10264 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10408 = mem[_10264]
            require mem[_10264] <= test266151307()
            require _10264 + mem[_10264] + 31 < _10264 + return_data.size
            _10552 = mem[_10264 + mem[_10264]]
            if mem[_10264 + mem[_10264]] > test266151307():
                revert with 0, 65
            if _10264 + ceil32(return_data.size) + ceil32(32 * mem[_10264 + mem[_10264]]) + 1 > test266151307() or ceil32(32 * mem[_10264 + mem[_10264]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10264 + ceil32(return_data.size) + ceil32(32 * mem[_10264 + mem[_10264]]) + 1
            mem[_10264 + ceil32(return_data.size)] = _10552
            require return_data.size >= _10408 + (32 * _10552) + 32
            mem[_10264 + ceil32(return_data.size) + 32 len 32 * _10552] = mem[_10264 + _10408 + 32 len 32 * _10552]
            if _10552 < 1:
                revert with 0, 17
            if _10552 - 1 >= _10552:
                revert with 0, 50
            return _7034, mem[(32 * _10552 - 1) + _10264 + ceil32(return_data.size) + 32]
        mem[(2 * ceil32(return_data.size)) + 96] = 4
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = stor3[stor1][address(arg2)]
        mem[(2 * ceil32(return_data.size)) + 192] = stor1
        mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
        mem[(2 * ceil32(return_data.size)) + 292] = 64
        mem[(2 * ceil32(return_data.size)) + 324] = 4
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 4:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _3757 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
        _3805 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
        mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        require return_data.size >= _3757 + (32 * _3805) + 32
        mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3805] = mem[(2 * ceil32(return_data.size)) + _3757 + 288 len 32 * _3805]
        if _3805 < 1:
            revert with 0, 17
        if _3805 - 1 >= _3805:
            revert with 0, 50
        _7033 = mem[(32 * _3805 - 1) + (4 * ceil32(return_data.size)) + 288]
        mem[0] = arg2
        mem[32] = sha3(address(ext_call.return_data[0]), 3)
        if not stor3[stor1][address(arg2)]:
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if stor1 == stor1:
                    _7497 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7497]:
                        revert with 0, 50
                    mem[_7497 + 32] = stor1
                    if 1 >= mem[_7497]:
                        revert with 0, 50
                    mem[_7497 + 64] = address(ext_call.return_data[0])
                    mem[_7497 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7497 + 100] = arg3 / 2
                    mem[_7497 + 132] = 64
                    mem[_7497 + 164] = mem[_7497]
                    idx = 0
                    s = _7497 + 32
                    t = _7497 + 196
                    while idx < mem[_7497]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7497 + (32 * mem[_7497]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10241 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10385 = mem[_10241]
                    require mem[_10241] <= test266151307()
                    require _10241 + mem[_10241] + 31 < _10241 + return_data.size
                    _10529 = mem[_10241 + mem[_10241]]
                    if mem[_10241 + mem[_10241]] > test266151307():
                        revert with 0, 65
                    if _10241 + ceil32(return_data.size) + ceil32(32 * mem[_10241 + mem[_10241]]) + 1 > test266151307() or ceil32(32 * mem[_10241 + mem[_10241]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10241 + ceil32(return_data.size) + ceil32(32 * mem[_10241 + mem[_10241]]) + 1
                    mem[_10241 + ceil32(return_data.size)] = _10529
                    require return_data.size >= _10385 + (32 * _10529) + 32
                    mem[_10241 + ceil32(return_data.size) + 32 len 32 * _10529] = mem[_10241 + _10385 + 32 len 32 * _10529]
                    if _10529 < 1:
                        revert with 0, 17
                    if _10529 - 1 >= _10529:
                        revert with 0, 50
                    return _7033, mem[(32 * _10529 - 1) + _10241 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7628 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7628]:
                        revert with 0, 50
                    mem[_7628 + 32] = stor1
                    if 1 >= mem[_7628]:
                        revert with 0, 50
                    mem[_7628 + 64] = address(ext_call.return_data[0])
                    mem[_7628 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7628 + 100] = arg3 / 2
                    mem[_7628 + 132] = 64
                    mem[_7628 + 164] = mem[_7628]
                    idx = 0
                    s = _7628 + 32
                    t = _7628 + 196
                    while idx < mem[_7628]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7628 + (32 * mem[_7628]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10243 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10387 = mem[_10243]
                    require mem[_10243] <= test266151307()
                    require _10243 + mem[_10243] + 31 < _10243 + return_data.size
                    _10531 = mem[_10243 + mem[_10243]]
                    if mem[_10243 + mem[_10243]] > test266151307():
                        revert with 0, 65
                    if _10243 + ceil32(return_data.size) + ceil32(32 * mem[_10243 + mem[_10243]]) + 1 > test266151307() or ceil32(32 * mem[_10243 + mem[_10243]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10243 + ceil32(return_data.size) + ceil32(32 * mem[_10243 + mem[_10243]]) + 1
                    mem[_10243 + ceil32(return_data.size)] = _10531
                    require return_data.size >= _10387 + (32 * _10531) + 32
                    mem[_10243 + ceil32(return_data.size) + 32 len 32 * _10531] = mem[_10243 + _10387 + 32 len 32 * _10531]
                    if _10531 < 1:
                        revert with 0, 17
                    if _10531 - 1 >= _10531:
                        revert with 0, 50
                    return _7033, mem[(32 * _10531 - 1) + _10243 + ceil32(return_data.size) + 32]
                _7626 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7626]:
                    revert with 0, 50
                mem[_7626 + 32] = stor1
                if 1 >= mem[_7626]:
                    revert with 0, 50
                mem[_7626 + 64] = stor1
                if 2 >= mem[_7626]:
                    revert with 0, 50
                mem[_7626 + 96] = address(ext_call.return_data[0])
                mem[_7626 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7626 + 132] = arg3 / 2
                mem[_7626 + 164] = 64
                mem[_7626 + 196] = mem[_7626]
                idx = 0
                s = _7626 + 32
                t = _7626 + 228
                while idx < mem[_7626]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7626 + (32 * mem[_7626]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10242 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10386 = mem[_10242]
                require mem[_10242] <= test266151307()
                require _10242 + mem[_10242] + 31 < _10242 + return_data.size
                _10530 = mem[_10242 + mem[_10242]]
                if mem[_10242 + mem[_10242]] > test266151307():
                    revert with 0, 65
                if _10242 + ceil32(return_data.size) + ceil32(32 * mem[_10242 + mem[_10242]]) + 1 > test266151307() or ceil32(32 * mem[_10242 + mem[_10242]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10242 + ceil32(return_data.size) + ceil32(32 * mem[_10242 + mem[_10242]]) + 1
                mem[_10242 + ceil32(return_data.size)] = _10530
                require return_data.size >= _10386 + (32 * _10530) + 32
                mem[_10242 + ceil32(return_data.size) + 32 len 32 * _10530] = mem[_10242 + _10386 + 32 len 32 * _10530]
                if _10530 < 1:
                    revert with 0, 17
                if _10530 - 1 >= _10530:
                    revert with 0, 50
                return _7033, mem[(32 * _10530 - 1) + _10242 + ceil32(return_data.size) + 32]
            _7301 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7301]:
                revert with 0, 50
            mem[_7301 + 32] = stor1
            if 1 >= mem[_7301]:
                revert with 0, 50
            mem[_7301 + 64] = stor1
            if 2 >= mem[_7301]:
                revert with 0, 50
            mem[_7301 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 3 >= mem[_7301]:
                revert with 0, 50
            mem[_7301 + 128] = address(ext_call.return_data[0])
            mem[_7301 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7301 + 164] = arg3 / 2
            mem[_7301 + 196] = 64
            mem[_7301 + 228] = mem[_7301]
            idx = 0
            s = _7301 + 32
            t = _7301 + 260
            while idx < mem[_7301]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7301 + (32 * mem[_7301]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10244 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10388 = mem[_10244]
            require mem[_10244] <= test266151307()
            require _10244 + mem[_10244] + 31 < _10244 + return_data.size
            _10532 = mem[_10244 + mem[_10244]]
            if mem[_10244 + mem[_10244]] > test266151307():
                revert with 0, 65
            if _10244 + ceil32(return_data.size) + ceil32(32 * mem[_10244 + mem[_10244]]) + 1 > test266151307() or ceil32(32 * mem[_10244 + mem[_10244]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10244 + ceil32(return_data.size) + ceil32(32 * mem[_10244 + mem[_10244]]) + 1
            mem[_10244 + ceil32(return_data.size)] = _10532
            require return_data.size >= _10388 + (32 * _10532) + 32
            mem[_10244 + ceil32(return_data.size) + 32 len 32 * _10532] = mem[_10244 + _10388 + 32 len 32 * _10532]
            if _10532 < 1:
                revert with 0, 17
            if _10532 - 1 >= _10532:
                revert with 0, 50
            return _7033, mem[(32 * _10532 - 1) + _10244 + ceil32(return_data.size) + 32]
        if not stor3[address(ext_call.return_data[0])][address(arg2)]:
            if not stor3[stor1][address(arg2)]:
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor1 == stor1:
                        _7631 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7631]:
                            revert with 0, 50
                        mem[_7631 + 32] = stor1
                        if 1 >= mem[_7631]:
                            revert with 0, 50
                        mem[_7631 + 64] = address(ext_call.return_data[0])
                        mem[_7631 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7631 + 100] = arg3 / 2
                        mem[_7631 + 132] = 64
                        mem[_7631 + 164] = mem[_7631]
                        idx = 0
                        s = _7631 + 32
                        t = _7631 + 196
                        while idx < mem[_7631]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7631 + (32 * mem[_7631]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10245 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10389 = mem[_10245]
                        require mem[_10245] <= test266151307()
                        require _10245 + mem[_10245] + 31 < _10245 + return_data.size
                        _10533 = mem[_10245 + mem[_10245]]
                        if mem[_10245 + mem[_10245]] > test266151307():
                            revert with 0, 65
                        if _10245 + ceil32(return_data.size) + ceil32(32 * mem[_10245 + mem[_10245]]) + 1 > test266151307() or ceil32(32 * mem[_10245 + mem[_10245]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10245 + ceil32(return_data.size) + ceil32(32 * mem[_10245 + mem[_10245]]) + 1
                        mem[_10245 + ceil32(return_data.size)] = _10533
                        require return_data.size >= _10389 + (32 * _10533) + 32
                        mem[_10245 + ceil32(return_data.size) + 32 len 32 * _10533] = mem[_10245 + _10389 + 32 len 32 * _10533]
                        if _10533 < 1:
                            revert with 0, 17
                        if _10533 - 1 >= _10533:
                            revert with 0, 50
                        return _7033, mem[(32 * _10533 - 1) + _10245 + ceil32(return_data.size) + 32]
                    if stor1 == address(ext_call.return_data[0]):
                        _7766 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7766]:
                            revert with 0, 50
                        mem[_7766 + 32] = stor1
                        if 1 >= mem[_7766]:
                            revert with 0, 50
                        mem[_7766 + 64] = address(ext_call.return_data[0])
                        mem[_7766 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7766 + 100] = arg3 / 2
                        mem[_7766 + 132] = 64
                        mem[_7766 + 164] = mem[_7766]
                        idx = 0
                        s = _7766 + 32
                        t = _7766 + 196
                        while idx < mem[_7766]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7766 + (32 * mem[_7766]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10247 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10391 = mem[_10247]
                        require mem[_10247] <= test266151307()
                        require _10247 + mem[_10247] + 31 < _10247 + return_data.size
                        _10535 = mem[_10247 + mem[_10247]]
                        if mem[_10247 + mem[_10247]] > test266151307():
                            revert with 0, 65
                        if _10247 + ceil32(return_data.size) + ceil32(32 * mem[_10247 + mem[_10247]]) + 1 > test266151307() or ceil32(32 * mem[_10247 + mem[_10247]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10247 + ceil32(return_data.size) + ceil32(32 * mem[_10247 + mem[_10247]]) + 1
                        mem[_10247 + ceil32(return_data.size)] = _10535
                        require return_data.size >= _10391 + (32 * _10535) + 32
                        mem[_10247 + ceil32(return_data.size) + 32 len 32 * _10535] = mem[_10247 + _10391 + 32 len 32 * _10535]
                        if _10535 < 1:
                            revert with 0, 17
                        if _10535 - 1 >= _10535:
                            revert with 0, 50
                        return _7033, mem[(32 * _10535 - 1) + _10247 + ceil32(return_data.size) + 32]
                    _7764 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7764]:
                        revert with 0, 50
                    mem[_7764 + 32] = stor1
                    if 1 >= mem[_7764]:
                        revert with 0, 50
                    mem[_7764 + 64] = stor1
                    if 2 >= mem[_7764]:
                        revert with 0, 50
                    mem[_7764 + 96] = address(ext_call.return_data[0])
                    mem[_7764 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7764 + 132] = arg3 / 2
                    mem[_7764 + 164] = 64
                    mem[_7764 + 196] = mem[_7764]
                    idx = 0
                    s = _7764 + 32
                    t = _7764 + 228
                    while idx < mem[_7764]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7764 + (32 * mem[_7764]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10246 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10390 = mem[_10246]
                    require mem[_10246] <= test266151307()
                    require _10246 + mem[_10246] + 31 < _10246 + return_data.size
                    _10534 = mem[_10246 + mem[_10246]]
                    if mem[_10246 + mem[_10246]] > test266151307():
                        revert with 0, 65
                    if _10246 + ceil32(return_data.size) + ceil32(32 * mem[_10246 + mem[_10246]]) + 1 > test266151307() or ceil32(32 * mem[_10246 + mem[_10246]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10246 + ceil32(return_data.size) + ceil32(32 * mem[_10246 + mem[_10246]]) + 1
                    mem[_10246 + ceil32(return_data.size)] = _10534
                    require return_data.size >= _10390 + (32 * _10534) + 32
                    mem[_10246 + ceil32(return_data.size) + 32 len 32 * _10534] = mem[_10246 + _10390 + 32 len 32 * _10534]
                    if _10534 < 1:
                        revert with 0, 17
                    if _10534 - 1 >= _10534:
                        revert with 0, 50
                    return _7033, mem[(32 * _10534 - 1) + _10246 + ceil32(return_data.size) + 32]
                _7398 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7398]:
                    revert with 0, 50
                mem[_7398 + 32] = stor1
                if 1 >= mem[_7398]:
                    revert with 0, 50
                mem[_7398 + 64] = stor1
                if 2 >= mem[_7398]:
                    revert with 0, 50
                mem[_7398 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                if 3 >= mem[_7398]:
                    revert with 0, 50
                mem[_7398 + 128] = address(ext_call.return_data[0])
                mem[_7398 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7398 + 164] = arg3 / 2
                mem[_7398 + 196] = 64
                mem[_7398 + 228] = mem[_7398]
                idx = 0
                s = _7398 + 32
                t = _7398 + 260
                while idx < mem[_7398]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7398 + (32 * mem[_7398]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10248 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10392 = mem[_10248]
                require mem[_10248] <= test266151307()
                require _10248 + mem[_10248] + 31 < _10248 + return_data.size
                _10536 = mem[_10248 + mem[_10248]]
                if mem[_10248 + mem[_10248]] > test266151307():
                    revert with 0, 65
                if _10248 + ceil32(return_data.size) + ceil32(32 * mem[_10248 + mem[_10248]]) + 1 > test266151307() or ceil32(32 * mem[_10248 + mem[_10248]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10248 + ceil32(return_data.size) + ceil32(32 * mem[_10248 + mem[_10248]]) + 1
                mem[_10248 + ceil32(return_data.size)] = _10536
                require return_data.size >= _10392 + (32 * _10536) + 32
                mem[_10248 + ceil32(return_data.size) + 32 len 32 * _10536] = mem[_10248 + _10392 + 32 len 32 * _10536]
                if _10536 < 1:
                    revert with 0, 17
                if _10536 - 1 >= _10536:
                    revert with 0, 50
                return _7033, mem[(32 * _10536 - 1) + _10248 + ceil32(return_data.size) + 32]
            if stor1 == address(ext_call.return_data[0]):
                _7402 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7402]:
                    revert with 0, 50
                mem[_7402 + 32] = stor1
                if 1 >= mem[_7402]:
                    revert with 0, 50
                mem[_7402 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7402]:
                    revert with 0, 50
                mem[_7402 + 96] = stor1
                mem[_7402 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7402 + 132] = arg3 / 2
                mem[_7402 + 164] = 64
                mem[_7402 + 196] = mem[_7402]
                idx = 0
                s = _7402 + 32
                t = _7402 + 228
                while idx < mem[_7402]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7402 + (32 * mem[_7402]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10250 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10394 = mem[_10250]
                require mem[_10250] <= test266151307()
                require _10250 + mem[_10250] + 31 < _10250 + return_data.size
                _10538 = mem[_10250 + mem[_10250]]
                if mem[_10250 + mem[_10250]] > test266151307():
                    revert with 0, 65
                if _10250 + ceil32(return_data.size) + ceil32(32 * mem[_10250 + mem[_10250]]) + 1 > test266151307() or ceil32(32 * mem[_10250 + mem[_10250]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10250 + ceil32(return_data.size) + ceil32(32 * mem[_10250 + mem[_10250]]) + 1
                mem[_10250 + ceil32(return_data.size)] = _10538
                require return_data.size >= _10394 + (32 * _10538) + 32
                mem[_10250 + ceil32(return_data.size) + 32 len 32 * _10538] = mem[_10250 + _10394 + 32 len 32 * _10538]
                if _10538 < 1:
                    revert with 0, 17
                if _10538 - 1 >= _10538:
                    revert with 0, 50
                return _7033, mem[(32 * _10538 - 1) + _10250 + ceil32(return_data.size) + 32]
            _7400 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7400]:
                revert with 0, 50
            mem[_7400 + 32] = stor1
            if 1 >= mem[_7400]:
                revert with 0, 50
            mem[_7400 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7400]:
                revert with 0, 50
            mem[_7400 + 96] = stor1
            if 3 >= mem[_7400]:
                revert with 0, 50
            mem[_7400 + 128] = address(ext_call.return_data[0])
            mem[_7400 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7400 + 164] = arg3 / 2
            mem[_7400 + 196] = 64
            mem[_7400 + 228] = mem[_7400]
            idx = 0
            s = _7400 + 32
            t = _7400 + 260
            while idx < mem[_7400]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7400 + (32 * mem[_7400]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10249 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10393 = mem[_10249]
            require mem[_10249] <= test266151307()
            require _10249 + mem[_10249] + 31 < _10249 + return_data.size
            _10537 = mem[_10249 + mem[_10249]]
            if mem[_10249 + mem[_10249]] > test266151307():
                revert with 0, 65
            if _10249 + ceil32(return_data.size) + ceil32(32 * mem[_10249 + mem[_10249]]) + 1 > test266151307() or ceil32(32 * mem[_10249 + mem[_10249]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10249 + ceil32(return_data.size) + ceil32(32 * mem[_10249 + mem[_10249]]) + 1
            mem[_10249 + ceil32(return_data.size)] = _10537
            require return_data.size >= _10393 + (32 * _10537) + 32
            mem[_10249 + ceil32(return_data.size) + 32 len 32 * _10537] = mem[_10249 + _10393 + 32 len 32 * _10537]
            if _10537 < 1:
                revert with 0, 17
            if _10537 - 1 >= _10537:
                revert with 0, 50
            return _7033, mem[(32 * _10537 - 1) + _10249 + ceil32(return_data.size) + 32]
        if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
            _7303 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_7303]:
                revert with 0, 50
            mem[_7303 + 32] = stor1
            if 1 >= mem[_7303]:
                revert with 0, 50
            mem[_7303 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7303]:
                revert with 0, 50
            mem[_7303 + 96] = address(ext_call.return_data[0])
            mem[_7303 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7303 + 132] = arg3 / 2
            mem[_7303 + 164] = 64
            mem[_7303 + 196] = mem[_7303]
            idx = 0
            s = _7303 + 32
            t = _7303 + 228
            while idx < mem[_7303]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7303 + (32 * mem[_7303]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10251 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10395 = mem[_10251]
            require mem[_10251] <= test266151307()
            require _10251 + mem[_10251] + 31 < _10251 + return_data.size
            _10539 = mem[_10251 + mem[_10251]]
            if mem[_10251 + mem[_10251]] > test266151307():
                revert with 0, 65
            if _10251 + ceil32(return_data.size) + ceil32(32 * mem[_10251 + mem[_10251]]) + 1 > test266151307() or ceil32(32 * mem[_10251 + mem[_10251]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10251 + ceil32(return_data.size) + ceil32(32 * mem[_10251 + mem[_10251]]) + 1
            mem[_10251 + ceil32(return_data.size)] = _10539
            require return_data.size >= _10395 + (32 * _10539) + 32
            mem[_10251 + ceil32(return_data.size) + 32 len 32 * _10539] = mem[_10251 + _10395 + 32 len 32 * _10539]
            if _10539 < 1:
                revert with 0, 17
            if _10539 - 1 >= _10539:
                revert with 0, 50
            return _7033, mem[(32 * _10539 - 1) + _10251 + ceil32(return_data.size) + 32]
        _7305 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 192
        if 0 >= mem[_7305]:
            revert with 0, 50
        mem[_7305 + 32] = stor1
        if 1 >= mem[_7305]:
            revert with 0, 50
        mem[_7305 + 64] = stor3[stor1][address(arg2)]
        if 2 >= mem[_7305]:
            revert with 0, 50
        mem[_7305 + 96] = stor1
        if 3 >= mem[_7305]:
            revert with 0, 50
        mem[_7305 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
        if 4 >= mem[_7305]:
            revert with 0, 50
        mem[_7305 + 160] = address(ext_call.return_data[0])
        mem[_7305 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_7305 + 196] = arg3 / 2
        mem[_7305 + 228] = 64
        mem[_7305 + 260] = mem[_7305]
        idx = 0
        s = _7305 + 32
        t = _7305 + 292
        while idx < mem[_7305]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _7305 + (32 * mem[_7305]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10252 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10396 = mem[_10252]
        require mem[_10252] <= test266151307()
        require _10252 + mem[_10252] + 31 < _10252 + return_data.size
        _10540 = mem[_10252 + mem[_10252]]
        if mem[_10252 + mem[_10252]] > test266151307():
            revert with 0, 65
        if _10252 + ceil32(return_data.size) + ceil32(32 * mem[_10252 + mem[_10252]]) + 1 > test266151307() or ceil32(32 * mem[_10252 + mem[_10252]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _10252 + ceil32(return_data.size) + ceil32(32 * mem[_10252 + mem[_10252]]) + 1
        mem[_10252 + ceil32(return_data.size)] = _10540
        require return_data.size >= _10396 + (32 * _10540) + 32
        mem[_10252 + ceil32(return_data.size) + 32 len 32 * _10540] = mem[_10252 + _10396 + 32 len 32 * _10540]
        if _10540 < 1:
            revert with 0, 17
        if _10540 - 1 >= _10540:
            revert with 0, 50
        return _7033, mem[(32 * _10540 - 1) + _10252 + ceil32(return_data.size) + 32]
    if stor3[address(ext_call.return_data[0])][address(arg2)]:
        mem[(2 * ceil32(return_data.size)) + 96] = 4
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = stor1
        mem[(2 * ceil32(return_data.size)) + 192] = stor3[address(ext_call.return_data[0])][address(arg2)]
        mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 260] = arg3 / 2
        mem[(2 * ceil32(return_data.size)) + 292] = 64
        mem[(2 * ceil32(return_data.size)) + 324] = 4
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 4:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args Mask(255, 1, arg3), Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 356 len 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _3756 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
        _3804 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
        mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        require return_data.size >= _3756 + (32 * _3804) + 32
        mem[(4 * ceil32(return_data.size)) + 288 len 32 * _3804] = mem[(2 * ceil32(return_data.size)) + _3756 + 288 len 32 * _3804]
        if _3804 < 1:
            revert with 0, 17
        if _3804 - 1 >= _3804:
            revert with 0, 50
        _7032 = mem[(32 * _3804 - 1) + (4 * ceil32(return_data.size)) + 288]
        mem[0] = arg2
        mem[32] = sha3(address(ext_call.return_data[0]), 3)
        if not stor3[stor1][address(arg2)]:
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if stor1 == stor1:
                    _7489 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7489]:
                        revert with 0, 50
                    mem[_7489 + 32] = stor1
                    if 1 >= mem[_7489]:
                        revert with 0, 50
                    mem[_7489 + 64] = address(ext_call.return_data[0])
                    mem[_7489 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7489 + 100] = arg3 / 2
                    mem[_7489 + 132] = 64
                    mem[_7489 + 164] = mem[_7489]
                    idx = 0
                    s = _7489 + 32
                    t = _7489 + 196
                    while idx < mem[_7489]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7489 + (32 * mem[_7489]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10229 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10373 = mem[_10229]
                    require mem[_10229] <= test266151307()
                    require _10229 + mem[_10229] + 31 < _10229 + return_data.size
                    _10517 = mem[_10229 + mem[_10229]]
                    if mem[_10229 + mem[_10229]] > test266151307():
                        revert with 0, 65
                    if _10229 + ceil32(return_data.size) + ceil32(32 * mem[_10229 + mem[_10229]]) + 1 > test266151307() or ceil32(32 * mem[_10229 + mem[_10229]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10229 + ceil32(return_data.size) + ceil32(32 * mem[_10229 + mem[_10229]]) + 1
                    mem[_10229 + ceil32(return_data.size)] = _10517
                    require return_data.size >= _10373 + (32 * _10517) + 32
                    mem[_10229 + ceil32(return_data.size) + 32 len 32 * _10517] = mem[_10229 + _10373 + 32 len 32 * _10517]
                    if _10517 < 1:
                        revert with 0, 17
                    if _10517 - 1 >= _10517:
                        revert with 0, 50
                    return _7032, mem[(32 * _10517 - 1) + _10229 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7616 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7616]:
                        revert with 0, 50
                    mem[_7616 + 32] = stor1
                    if 1 >= mem[_7616]:
                        revert with 0, 50
                    mem[_7616 + 64] = address(ext_call.return_data[0])
                    mem[_7616 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7616 + 100] = arg3 / 2
                    mem[_7616 + 132] = 64
                    mem[_7616 + 164] = mem[_7616]
                    idx = 0
                    s = _7616 + 32
                    t = _7616 + 196
                    while idx < mem[_7616]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7616 + (32 * mem[_7616]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10231 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10375 = mem[_10231]
                    require mem[_10231] <= test266151307()
                    require _10231 + mem[_10231] + 31 < _10231 + return_data.size
                    _10519 = mem[_10231 + mem[_10231]]
                    if mem[_10231 + mem[_10231]] > test266151307():
                        revert with 0, 65
                    if _10231 + ceil32(return_data.size) + ceil32(32 * mem[_10231 + mem[_10231]]) + 1 > test266151307() or ceil32(32 * mem[_10231 + mem[_10231]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10231 + ceil32(return_data.size) + ceil32(32 * mem[_10231 + mem[_10231]]) + 1
                    mem[_10231 + ceil32(return_data.size)] = _10519
                    require return_data.size >= _10375 + (32 * _10519) + 32
                    mem[_10231 + ceil32(return_data.size) + 32 len 32 * _10519] = mem[_10231 + _10375 + 32 len 32 * _10519]
                    if _10519 < 1:
                        revert with 0, 17
                    if _10519 - 1 >= _10519:
                        revert with 0, 50
                    return _7032, mem[(32 * _10519 - 1) + _10231 + ceil32(return_data.size) + 32]
                _7614 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7614]:
                    revert with 0, 50
                mem[_7614 + 32] = stor1
                if 1 >= mem[_7614]:
                    revert with 0, 50
                mem[_7614 + 64] = stor1
                if 2 >= mem[_7614]:
                    revert with 0, 50
                mem[_7614 + 96] = address(ext_call.return_data[0])
                mem[_7614 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7614 + 132] = arg3 / 2
                mem[_7614 + 164] = 64
                mem[_7614 + 196] = mem[_7614]
                idx = 0
                s = _7614 + 32
                t = _7614 + 228
                while idx < mem[_7614]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7614 + (32 * mem[_7614]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10230 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10374 = mem[_10230]
                require mem[_10230] <= test266151307()
                require _10230 + mem[_10230] + 31 < _10230 + return_data.size
                _10518 = mem[_10230 + mem[_10230]]
                if mem[_10230 + mem[_10230]] > test266151307():
                    revert with 0, 65
                if _10230 + ceil32(return_data.size) + ceil32(32 * mem[_10230 + mem[_10230]]) + 1 > test266151307() or ceil32(32 * mem[_10230 + mem[_10230]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10230 + ceil32(return_data.size) + ceil32(32 * mem[_10230 + mem[_10230]]) + 1
                mem[_10230 + ceil32(return_data.size)] = _10518
                require return_data.size >= _10374 + (32 * _10518) + 32
                mem[_10230 + ceil32(return_data.size) + 32 len 32 * _10518] = mem[_10230 + _10374 + 32 len 32 * _10518]
                if _10518 < 1:
                    revert with 0, 17
                if _10518 - 1 >= _10518:
                    revert with 0, 50
                return _7032, mem[(32 * _10518 - 1) + _10230 + ceil32(return_data.size) + 32]
            _7295 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7295]:
                revert with 0, 50
            mem[_7295 + 32] = stor1
            if 1 >= mem[_7295]:
                revert with 0, 50
            mem[_7295 + 64] = stor1
            if 2 >= mem[_7295]:
                revert with 0, 50
            mem[_7295 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 3 >= mem[_7295]:
                revert with 0, 50
            mem[_7295 + 128] = address(ext_call.return_data[0])
            mem[_7295 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7295 + 164] = arg3 / 2
            mem[_7295 + 196] = 64
            mem[_7295 + 228] = mem[_7295]
            idx = 0
            s = _7295 + 32
            t = _7295 + 260
            while idx < mem[_7295]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7295 + (32 * mem[_7295]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10232 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10376 = mem[_10232]
            require mem[_10232] <= test266151307()
            require _10232 + mem[_10232] + 31 < _10232 + return_data.size
            _10520 = mem[_10232 + mem[_10232]]
            if mem[_10232 + mem[_10232]] > test266151307():
                revert with 0, 65
            if _10232 + ceil32(return_data.size) + ceil32(32 * mem[_10232 + mem[_10232]]) + 1 > test266151307() or ceil32(32 * mem[_10232 + mem[_10232]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10232 + ceil32(return_data.size) + ceil32(32 * mem[_10232 + mem[_10232]]) + 1
            mem[_10232 + ceil32(return_data.size)] = _10520
            require return_data.size >= _10376 + (32 * _10520) + 32
            mem[_10232 + ceil32(return_data.size) + 32 len 32 * _10520] = mem[_10232 + _10376 + 32 len 32 * _10520]
            if _10520 < 1:
                revert with 0, 17
            if _10520 - 1 >= _10520:
                revert with 0, 50
            return _7032, mem[(32 * _10520 - 1) + _10232 + ceil32(return_data.size) + 32]
        if not stor3[address(ext_call.return_data[0])][address(arg2)]:
            if not stor3[stor1][address(arg2)]:
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor1 == stor1:
                        _7619 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7619]:
                            revert with 0, 50
                        mem[_7619 + 32] = stor1
                        if 1 >= mem[_7619]:
                            revert with 0, 50
                        mem[_7619 + 64] = address(ext_call.return_data[0])
                        mem[_7619 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7619 + 100] = arg3 / 2
                        mem[_7619 + 132] = 64
                        mem[_7619 + 164] = mem[_7619]
                        idx = 0
                        s = _7619 + 32
                        t = _7619 + 196
                        while idx < mem[_7619]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7619 + (32 * mem[_7619]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10233 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10377 = mem[_10233]
                        require mem[_10233] <= test266151307()
                        require _10233 + mem[_10233] + 31 < _10233 + return_data.size
                        _10521 = mem[_10233 + mem[_10233]]
                        if mem[_10233 + mem[_10233]] > test266151307():
                            revert with 0, 65
                        if _10233 + ceil32(return_data.size) + ceil32(32 * mem[_10233 + mem[_10233]]) + 1 > test266151307() or ceil32(32 * mem[_10233 + mem[_10233]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10233 + ceil32(return_data.size) + ceil32(32 * mem[_10233 + mem[_10233]]) + 1
                        mem[_10233 + ceil32(return_data.size)] = _10521
                        require return_data.size >= _10377 + (32 * _10521) + 32
                        mem[_10233 + ceil32(return_data.size) + 32 len 32 * _10521] = mem[_10233 + _10377 + 32 len 32 * _10521]
                        if _10521 < 1:
                            revert with 0, 17
                        if _10521 - 1 >= _10521:
                            revert with 0, 50
                        return _7032, mem[(32 * _10521 - 1) + _10233 + ceil32(return_data.size) + 32]
                    if stor1 == address(ext_call.return_data[0]):
                        _7755 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7755]:
                            revert with 0, 50
                        mem[_7755 + 32] = stor1
                        if 1 >= mem[_7755]:
                            revert with 0, 50
                        mem[_7755 + 64] = address(ext_call.return_data[0])
                        mem[_7755 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7755 + 100] = arg3 / 2
                        mem[_7755 + 132] = 64
                        mem[_7755 + 164] = mem[_7755]
                        idx = 0
                        s = _7755 + 32
                        t = _7755 + 196
                        while idx < mem[_7755]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7755 + (32 * mem[_7755]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10235 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10379 = mem[_10235]
                        require mem[_10235] <= test266151307()
                        require _10235 + mem[_10235] + 31 < _10235 + return_data.size
                        _10523 = mem[_10235 + mem[_10235]]
                        if mem[_10235 + mem[_10235]] > test266151307():
                            revert with 0, 65
                        if _10235 + ceil32(return_data.size) + ceil32(32 * mem[_10235 + mem[_10235]]) + 1 > test266151307() or ceil32(32 * mem[_10235 + mem[_10235]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10235 + ceil32(return_data.size) + ceil32(32 * mem[_10235 + mem[_10235]]) + 1
                        mem[_10235 + ceil32(return_data.size)] = _10523
                        require return_data.size >= _10379 + (32 * _10523) + 32
                        mem[_10235 + ceil32(return_data.size) + 32 len 32 * _10523] = mem[_10235 + _10379 + 32 len 32 * _10523]
                        if _10523 < 1:
                            revert with 0, 17
                        if _10523 - 1 >= _10523:
                            revert with 0, 50
                        return _7032, mem[(32 * _10523 - 1) + _10235 + ceil32(return_data.size) + 32]
                    _7753 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7753]:
                        revert with 0, 50
                    mem[_7753 + 32] = stor1
                    if 1 >= mem[_7753]:
                        revert with 0, 50
                    mem[_7753 + 64] = stor1
                    if 2 >= mem[_7753]:
                        revert with 0, 50
                    mem[_7753 + 96] = address(ext_call.return_data[0])
                    mem[_7753 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7753 + 132] = arg3 / 2
                    mem[_7753 + 164] = 64
                    mem[_7753 + 196] = mem[_7753]
                    idx = 0
                    s = _7753 + 32
                    t = _7753 + 228
                    while idx < mem[_7753]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7753 + (32 * mem[_7753]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10234 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10378 = mem[_10234]
                    require mem[_10234] <= test266151307()
                    require _10234 + mem[_10234] + 31 < _10234 + return_data.size
                    _10522 = mem[_10234 + mem[_10234]]
                    if mem[_10234 + mem[_10234]] > test266151307():
                        revert with 0, 65
                    if _10234 + ceil32(return_data.size) + ceil32(32 * mem[_10234 + mem[_10234]]) + 1 > test266151307() or ceil32(32 * mem[_10234 + mem[_10234]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10234 + ceil32(return_data.size) + ceil32(32 * mem[_10234 + mem[_10234]]) + 1
                    mem[_10234 + ceil32(return_data.size)] = _10522
                    require return_data.size >= _10378 + (32 * _10522) + 32
                    mem[_10234 + ceil32(return_data.size) + 32 len 32 * _10522] = mem[_10234 + _10378 + 32 len 32 * _10522]
                    if _10522 < 1:
                        revert with 0, 17
                    if _10522 - 1 >= _10522:
                        revert with 0, 50
                    return _7032, mem[(32 * _10522 - 1) + _10234 + ceil32(return_data.size) + 32]
                _7389 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7389]:
                    revert with 0, 50
                mem[_7389 + 32] = stor1
                if 1 >= mem[_7389]:
                    revert with 0, 50
                mem[_7389 + 64] = stor1
                if 2 >= mem[_7389]:
                    revert with 0, 50
                mem[_7389 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                if 3 >= mem[_7389]:
                    revert with 0, 50
                mem[_7389 + 128] = address(ext_call.return_data[0])
                mem[_7389 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7389 + 164] = arg3 / 2
                mem[_7389 + 196] = 64
                mem[_7389 + 228] = mem[_7389]
                idx = 0
                s = _7389 + 32
                t = _7389 + 260
                while idx < mem[_7389]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7389 + (32 * mem[_7389]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10236 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10380 = mem[_10236]
                require mem[_10236] <= test266151307()
                require _10236 + mem[_10236] + 31 < _10236 + return_data.size
                _10524 = mem[_10236 + mem[_10236]]
                if mem[_10236 + mem[_10236]] > test266151307():
                    revert with 0, 65
                if _10236 + ceil32(return_data.size) + ceil32(32 * mem[_10236 + mem[_10236]]) + 1 > test266151307() or ceil32(32 * mem[_10236 + mem[_10236]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10236 + ceil32(return_data.size) + ceil32(32 * mem[_10236 + mem[_10236]]) + 1
                mem[_10236 + ceil32(return_data.size)] = _10524
                require return_data.size >= _10380 + (32 * _10524) + 32
                mem[_10236 + ceil32(return_data.size) + 32 len 32 * _10524] = mem[_10236 + _10380 + 32 len 32 * _10524]
                if _10524 < 1:
                    revert with 0, 17
                if _10524 - 1 >= _10524:
                    revert with 0, 50
                return _7032, mem[(32 * _10524 - 1) + _10236 + ceil32(return_data.size) + 32]
            if stor1 == address(ext_call.return_data[0]):
                _7393 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7393]:
                    revert with 0, 50
                mem[_7393 + 32] = stor1
                if 1 >= mem[_7393]:
                    revert with 0, 50
                mem[_7393 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7393]:
                    revert with 0, 50
                mem[_7393 + 96] = stor1
                mem[_7393 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7393 + 132] = arg3 / 2
                mem[_7393 + 164] = 64
                mem[_7393 + 196] = mem[_7393]
                idx = 0
                s = _7393 + 32
                t = _7393 + 228
                while idx < mem[_7393]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7393 + (32 * mem[_7393]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10238 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10382 = mem[_10238]
                require mem[_10238] <= test266151307()
                require _10238 + mem[_10238] + 31 < _10238 + return_data.size
                _10526 = mem[_10238 + mem[_10238]]
                if mem[_10238 + mem[_10238]] > test266151307():
                    revert with 0, 65
                if _10238 + ceil32(return_data.size) + ceil32(32 * mem[_10238 + mem[_10238]]) + 1 > test266151307() or ceil32(32 * mem[_10238 + mem[_10238]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10238 + ceil32(return_data.size) + ceil32(32 * mem[_10238 + mem[_10238]]) + 1
                mem[_10238 + ceil32(return_data.size)] = _10526
                require return_data.size >= _10382 + (32 * _10526) + 32
                mem[_10238 + ceil32(return_data.size) + 32 len 32 * _10526] = mem[_10238 + _10382 + 32 len 32 * _10526]
                if _10526 < 1:
                    revert with 0, 17
                if _10526 - 1 >= _10526:
                    revert with 0, 50
                return _7032, mem[(32 * _10526 - 1) + _10238 + ceil32(return_data.size) + 32]
            _7391 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7391]:
                revert with 0, 50
            mem[_7391 + 32] = stor1
            if 1 >= mem[_7391]:
                revert with 0, 50
            mem[_7391 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7391]:
                revert with 0, 50
            mem[_7391 + 96] = stor1
            if 3 >= mem[_7391]:
                revert with 0, 50
            mem[_7391 + 128] = address(ext_call.return_data[0])
            mem[_7391 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7391 + 164] = arg3 / 2
            mem[_7391 + 196] = 64
            mem[_7391 + 228] = mem[_7391]
            idx = 0
            s = _7391 + 32
            t = _7391 + 260
            while idx < mem[_7391]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7391 + (32 * mem[_7391]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10237 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10381 = mem[_10237]
            require mem[_10237] <= test266151307()
            require _10237 + mem[_10237] + 31 < _10237 + return_data.size
            _10525 = mem[_10237 + mem[_10237]]
            if mem[_10237 + mem[_10237]] > test266151307():
                revert with 0, 65
            if _10237 + ceil32(return_data.size) + ceil32(32 * mem[_10237 + mem[_10237]]) + 1 > test266151307() or ceil32(32 * mem[_10237 + mem[_10237]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10237 + ceil32(return_data.size) + ceil32(32 * mem[_10237 + mem[_10237]]) + 1
            mem[_10237 + ceil32(return_data.size)] = _10525
            require return_data.size >= _10381 + (32 * _10525) + 32
            mem[_10237 + ceil32(return_data.size) + 32 len 32 * _10525] = mem[_10237 + _10381 + 32 len 32 * _10525]
            if _10525 < 1:
                revert with 0, 17
            if _10525 - 1 >= _10525:
                revert with 0, 50
            return _7032, mem[(32 * _10525 - 1) + _10237 + ceil32(return_data.size) + 32]
        if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
            _7297 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_7297]:
                revert with 0, 50
            mem[_7297 + 32] = stor1
            if 1 >= mem[_7297]:
                revert with 0, 50
            mem[_7297 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7297]:
                revert with 0, 50
            mem[_7297 + 96] = address(ext_call.return_data[0])
            mem[_7297 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7297 + 132] = arg3 / 2
            mem[_7297 + 164] = 64
            mem[_7297 + 196] = mem[_7297]
            idx = 0
            s = _7297 + 32
            t = _7297 + 228
            while idx < mem[_7297]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7297 + (32 * mem[_7297]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10239 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10383 = mem[_10239]
            require mem[_10239] <= test266151307()
            require _10239 + mem[_10239] + 31 < _10239 + return_data.size
            _10527 = mem[_10239 + mem[_10239]]
            if mem[_10239 + mem[_10239]] > test266151307():
                revert with 0, 65
            if _10239 + ceil32(return_data.size) + ceil32(32 * mem[_10239 + mem[_10239]]) + 1 > test266151307() or ceil32(32 * mem[_10239 + mem[_10239]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10239 + ceil32(return_data.size) + ceil32(32 * mem[_10239 + mem[_10239]]) + 1
            mem[_10239 + ceil32(return_data.size)] = _10527
            require return_data.size >= _10383 + (32 * _10527) + 32
            mem[_10239 + ceil32(return_data.size) + 32 len 32 * _10527] = mem[_10239 + _10383 + 32 len 32 * _10527]
            if _10527 < 1:
                revert with 0, 17
            if _10527 - 1 >= _10527:
                revert with 0, 50
            return _7032, mem[(32 * _10527 - 1) + _10239 + ceil32(return_data.size) + 32]
        _7299 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 192
        if 0 >= mem[_7299]:
            revert with 0, 50
        mem[_7299 + 32] = stor1
        if 1 >= mem[_7299]:
            revert with 0, 50
        mem[_7299 + 64] = stor3[stor1][address(arg2)]
        if 2 >= mem[_7299]:
            revert with 0, 50
        mem[_7299 + 96] = stor1
        if 3 >= mem[_7299]:
            revert with 0, 50
        mem[_7299 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
        if 4 >= mem[_7299]:
            revert with 0, 50
        mem[_7299 + 160] = address(ext_call.return_data[0])
        mem[_7299 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_7299 + 196] = arg3 / 2
        mem[_7299 + 228] = 64
        mem[_7299 + 260] = mem[_7299]
        idx = 0
        s = _7299 + 32
        t = _7299 + 292
        while idx < mem[_7299]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _7299 + (32 * mem[_7299]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10240 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10384 = mem[_10240]
        require mem[_10240] <= test266151307()
        require _10240 + mem[_10240] + 31 < _10240 + return_data.size
        _10528 = mem[_10240 + mem[_10240]]
        if mem[_10240 + mem[_10240]] > test266151307():
            revert with 0, 65
        if _10240 + ceil32(return_data.size) + ceil32(32 * mem[_10240 + mem[_10240]]) + 1 > test266151307() or ceil32(32 * mem[_10240 + mem[_10240]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _10240 + ceil32(return_data.size) + ceil32(32 * mem[_10240 + mem[_10240]]) + 1
        mem[_10240 + ceil32(return_data.size)] = _10528
        require return_data.size >= _10384 + (32 * _10528) + 32
        mem[_10240 + ceil32(return_data.size) + 32 len 32 * _10528] = mem[_10240 + _10384 + 32 len 32 * _10528]
        if _10528 < 1:
            revert with 0, 17
        if _10528 - 1 >= _10528:
            revert with 0, 50
        return _7032, mem[(32 * _10528 - 1) + _10240 + ceil32(return_data.size) + 32]
    if stor1 == stor1:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
        require ext_code.size(arg2)
        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _3753 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _3801 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _3753 + (32 * _3801) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3801] = mem[(2 * ceil32(return_data.size)) + _3753 + 224 len 32 * _3801]
        if _3801 < 1:
            revert with 0, 17
        if _3801 - 1 >= _3801:
            revert with 0, 50
        _7029 = mem[(32 * _3801 - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[0] = arg2
        mem[32] = sha3(address(ext_call.return_data[0]), 3)
        if not stor3[stor1][address(arg2)]:
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if stor1 == stor1:
                    _7465 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7465]:
                        revert with 0, 50
                    mem[_7465 + 32] = stor1
                    if 1 >= mem[_7465]:
                        revert with 0, 50
                    mem[_7465 + 64] = address(ext_call.return_data[0])
                    mem[_7465 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7465 + 100] = arg3 / 2
                    mem[_7465 + 132] = 64
                    mem[_7465 + 164] = mem[_7465]
                    idx = 0
                    s = _7465 + 32
                    t = _7465 + 196
                    while idx < mem[_7465]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7465 + (32 * mem[_7465]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10193 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10337 = mem[_10193]
                    require mem[_10193] <= test266151307()
                    require _10193 + mem[_10193] + 31 < _10193 + return_data.size
                    _10481 = mem[_10193 + mem[_10193]]
                    if mem[_10193 + mem[_10193]] > test266151307():
                        revert with 0, 65
                    if _10193 + ceil32(return_data.size) + ceil32(32 * mem[_10193 + mem[_10193]]) + 1 > test266151307() or ceil32(32 * mem[_10193 + mem[_10193]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10193 + ceil32(return_data.size) + ceil32(32 * mem[_10193 + mem[_10193]]) + 1
                    mem[_10193 + ceil32(return_data.size)] = _10481
                    require return_data.size >= _10337 + (32 * _10481) + 32
                    mem[_10193 + ceil32(return_data.size) + 32 len 32 * _10481] = mem[_10193 + _10337 + 32 len 32 * _10481]
                    if _10481 < 1:
                        revert with 0, 17
                    if _10481 - 1 >= _10481:
                        revert with 0, 50
                    return _7029, mem[(32 * _10481 - 1) + _10193 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7580 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7580]:
                        revert with 0, 50
                    mem[_7580 + 32] = stor1
                    if 1 >= mem[_7580]:
                        revert with 0, 50
                    mem[_7580 + 64] = address(ext_call.return_data[0])
                    mem[_7580 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7580 + 100] = arg3 / 2
                    mem[_7580 + 132] = 64
                    mem[_7580 + 164] = mem[_7580]
                    idx = 0
                    s = _7580 + 32
                    t = _7580 + 196
                    while idx < mem[_7580]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7580 + (32 * mem[_7580]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10195 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10339 = mem[_10195]
                    require mem[_10195] <= test266151307()
                    require _10195 + mem[_10195] + 31 < _10195 + return_data.size
                    _10483 = mem[_10195 + mem[_10195]]
                    if mem[_10195 + mem[_10195]] > test266151307():
                        revert with 0, 65
                    if _10195 + ceil32(return_data.size) + ceil32(32 * mem[_10195 + mem[_10195]]) + 1 > test266151307() or ceil32(32 * mem[_10195 + mem[_10195]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10195 + ceil32(return_data.size) + ceil32(32 * mem[_10195 + mem[_10195]]) + 1
                    mem[_10195 + ceil32(return_data.size)] = _10483
                    require return_data.size >= _10339 + (32 * _10483) + 32
                    mem[_10195 + ceil32(return_data.size) + 32 len 32 * _10483] = mem[_10195 + _10339 + 32 len 32 * _10483]
                    if _10483 < 1:
                        revert with 0, 17
                    if _10483 - 1 >= _10483:
                        revert with 0, 50
                    return _7029, mem[(32 * _10483 - 1) + _10195 + ceil32(return_data.size) + 32]
                _7578 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7578]:
                    revert with 0, 50
                mem[_7578 + 32] = stor1
                if 1 >= mem[_7578]:
                    revert with 0, 50
                mem[_7578 + 64] = stor1
                if 2 >= mem[_7578]:
                    revert with 0, 50
                mem[_7578 + 96] = address(ext_call.return_data[0])
                mem[_7578 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7578 + 132] = arg3 / 2
                mem[_7578 + 164] = 64
                mem[_7578 + 196] = mem[_7578]
                idx = 0
                s = _7578 + 32
                t = _7578 + 228
                while idx < mem[_7578]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7578 + (32 * mem[_7578]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10194 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10338 = mem[_10194]
                require mem[_10194] <= test266151307()
                require _10194 + mem[_10194] + 31 < _10194 + return_data.size
                _10482 = mem[_10194 + mem[_10194]]
                if mem[_10194 + mem[_10194]] > test266151307():
                    revert with 0, 65
                if _10194 + ceil32(return_data.size) + ceil32(32 * mem[_10194 + mem[_10194]]) + 1 > test266151307() or ceil32(32 * mem[_10194 + mem[_10194]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10194 + ceil32(return_data.size) + ceil32(32 * mem[_10194 + mem[_10194]]) + 1
                mem[_10194 + ceil32(return_data.size)] = _10482
                require return_data.size >= _10338 + (32 * _10482) + 32
                mem[_10194 + ceil32(return_data.size) + 32 len 32 * _10482] = mem[_10194 + _10338 + 32 len 32 * _10482]
                if _10482 < 1:
                    revert with 0, 17
                if _10482 - 1 >= _10482:
                    revert with 0, 50
                return _7029, mem[(32 * _10482 - 1) + _10194 + ceil32(return_data.size) + 32]
            _7277 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7277]:
                revert with 0, 50
            mem[_7277 + 32] = stor1
            if 1 >= mem[_7277]:
                revert with 0, 50
            mem[_7277 + 64] = stor1
            if 2 >= mem[_7277]:
                revert with 0, 50
            mem[_7277 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 3 >= mem[_7277]:
                revert with 0, 50
            mem[_7277 + 128] = address(ext_call.return_data[0])
            mem[_7277 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7277 + 164] = arg3 / 2
            mem[_7277 + 196] = 64
            mem[_7277 + 228] = mem[_7277]
            idx = 0
            s = _7277 + 32
            t = _7277 + 260
            while idx < mem[_7277]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7277 + (32 * mem[_7277]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10196 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10340 = mem[_10196]
            require mem[_10196] <= test266151307()
            require _10196 + mem[_10196] + 31 < _10196 + return_data.size
            _10484 = mem[_10196 + mem[_10196]]
            if mem[_10196 + mem[_10196]] > test266151307():
                revert with 0, 65
            if _10196 + ceil32(return_data.size) + ceil32(32 * mem[_10196 + mem[_10196]]) + 1 > test266151307() or ceil32(32 * mem[_10196 + mem[_10196]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10196 + ceil32(return_data.size) + ceil32(32 * mem[_10196 + mem[_10196]]) + 1
            mem[_10196 + ceil32(return_data.size)] = _10484
            require return_data.size >= _10340 + (32 * _10484) + 32
            mem[_10196 + ceil32(return_data.size) + 32 len 32 * _10484] = mem[_10196 + _10340 + 32 len 32 * _10484]
            if _10484 < 1:
                revert with 0, 17
            if _10484 - 1 >= _10484:
                revert with 0, 50
            return _7029, mem[(32 * _10484 - 1) + _10196 + ceil32(return_data.size) + 32]
        if not stor3[address(ext_call.return_data[0])][address(arg2)]:
            if not stor3[stor1][address(arg2)]:
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor1 == stor1:
                        _7583 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7583]:
                            revert with 0, 50
                        mem[_7583 + 32] = stor1
                        if 1 >= mem[_7583]:
                            revert with 0, 50
                        mem[_7583 + 64] = address(ext_call.return_data[0])
                        mem[_7583 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7583 + 100] = arg3 / 2
                        mem[_7583 + 132] = 64
                        mem[_7583 + 164] = mem[_7583]
                        idx = 0
                        s = _7583 + 32
                        t = _7583 + 196
                        while idx < mem[_7583]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7583 + (32 * mem[_7583]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10197 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10341 = mem[_10197]
                        require mem[_10197] <= test266151307()
                        require _10197 + mem[_10197] + 31 < _10197 + return_data.size
                        _10485 = mem[_10197 + mem[_10197]]
                        if mem[_10197 + mem[_10197]] > test266151307():
                            revert with 0, 65
                        if _10197 + ceil32(return_data.size) + ceil32(32 * mem[_10197 + mem[_10197]]) + 1 > test266151307() or ceil32(32 * mem[_10197 + mem[_10197]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10197 + ceil32(return_data.size) + ceil32(32 * mem[_10197 + mem[_10197]]) + 1
                        mem[_10197 + ceil32(return_data.size)] = _10485
                        require return_data.size >= _10341 + (32 * _10485) + 32
                        mem[_10197 + ceil32(return_data.size) + 32 len 32 * _10485] = mem[_10197 + _10341 + 32 len 32 * _10485]
                        if _10485 < 1:
                            revert with 0, 17
                        if _10485 - 1 >= _10485:
                            revert with 0, 50
                        return _7029, mem[(32 * _10485 - 1) + _10197 + ceil32(return_data.size) + 32]
                    if stor1 == address(ext_call.return_data[0]):
                        _7722 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7722]:
                            revert with 0, 50
                        mem[_7722 + 32] = stor1
                        if 1 >= mem[_7722]:
                            revert with 0, 50
                        mem[_7722 + 64] = address(ext_call.return_data[0])
                        mem[_7722 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7722 + 100] = arg3 / 2
                        mem[_7722 + 132] = 64
                        mem[_7722 + 164] = mem[_7722]
                        idx = 0
                        s = _7722 + 32
                        t = _7722 + 196
                        while idx < mem[_7722]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7722 + (32 * mem[_7722]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10199 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10343 = mem[_10199]
                        require mem[_10199] <= test266151307()
                        require _10199 + mem[_10199] + 31 < _10199 + return_data.size
                        _10487 = mem[_10199 + mem[_10199]]
                        if mem[_10199 + mem[_10199]] > test266151307():
                            revert with 0, 65
                        if _10199 + ceil32(return_data.size) + ceil32(32 * mem[_10199 + mem[_10199]]) + 1 > test266151307() or ceil32(32 * mem[_10199 + mem[_10199]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10199 + ceil32(return_data.size) + ceil32(32 * mem[_10199 + mem[_10199]]) + 1
                        mem[_10199 + ceil32(return_data.size)] = _10487
                        require return_data.size >= _10343 + (32 * _10487) + 32
                        mem[_10199 + ceil32(return_data.size) + 32 len 32 * _10487] = mem[_10199 + _10343 + 32 len 32 * _10487]
                        if _10487 < 1:
                            revert with 0, 17
                        if _10487 - 1 >= _10487:
                            revert with 0, 50
                        return _7029, mem[(32 * _10487 - 1) + _10199 + ceil32(return_data.size) + 32]
                    _7720 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7720]:
                        revert with 0, 50
                    mem[_7720 + 32] = stor1
                    if 1 >= mem[_7720]:
                        revert with 0, 50
                    mem[_7720 + 64] = stor1
                    if 2 >= mem[_7720]:
                        revert with 0, 50
                    mem[_7720 + 96] = address(ext_call.return_data[0])
                    mem[_7720 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7720 + 132] = arg3 / 2
                    mem[_7720 + 164] = 64
                    mem[_7720 + 196] = mem[_7720]
                    idx = 0
                    s = _7720 + 32
                    t = _7720 + 228
                    while idx < mem[_7720]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7720 + (32 * mem[_7720]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10198 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10342 = mem[_10198]
                    require mem[_10198] <= test266151307()
                    require _10198 + mem[_10198] + 31 < _10198 + return_data.size
                    _10486 = mem[_10198 + mem[_10198]]
                    if mem[_10198 + mem[_10198]] > test266151307():
                        revert with 0, 65
                    if _10198 + ceil32(return_data.size) + ceil32(32 * mem[_10198 + mem[_10198]]) + 1 > test266151307() or ceil32(32 * mem[_10198 + mem[_10198]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10198 + ceil32(return_data.size) + ceil32(32 * mem[_10198 + mem[_10198]]) + 1
                    mem[_10198 + ceil32(return_data.size)] = _10486
                    require return_data.size >= _10342 + (32 * _10486) + 32
                    mem[_10198 + ceil32(return_data.size) + 32 len 32 * _10486] = mem[_10198 + _10342 + 32 len 32 * _10486]
                    if _10486 < 1:
                        revert with 0, 17
                    if _10486 - 1 >= _10486:
                        revert with 0, 50
                    return _7029, mem[(32 * _10486 - 1) + _10198 + ceil32(return_data.size) + 32]
                _7362 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7362]:
                    revert with 0, 50
                mem[_7362 + 32] = stor1
                if 1 >= mem[_7362]:
                    revert with 0, 50
                mem[_7362 + 64] = stor1
                if 2 >= mem[_7362]:
                    revert with 0, 50
                mem[_7362 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                if 3 >= mem[_7362]:
                    revert with 0, 50
                mem[_7362 + 128] = address(ext_call.return_data[0])
                mem[_7362 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7362 + 164] = arg3 / 2
                mem[_7362 + 196] = 64
                mem[_7362 + 228] = mem[_7362]
                idx = 0
                s = _7362 + 32
                t = _7362 + 260
                while idx < mem[_7362]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7362 + (32 * mem[_7362]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10200 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10344 = mem[_10200]
                require mem[_10200] <= test266151307()
                require _10200 + mem[_10200] + 31 < _10200 + return_data.size
                _10488 = mem[_10200 + mem[_10200]]
                if mem[_10200 + mem[_10200]] > test266151307():
                    revert with 0, 65
                if _10200 + ceil32(return_data.size) + ceil32(32 * mem[_10200 + mem[_10200]]) + 1 > test266151307() or ceil32(32 * mem[_10200 + mem[_10200]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10200 + ceil32(return_data.size) + ceil32(32 * mem[_10200 + mem[_10200]]) + 1
                mem[_10200 + ceil32(return_data.size)] = _10488
                require return_data.size >= _10344 + (32 * _10488) + 32
                mem[_10200 + ceil32(return_data.size) + 32 len 32 * _10488] = mem[_10200 + _10344 + 32 len 32 * _10488]
                if _10488 < 1:
                    revert with 0, 17
                if _10488 - 1 >= _10488:
                    revert with 0, 50
                return _7029, mem[(32 * _10488 - 1) + _10200 + ceil32(return_data.size) + 32]
            if stor1 == address(ext_call.return_data[0]):
                _7366 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7366]:
                    revert with 0, 50
                mem[_7366 + 32] = stor1
                if 1 >= mem[_7366]:
                    revert with 0, 50
                mem[_7366 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7366]:
                    revert with 0, 50
                mem[_7366 + 96] = stor1
                mem[_7366 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7366 + 132] = arg3 / 2
                mem[_7366 + 164] = 64
                mem[_7366 + 196] = mem[_7366]
                idx = 0
                s = _7366 + 32
                t = _7366 + 228
                while idx < mem[_7366]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7366 + (32 * mem[_7366]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10202 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10346 = mem[_10202]
                require mem[_10202] <= test266151307()
                require _10202 + mem[_10202] + 31 < _10202 + return_data.size
                _10490 = mem[_10202 + mem[_10202]]
                if mem[_10202 + mem[_10202]] > test266151307():
                    revert with 0, 65
                if _10202 + ceil32(return_data.size) + ceil32(32 * mem[_10202 + mem[_10202]]) + 1 > test266151307() or ceil32(32 * mem[_10202 + mem[_10202]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10202 + ceil32(return_data.size) + ceil32(32 * mem[_10202 + mem[_10202]]) + 1
                mem[_10202 + ceil32(return_data.size)] = _10490
                require return_data.size >= _10346 + (32 * _10490) + 32
                mem[_10202 + ceil32(return_data.size) + 32 len 32 * _10490] = mem[_10202 + _10346 + 32 len 32 * _10490]
                if _10490 < 1:
                    revert with 0, 17
                if _10490 - 1 >= _10490:
                    revert with 0, 50
                return _7029, mem[(32 * _10490 - 1) + _10202 + ceil32(return_data.size) + 32]
            _7364 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7364]:
                revert with 0, 50
            mem[_7364 + 32] = stor1
            if 1 >= mem[_7364]:
                revert with 0, 50
            mem[_7364 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7364]:
                revert with 0, 50
            mem[_7364 + 96] = stor1
            if 3 >= mem[_7364]:
                revert with 0, 50
            mem[_7364 + 128] = address(ext_call.return_data[0])
            mem[_7364 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7364 + 164] = arg3 / 2
            mem[_7364 + 196] = 64
            mem[_7364 + 228] = mem[_7364]
            idx = 0
            s = _7364 + 32
            t = _7364 + 260
            while idx < mem[_7364]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7364 + (32 * mem[_7364]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10201 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10345 = mem[_10201]
            require mem[_10201] <= test266151307()
            require _10201 + mem[_10201] + 31 < _10201 + return_data.size
            _10489 = mem[_10201 + mem[_10201]]
            if mem[_10201 + mem[_10201]] > test266151307():
                revert with 0, 65
            if _10201 + ceil32(return_data.size) + ceil32(32 * mem[_10201 + mem[_10201]]) + 1 > test266151307() or ceil32(32 * mem[_10201 + mem[_10201]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10201 + ceil32(return_data.size) + ceil32(32 * mem[_10201 + mem[_10201]]) + 1
            mem[_10201 + ceil32(return_data.size)] = _10489
            require return_data.size >= _10345 + (32 * _10489) + 32
            mem[_10201 + ceil32(return_data.size) + 32 len 32 * _10489] = mem[_10201 + _10345 + 32 len 32 * _10489]
            if _10489 < 1:
                revert with 0, 17
            if _10489 - 1 >= _10489:
                revert with 0, 50
            return _7029, mem[(32 * _10489 - 1) + _10201 + ceil32(return_data.size) + 32]
        if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
            _7279 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_7279]:
                revert with 0, 50
            mem[_7279 + 32] = stor1
            if 1 >= mem[_7279]:
                revert with 0, 50
            mem[_7279 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7279]:
                revert with 0, 50
            mem[_7279 + 96] = address(ext_call.return_data[0])
            mem[_7279 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7279 + 132] = arg3 / 2
            mem[_7279 + 164] = 64
            mem[_7279 + 196] = mem[_7279]
            idx = 0
            s = _7279 + 32
            t = _7279 + 228
            while idx < mem[_7279]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7279 + (32 * mem[_7279]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10203 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10347 = mem[_10203]
            require mem[_10203] <= test266151307()
            require _10203 + mem[_10203] + 31 < _10203 + return_data.size
            _10491 = mem[_10203 + mem[_10203]]
            if mem[_10203 + mem[_10203]] > test266151307():
                revert with 0, 65
            if _10203 + ceil32(return_data.size) + ceil32(32 * mem[_10203 + mem[_10203]]) + 1 > test266151307() or ceil32(32 * mem[_10203 + mem[_10203]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10203 + ceil32(return_data.size) + ceil32(32 * mem[_10203 + mem[_10203]]) + 1
            mem[_10203 + ceil32(return_data.size)] = _10491
            require return_data.size >= _10347 + (32 * _10491) + 32
            mem[_10203 + ceil32(return_data.size) + 32 len 32 * _10491] = mem[_10203 + _10347 + 32 len 32 * _10491]
            if _10491 < 1:
                revert with 0, 17
            if _10491 - 1 >= _10491:
                revert with 0, 50
            return _7029, mem[(32 * _10491 - 1) + _10203 + ceil32(return_data.size) + 32]
        _7281 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 192
        if 0 >= mem[_7281]:
            revert with 0, 50
        mem[_7281 + 32] = stor1
        if 1 >= mem[_7281]:
            revert with 0, 50
        mem[_7281 + 64] = stor3[stor1][address(arg2)]
        if 2 >= mem[_7281]:
            revert with 0, 50
        mem[_7281 + 96] = stor1
        if 3 >= mem[_7281]:
            revert with 0, 50
        mem[_7281 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
        if 4 >= mem[_7281]:
            revert with 0, 50
        mem[_7281 + 160] = address(ext_call.return_data[0])
        mem[_7281 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_7281 + 196] = arg3 / 2
        mem[_7281 + 228] = 64
        mem[_7281 + 260] = mem[_7281]
        idx = 0
        s = _7281 + 32
        t = _7281 + 292
        while idx < mem[_7281]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _7281 + (32 * mem[_7281]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10204 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10348 = mem[_10204]
        require mem[_10204] <= test266151307()
        require _10204 + mem[_10204] + 31 < _10204 + return_data.size
        _10492 = mem[_10204 + mem[_10204]]
        if mem[_10204 + mem[_10204]] > test266151307():
            revert with 0, 65
        if _10204 + ceil32(return_data.size) + ceil32(32 * mem[_10204 + mem[_10204]]) + 1 > test266151307() or ceil32(32 * mem[_10204 + mem[_10204]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _10204 + ceil32(return_data.size) + ceil32(32 * mem[_10204 + mem[_10204]]) + 1
        mem[_10204 + ceil32(return_data.size)] = _10492
        require return_data.size >= _10348 + (32 * _10492) + 32
        mem[_10204 + ceil32(return_data.size) + 32 len 32 * _10492] = mem[_10204 + _10348 + 32 len 32 * _10492]
        if _10492 < 1:
            revert with 0, 17
        if _10492 - 1 >= _10492:
            revert with 0, 50
        return _7029, mem[(32 * _10492 - 1) + _10204 + ceil32(return_data.size) + 32]
    if stor1 == address(ext_call.return_data[0]):
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
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
        require ext_code.size(arg2)
        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args Mask(255, 1, arg3), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _3755 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _3803 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _3755 + (32 * _3803) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _3803] = mem[(2 * ceil32(return_data.size)) + _3755 + 224 len 32 * _3803]
        if _3803 < 1:
            revert with 0, 17
        if _3803 - 1 >= _3803:
            revert with 0, 50
        _7031 = mem[(32 * _3803 - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[0] = arg2
        mem[32] = sha3(address(ext_call.return_data[0]), 3)
        if not stor3[stor1][address(arg2)]:
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if stor1 == stor1:
                    _7481 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7481]:
                        revert with 0, 50
                    mem[_7481 + 32] = stor1
                    if 1 >= mem[_7481]:
                        revert with 0, 50
                    mem[_7481 + 64] = address(ext_call.return_data[0])
                    mem[_7481 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7481 + 100] = arg3 / 2
                    mem[_7481 + 132] = 64
                    mem[_7481 + 164] = mem[_7481]
                    idx = 0
                    s = _7481 + 32
                    t = _7481 + 196
                    while idx < mem[_7481]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7481 + (32 * mem[_7481]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10217 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10361 = mem[_10217]
                    require mem[_10217] <= test266151307()
                    require _10217 + mem[_10217] + 31 < _10217 + return_data.size
                    _10505 = mem[_10217 + mem[_10217]]
                    if mem[_10217 + mem[_10217]] > test266151307():
                        revert with 0, 65
                    if _10217 + ceil32(return_data.size) + ceil32(32 * mem[_10217 + mem[_10217]]) + 1 > test266151307() or ceil32(32 * mem[_10217 + mem[_10217]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10217 + ceil32(return_data.size) + ceil32(32 * mem[_10217 + mem[_10217]]) + 1
                    mem[_10217 + ceil32(return_data.size)] = _10505
                    require return_data.size >= _10361 + (32 * _10505) + 32
                    mem[_10217 + ceil32(return_data.size) + 32 len 32 * _10505] = mem[_10217 + _10361 + 32 len 32 * _10505]
                    if _10505 < 1:
                        revert with 0, 17
                    if _10505 - 1 >= _10505:
                        revert with 0, 50
                    return _7031, mem[(32 * _10505 - 1) + _10217 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7604 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7604]:
                        revert with 0, 50
                    mem[_7604 + 32] = stor1
                    if 1 >= mem[_7604]:
                        revert with 0, 50
                    mem[_7604 + 64] = address(ext_call.return_data[0])
                    mem[_7604 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7604 + 100] = arg3 / 2
                    mem[_7604 + 132] = 64
                    mem[_7604 + 164] = mem[_7604]
                    idx = 0
                    s = _7604 + 32
                    t = _7604 + 196
                    while idx < mem[_7604]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7604 + (32 * mem[_7604]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10219 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10363 = mem[_10219]
                    require mem[_10219] <= test266151307()
                    require _10219 + mem[_10219] + 31 < _10219 + return_data.size
                    _10507 = mem[_10219 + mem[_10219]]
                    if mem[_10219 + mem[_10219]] > test266151307():
                        revert with 0, 65
                    if _10219 + ceil32(return_data.size) + ceil32(32 * mem[_10219 + mem[_10219]]) + 1 > test266151307() or ceil32(32 * mem[_10219 + mem[_10219]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10219 + ceil32(return_data.size) + ceil32(32 * mem[_10219 + mem[_10219]]) + 1
                    mem[_10219 + ceil32(return_data.size)] = _10507
                    require return_data.size >= _10363 + (32 * _10507) + 32
                    mem[_10219 + ceil32(return_data.size) + 32 len 32 * _10507] = mem[_10219 + _10363 + 32 len 32 * _10507]
                    if _10507 < 1:
                        revert with 0, 17
                    if _10507 - 1 >= _10507:
                        revert with 0, 50
                    return _7031, mem[(32 * _10507 - 1) + _10219 + ceil32(return_data.size) + 32]
                _7602 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7602]:
                    revert with 0, 50
                mem[_7602 + 32] = stor1
                if 1 >= mem[_7602]:
                    revert with 0, 50
                mem[_7602 + 64] = stor1
                if 2 >= mem[_7602]:
                    revert with 0, 50
                mem[_7602 + 96] = address(ext_call.return_data[0])
                mem[_7602 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7602 + 132] = arg3 / 2
                mem[_7602 + 164] = 64
                mem[_7602 + 196] = mem[_7602]
                idx = 0
                s = _7602 + 32
                t = _7602 + 228
                while idx < mem[_7602]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7602 + (32 * mem[_7602]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10218 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10362 = mem[_10218]
                require mem[_10218] <= test266151307()
                require _10218 + mem[_10218] + 31 < _10218 + return_data.size
                _10506 = mem[_10218 + mem[_10218]]
                if mem[_10218 + mem[_10218]] > test266151307():
                    revert with 0, 65
                if _10218 + ceil32(return_data.size) + ceil32(32 * mem[_10218 + mem[_10218]]) + 1 > test266151307() or ceil32(32 * mem[_10218 + mem[_10218]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10218 + ceil32(return_data.size) + ceil32(32 * mem[_10218 + mem[_10218]]) + 1
                mem[_10218 + ceil32(return_data.size)] = _10506
                require return_data.size >= _10362 + (32 * _10506) + 32
                mem[_10218 + ceil32(return_data.size) + 32 len 32 * _10506] = mem[_10218 + _10362 + 32 len 32 * _10506]
                if _10506 < 1:
                    revert with 0, 17
                if _10506 - 1 >= _10506:
                    revert with 0, 50
                return _7031, mem[(32 * _10506 - 1) + _10218 + ceil32(return_data.size) + 32]
            _7289 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7289]:
                revert with 0, 50
            mem[_7289 + 32] = stor1
            if 1 >= mem[_7289]:
                revert with 0, 50
            mem[_7289 + 64] = stor1
            if 2 >= mem[_7289]:
                revert with 0, 50
            mem[_7289 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 3 >= mem[_7289]:
                revert with 0, 50
            mem[_7289 + 128] = address(ext_call.return_data[0])
            mem[_7289 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7289 + 164] = arg3 / 2
            mem[_7289 + 196] = 64
            mem[_7289 + 228] = mem[_7289]
            idx = 0
            s = _7289 + 32
            t = _7289 + 260
            while idx < mem[_7289]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7289 + (32 * mem[_7289]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10220 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10364 = mem[_10220]
            require mem[_10220] <= test266151307()
            require _10220 + mem[_10220] + 31 < _10220 + return_data.size
            _10508 = mem[_10220 + mem[_10220]]
            if mem[_10220 + mem[_10220]] > test266151307():
                revert with 0, 65
            if _10220 + ceil32(return_data.size) + ceil32(32 * mem[_10220 + mem[_10220]]) + 1 > test266151307() or ceil32(32 * mem[_10220 + mem[_10220]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10220 + ceil32(return_data.size) + ceil32(32 * mem[_10220 + mem[_10220]]) + 1
            mem[_10220 + ceil32(return_data.size)] = _10508
            require return_data.size >= _10364 + (32 * _10508) + 32
            mem[_10220 + ceil32(return_data.size) + 32 len 32 * _10508] = mem[_10220 + _10364 + 32 len 32 * _10508]
            if _10508 < 1:
                revert with 0, 17
            if _10508 - 1 >= _10508:
                revert with 0, 50
            return _7031, mem[(32 * _10508 - 1) + _10220 + ceil32(return_data.size) + 32]
        if not stor3[address(ext_call.return_data[0])][address(arg2)]:
            if not stor3[stor1][address(arg2)]:
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    if stor1 == stor1:
                        _7607 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7607]:
                            revert with 0, 50
                        mem[_7607 + 32] = stor1
                        if 1 >= mem[_7607]:
                            revert with 0, 50
                        mem[_7607 + 64] = address(ext_call.return_data[0])
                        mem[_7607 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7607 + 100] = arg3 / 2
                        mem[_7607 + 132] = 64
                        mem[_7607 + 164] = mem[_7607]
                        idx = 0
                        s = _7607 + 32
                        t = _7607 + 196
                        while idx < mem[_7607]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7607 + (32 * mem[_7607]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10221 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10365 = mem[_10221]
                        require mem[_10221] <= test266151307()
                        require _10221 + mem[_10221] + 31 < _10221 + return_data.size
                        _10509 = mem[_10221 + mem[_10221]]
                        if mem[_10221 + mem[_10221]] > test266151307():
                            revert with 0, 65
                        if _10221 + ceil32(return_data.size) + ceil32(32 * mem[_10221 + mem[_10221]]) + 1 > test266151307() or ceil32(32 * mem[_10221 + mem[_10221]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10221 + ceil32(return_data.size) + ceil32(32 * mem[_10221 + mem[_10221]]) + 1
                        mem[_10221 + ceil32(return_data.size)] = _10509
                        require return_data.size >= _10365 + (32 * _10509) + 32
                        mem[_10221 + ceil32(return_data.size) + 32 len 32 * _10509] = mem[_10221 + _10365 + 32 len 32 * _10509]
                        if _10509 < 1:
                            revert with 0, 17
                        if _10509 - 1 >= _10509:
                            revert with 0, 50
                        return _7031, mem[(32 * _10509 - 1) + _10221 + ceil32(return_data.size) + 32]
                    if stor1 == address(ext_call.return_data[0]):
                        _7744 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_7744]:
                            revert with 0, 50
                        mem[_7744 + 32] = stor1
                        if 1 >= mem[_7744]:
                            revert with 0, 50
                        mem[_7744 + 64] = address(ext_call.return_data[0])
                        mem[_7744 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7744 + 100] = arg3 / 2
                        mem[_7744 + 132] = 64
                        mem[_7744 + 164] = mem[_7744]
                        idx = 0
                        s = _7744 + 32
                        t = _7744 + 196
                        while idx < mem[_7744]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg2)
                        staticcall arg2.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7744 + (32 * mem[_7744]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10223 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10367 = mem[_10223]
                        require mem[_10223] <= test266151307()
                        require _10223 + mem[_10223] + 31 < _10223 + return_data.size
                        _10511 = mem[_10223 + mem[_10223]]
                        if mem[_10223 + mem[_10223]] > test266151307():
                            revert with 0, 65
                        if _10223 + ceil32(return_data.size) + ceil32(32 * mem[_10223 + mem[_10223]]) + 1 > test266151307() or ceil32(32 * mem[_10223 + mem[_10223]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _10223 + ceil32(return_data.size) + ceil32(32 * mem[_10223 + mem[_10223]]) + 1
                        mem[_10223 + ceil32(return_data.size)] = _10511
                        require return_data.size >= _10367 + (32 * _10511) + 32
                        mem[_10223 + ceil32(return_data.size) + 32 len 32 * _10511] = mem[_10223 + _10367 + 32 len 32 * _10511]
                        if _10511 < 1:
                            revert with 0, 17
                        if _10511 - 1 >= _10511:
                            revert with 0, 50
                        return _7031, mem[(32 * _10511 - 1) + _10223 + ceil32(return_data.size) + 32]
                    _7742 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_7742]:
                        revert with 0, 50
                    mem[_7742 + 32] = stor1
                    if 1 >= mem[_7742]:
                        revert with 0, 50
                    mem[_7742 + 64] = stor1
                    if 2 >= mem[_7742]:
                        revert with 0, 50
                    mem[_7742 + 96] = address(ext_call.return_data[0])
                    mem[_7742 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7742 + 132] = arg3 / 2
                    mem[_7742 + 164] = 64
                    mem[_7742 + 196] = mem[_7742]
                    idx = 0
                    s = _7742 + 32
                    t = _7742 + 228
                    while idx < mem[_7742]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7742 + (32 * mem[_7742]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10222 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10366 = mem[_10222]
                    require mem[_10222] <= test266151307()
                    require _10222 + mem[_10222] + 31 < _10222 + return_data.size
                    _10510 = mem[_10222 + mem[_10222]]
                    if mem[_10222 + mem[_10222]] > test266151307():
                        revert with 0, 65
                    if _10222 + ceil32(return_data.size) + ceil32(32 * mem[_10222 + mem[_10222]]) + 1 > test266151307() or ceil32(32 * mem[_10222 + mem[_10222]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10222 + ceil32(return_data.size) + ceil32(32 * mem[_10222 + mem[_10222]]) + 1
                    mem[_10222 + ceil32(return_data.size)] = _10510
                    require return_data.size >= _10366 + (32 * _10510) + 32
                    mem[_10222 + ceil32(return_data.size) + 32 len 32 * _10510] = mem[_10222 + _10366 + 32 len 32 * _10510]
                    if _10510 < 1:
                        revert with 0, 17
                    if _10510 - 1 >= _10510:
                        revert with 0, 50
                    return _7031, mem[(32 * _10510 - 1) + _10222 + ceil32(return_data.size) + 32]
                _7380 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                if 0 >= mem[_7380]:
                    revert with 0, 50
                mem[_7380 + 32] = stor1
                if 1 >= mem[_7380]:
                    revert with 0, 50
                mem[_7380 + 64] = stor1
                if 2 >= mem[_7380]:
                    revert with 0, 50
                mem[_7380 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
                if 3 >= mem[_7380]:
                    revert with 0, 50
                mem[_7380 + 128] = address(ext_call.return_data[0])
                mem[_7380 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7380 + 164] = arg3 / 2
                mem[_7380 + 196] = 64
                mem[_7380 + 228] = mem[_7380]
                idx = 0
                s = _7380 + 32
                t = _7380 + 260
                while idx < mem[_7380]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7380 + (32 * mem[_7380]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10224 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10368 = mem[_10224]
                require mem[_10224] <= test266151307()
                require _10224 + mem[_10224] + 31 < _10224 + return_data.size
                _10512 = mem[_10224 + mem[_10224]]
                if mem[_10224 + mem[_10224]] > test266151307():
                    revert with 0, 65
                if _10224 + ceil32(return_data.size) + ceil32(32 * mem[_10224 + mem[_10224]]) + 1 > test266151307() or ceil32(32 * mem[_10224 + mem[_10224]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10224 + ceil32(return_data.size) + ceil32(32 * mem[_10224 + mem[_10224]]) + 1
                mem[_10224 + ceil32(return_data.size)] = _10512
                require return_data.size >= _10368 + (32 * _10512) + 32
                mem[_10224 + ceil32(return_data.size) + 32 len 32 * _10512] = mem[_10224 + _10368 + 32 len 32 * _10512]
                if _10512 < 1:
                    revert with 0, 17
                if _10512 - 1 >= _10512:
                    revert with 0, 50
                return _7031, mem[(32 * _10512 - 1) + _10224 + ceil32(return_data.size) + 32]
            if stor1 == address(ext_call.return_data[0]):
                _7384 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7384]:
                    revert with 0, 50
                mem[_7384 + 32] = stor1
                if 1 >= mem[_7384]:
                    revert with 0, 50
                mem[_7384 + 64] = stor3[stor1][address(arg2)]
                if 2 >= mem[_7384]:
                    revert with 0, 50
                mem[_7384 + 96] = stor1
                mem[_7384 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7384 + 132] = arg3 / 2
                mem[_7384 + 164] = 64
                mem[_7384 + 196] = mem[_7384]
                idx = 0
                s = _7384 + 32
                t = _7384 + 228
                while idx < mem[_7384]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7384 + (32 * mem[_7384]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10226 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10370 = mem[_10226]
                require mem[_10226] <= test266151307()
                require _10226 + mem[_10226] + 31 < _10226 + return_data.size
                _10514 = mem[_10226 + mem[_10226]]
                if mem[_10226 + mem[_10226]] > test266151307():
                    revert with 0, 65
                if _10226 + ceil32(return_data.size) + ceil32(32 * mem[_10226 + mem[_10226]]) + 1 > test266151307() or ceil32(32 * mem[_10226 + mem[_10226]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10226 + ceil32(return_data.size) + ceil32(32 * mem[_10226 + mem[_10226]]) + 1
                mem[_10226 + ceil32(return_data.size)] = _10514
                require return_data.size >= _10370 + (32 * _10514) + 32
                mem[_10226 + ceil32(return_data.size) + 32 len 32 * _10514] = mem[_10226 + _10370 + 32 len 32 * _10514]
                if _10514 < 1:
                    revert with 0, 17
                if _10514 - 1 >= _10514:
                    revert with 0, 50
                return _7031, mem[(32 * _10514 - 1) + _10226 + ceil32(return_data.size) + 32]
            _7382 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7382]:
                revert with 0, 50
            mem[_7382 + 32] = stor1
            if 1 >= mem[_7382]:
                revert with 0, 50
            mem[_7382 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7382]:
                revert with 0, 50
            mem[_7382 + 96] = stor1
            if 3 >= mem[_7382]:
                revert with 0, 50
            mem[_7382 + 128] = address(ext_call.return_data[0])
            mem[_7382 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7382 + 164] = arg3 / 2
            mem[_7382 + 196] = 64
            mem[_7382 + 228] = mem[_7382]
            idx = 0
            s = _7382 + 32
            t = _7382 + 260
            while idx < mem[_7382]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7382 + (32 * mem[_7382]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10225 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10369 = mem[_10225]
            require mem[_10225] <= test266151307()
            require _10225 + mem[_10225] + 31 < _10225 + return_data.size
            _10513 = mem[_10225 + mem[_10225]]
            if mem[_10225 + mem[_10225]] > test266151307():
                revert with 0, 65
            if _10225 + ceil32(return_data.size) + ceil32(32 * mem[_10225 + mem[_10225]]) + 1 > test266151307() or ceil32(32 * mem[_10225 + mem[_10225]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10225 + ceil32(return_data.size) + ceil32(32 * mem[_10225 + mem[_10225]]) + 1
            mem[_10225 + ceil32(return_data.size)] = _10513
            require return_data.size >= _10369 + (32 * _10513) + 32
            mem[_10225 + ceil32(return_data.size) + 32 len 32 * _10513] = mem[_10225 + _10369 + 32 len 32 * _10513]
            if _10513 < 1:
                revert with 0, 17
            if _10513 - 1 >= _10513:
                revert with 0, 50
            return _7031, mem[(32 * _10513 - 1) + _10225 + ceil32(return_data.size) + 32]
        if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
            _7291 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_7291]:
                revert with 0, 50
            mem[_7291 + 32] = stor1
            if 1 >= mem[_7291]:
                revert with 0, 50
            mem[_7291 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7291]:
                revert with 0, 50
            mem[_7291 + 96] = address(ext_call.return_data[0])
            mem[_7291 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7291 + 132] = arg3 / 2
            mem[_7291 + 164] = 64
            mem[_7291 + 196] = mem[_7291]
            idx = 0
            s = _7291 + 32
            t = _7291 + 228
            while idx < mem[_7291]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7291 + (32 * mem[_7291]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10227 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10371 = mem[_10227]
            require mem[_10227] <= test266151307()
            require _10227 + mem[_10227] + 31 < _10227 + return_data.size
            _10515 = mem[_10227 + mem[_10227]]
            if mem[_10227 + mem[_10227]] > test266151307():
                revert with 0, 65
            if _10227 + ceil32(return_data.size) + ceil32(32 * mem[_10227 + mem[_10227]]) + 1 > test266151307() or ceil32(32 * mem[_10227 + mem[_10227]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10227 + ceil32(return_data.size) + ceil32(32 * mem[_10227 + mem[_10227]]) + 1
            mem[_10227 + ceil32(return_data.size)] = _10515
            require return_data.size >= _10371 + (32 * _10515) + 32
            mem[_10227 + ceil32(return_data.size) + 32 len 32 * _10515] = mem[_10227 + _10371 + 32 len 32 * _10515]
            if _10515 < 1:
                revert with 0, 17
            if _10515 - 1 >= _10515:
                revert with 0, 50
            return _7031, mem[(32 * _10515 - 1) + _10227 + ceil32(return_data.size) + 32]
        _7293 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 192
        if 0 >= mem[_7293]:
            revert with 0, 50
        mem[_7293 + 32] = stor1
        if 1 >= mem[_7293]:
            revert with 0, 50
        mem[_7293 + 64] = stor3[stor1][address(arg2)]
        if 2 >= mem[_7293]:
            revert with 0, 50
        mem[_7293 + 96] = stor1
        if 3 >= mem[_7293]:
            revert with 0, 50
        mem[_7293 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
        if 4 >= mem[_7293]:
            revert with 0, 50
        mem[_7293 + 160] = address(ext_call.return_data[0])
        mem[_7293 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_7293 + 196] = arg3 / 2
        mem[_7293 + 228] = 64
        mem[_7293 + 260] = mem[_7293]
        idx = 0
        s = _7293 + 32
        t = _7293 + 292
        while idx < mem[_7293]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _7293 + (32 * mem[_7293]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10228 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10372 = mem[_10228]
        require mem[_10228] <= test266151307()
        require _10228 + mem[_10228] + 31 < _10228 + return_data.size
        _10516 = mem[_10228 + mem[_10228]]
        if mem[_10228 + mem[_10228]] > test266151307():
            revert with 0, 65
        if _10228 + ceil32(return_data.size) + ceil32(32 * mem[_10228 + mem[_10228]]) + 1 > test266151307() or ceil32(32 * mem[_10228 + mem[_10228]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _10228 + ceil32(return_data.size) + ceil32(32 * mem[_10228 + mem[_10228]]) + 1
        mem[_10228 + ceil32(return_data.size)] = _10516
        require return_data.size >= _10372 + (32 * _10516) + 32
        mem[_10228 + ceil32(return_data.size) + 32 len 32 * _10516] = mem[_10228 + _10372 + 32 len 32 * _10516]
        if _10516 < 1:
            revert with 0, 17
        if _10516 - 1 >= _10516:
            revert with 0, 50
        return _7031, mem[(32 * _10516 - 1) + _10228 + ceil32(return_data.size) + 32]
    mem[(2 * ceil32(return_data.size)) + 96] = 3
    mem[(2 * ceil32(return_data.size)) + 128] = stor1
    mem[(2 * ceil32(return_data.size)) + 160] = stor1
    mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = arg3 / 2
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
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args Mask(255, 1, arg3), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _3754 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
    _3802 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    require return_data.size >= _3754 + (32 * _3802) + 32
    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _3802] = mem[(2 * ceil32(return_data.size)) + _3754 + 256 len 32 * _3802]
    if _3802 < 1:
        revert with 0, 17
    if _3802 - 1 >= _3802:
        revert with 0, 50
    _7030 = mem[(32 * _3802 - 1) + (4 * ceil32(return_data.size)) + 256]
    mem[0] = arg2
    mem[32] = sha3(address(ext_call.return_data[0]), 3)
    if not stor3[stor1][address(arg2)]:
        if not stor3[address(ext_call.return_data[0])][address(arg2)]:
            if stor1 == stor1:
                _7473 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_7473]:
                    revert with 0, 50
                mem[_7473 + 32] = stor1
                if 1 >= mem[_7473]:
                    revert with 0, 50
                mem[_7473 + 64] = address(ext_call.return_data[0])
                mem[_7473 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7473 + 100] = arg3 / 2
                mem[_7473 + 132] = 64
                mem[_7473 + 164] = mem[_7473]
                idx = 0
                s = _7473 + 32
                t = _7473 + 196
                while idx < mem[_7473]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7473 + (32 * mem[_7473]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10205 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10349 = mem[_10205]
                require mem[_10205] <= test266151307()
                require _10205 + mem[_10205] + 31 < _10205 + return_data.size
                _10493 = mem[_10205 + mem[_10205]]
                if mem[_10205 + mem[_10205]] > test266151307():
                    revert with 0, 65
                if _10205 + ceil32(return_data.size) + ceil32(32 * mem[_10205 + mem[_10205]]) + 1 > test266151307() or ceil32(32 * mem[_10205 + mem[_10205]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10205 + ceil32(return_data.size) + ceil32(32 * mem[_10205 + mem[_10205]]) + 1
                mem[_10205 + ceil32(return_data.size)] = _10493
                require return_data.size >= _10349 + (32 * _10493) + 32
                mem[_10205 + ceil32(return_data.size) + 32 len 32 * _10493] = mem[_10205 + _10349 + 32 len 32 * _10493]
                if _10493 < 1:
                    revert with 0, 17
                if _10493 - 1 >= _10493:
                    revert with 0, 50
                return _7030, mem[(32 * _10493 - 1) + _10205 + ceil32(return_data.size) + 32]
            if stor1 == address(ext_call.return_data[0]):
                _7592 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_7592]:
                    revert with 0, 50
                mem[_7592 + 32] = stor1
                if 1 >= mem[_7592]:
                    revert with 0, 50
                mem[_7592 + 64] = address(ext_call.return_data[0])
                mem[_7592 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7592 + 100] = arg3 / 2
                mem[_7592 + 132] = 64
                mem[_7592 + 164] = mem[_7592]
                idx = 0
                s = _7592 + 32
                t = _7592 + 196
                while idx < mem[_7592]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7592 + (32 * mem[_7592]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10207 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10351 = mem[_10207]
                require mem[_10207] <= test266151307()
                require _10207 + mem[_10207] + 31 < _10207 + return_data.size
                _10495 = mem[_10207 + mem[_10207]]
                if mem[_10207 + mem[_10207]] > test266151307():
                    revert with 0, 65
                if _10207 + ceil32(return_data.size) + ceil32(32 * mem[_10207 + mem[_10207]]) + 1 > test266151307() or ceil32(32 * mem[_10207 + mem[_10207]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10207 + ceil32(return_data.size) + ceil32(32 * mem[_10207 + mem[_10207]]) + 1
                mem[_10207 + ceil32(return_data.size)] = _10495
                require return_data.size >= _10351 + (32 * _10495) + 32
                mem[_10207 + ceil32(return_data.size) + 32 len 32 * _10495] = mem[_10207 + _10351 + 32 len 32 * _10495]
                if _10495 < 1:
                    revert with 0, 17
                if _10495 - 1 >= _10495:
                    revert with 0, 50
                return _7030, mem[(32 * _10495 - 1) + _10207 + ceil32(return_data.size) + 32]
            _7590 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_7590]:
                revert with 0, 50
            mem[_7590 + 32] = stor1
            if 1 >= mem[_7590]:
                revert with 0, 50
            mem[_7590 + 64] = stor1
            if 2 >= mem[_7590]:
                revert with 0, 50
            mem[_7590 + 96] = address(ext_call.return_data[0])
            mem[_7590 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7590 + 132] = arg3 / 2
            mem[_7590 + 164] = 64
            mem[_7590 + 196] = mem[_7590]
            idx = 0
            s = _7590 + 32
            t = _7590 + 228
            while idx < mem[_7590]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7590 + (32 * mem[_7590]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10206 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10350 = mem[_10206]
            require mem[_10206] <= test266151307()
            require _10206 + mem[_10206] + 31 < _10206 + return_data.size
            _10494 = mem[_10206 + mem[_10206]]
            if mem[_10206 + mem[_10206]] > test266151307():
                revert with 0, 65
            if _10206 + ceil32(return_data.size) + ceil32(32 * mem[_10206 + mem[_10206]]) + 1 > test266151307() or ceil32(32 * mem[_10206 + mem[_10206]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10206 + ceil32(return_data.size) + ceil32(32 * mem[_10206 + mem[_10206]]) + 1
            mem[_10206 + ceil32(return_data.size)] = _10494
            require return_data.size >= _10350 + (32 * _10494) + 32
            mem[_10206 + ceil32(return_data.size) + 32 len 32 * _10494] = mem[_10206 + _10350 + 32 len 32 * _10494]
            if _10494 < 1:
                revert with 0, 17
            if _10494 - 1 >= _10494:
                revert with 0, 50
            return _7030, mem[(32 * _10494 - 1) + _10206 + ceil32(return_data.size) + 32]
        _7283 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 160
        if 0 >= mem[_7283]:
            revert with 0, 50
        mem[_7283 + 32] = stor1
        if 1 >= mem[_7283]:
            revert with 0, 50
        mem[_7283 + 64] = stor1
        if 2 >= mem[_7283]:
            revert with 0, 50
        mem[_7283 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
        if 3 >= mem[_7283]:
            revert with 0, 50
        mem[_7283 + 128] = address(ext_call.return_data[0])
        mem[_7283 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_7283 + 164] = arg3 / 2
        mem[_7283 + 196] = 64
        mem[_7283 + 228] = mem[_7283]
        idx = 0
        s = _7283 + 32
        t = _7283 + 260
        while idx < mem[_7283]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _7283 + (32 * mem[_7283]) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10208 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10352 = mem[_10208]
        require mem[_10208] <= test266151307()
        require _10208 + mem[_10208] + 31 < _10208 + return_data.size
        _10496 = mem[_10208 + mem[_10208]]
        if mem[_10208 + mem[_10208]] > test266151307():
            revert with 0, 65
        if _10208 + ceil32(return_data.size) + ceil32(32 * mem[_10208 + mem[_10208]]) + 1 > test266151307() or ceil32(32 * mem[_10208 + mem[_10208]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _10208 + ceil32(return_data.size) + ceil32(32 * mem[_10208 + mem[_10208]]) + 1
        mem[_10208 + ceil32(return_data.size)] = _10496
        require return_data.size >= _10352 + (32 * _10496) + 32
        mem[_10208 + ceil32(return_data.size) + 32 len 32 * _10496] = mem[_10208 + _10352 + 32 len 32 * _10496]
        if _10496 < 1:
            revert with 0, 17
        if _10496 - 1 >= _10496:
            revert with 0, 50
        return _7030, mem[(32 * _10496 - 1) + _10208 + ceil32(return_data.size) + 32]
    if not stor3[address(ext_call.return_data[0])][address(arg2)]:
        if not stor3[stor1][address(arg2)]:
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                if stor1 == stor1:
                    _7595 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7595]:
                        revert with 0, 50
                    mem[_7595 + 32] = stor1
                    if 1 >= mem[_7595]:
                        revert with 0, 50
                    mem[_7595 + 64] = address(ext_call.return_data[0])
                    mem[_7595 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7595 + 100] = arg3 / 2
                    mem[_7595 + 132] = 64
                    mem[_7595 + 164] = mem[_7595]
                    idx = 0
                    s = _7595 + 32
                    t = _7595 + 196
                    while idx < mem[_7595]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7595 + (32 * mem[_7595]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10209 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10353 = mem[_10209]
                    require mem[_10209] <= test266151307()
                    require _10209 + mem[_10209] + 31 < _10209 + return_data.size
                    _10497 = mem[_10209 + mem[_10209]]
                    if mem[_10209 + mem[_10209]] > test266151307():
                        revert with 0, 65
                    if _10209 + ceil32(return_data.size) + ceil32(32 * mem[_10209 + mem[_10209]]) + 1 > test266151307() or ceil32(32 * mem[_10209 + mem[_10209]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10209 + ceil32(return_data.size) + ceil32(32 * mem[_10209 + mem[_10209]]) + 1
                    mem[_10209 + ceil32(return_data.size)] = _10497
                    require return_data.size >= _10353 + (32 * _10497) + 32
                    mem[_10209 + ceil32(return_data.size) + 32 len 32 * _10497] = mem[_10209 + _10353 + 32 len 32 * _10497]
                    if _10497 < 1:
                        revert with 0, 17
                    if _10497 - 1 >= _10497:
                        revert with 0, 50
                    return _7030, mem[(32 * _10497 - 1) + _10209 + ceil32(return_data.size) + 32]
                if stor1 == address(ext_call.return_data[0]):
                    _7733 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_7733]:
                        revert with 0, 50
                    mem[_7733 + 32] = stor1
                    if 1 >= mem[_7733]:
                        revert with 0, 50
                    mem[_7733 + 64] = address(ext_call.return_data[0])
                    mem[_7733 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_7733 + 100] = arg3 / 2
                    mem[_7733 + 132] = 64
                    mem[_7733 + 164] = mem[_7733]
                    idx = 0
                    s = _7733 + 32
                    t = _7733 + 196
                    while idx < mem[_7733]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg2)
                    staticcall arg2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7733 + (32 * mem[_7733]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10211 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10355 = mem[_10211]
                    require mem[_10211] <= test266151307()
                    require _10211 + mem[_10211] + 31 < _10211 + return_data.size
                    _10499 = mem[_10211 + mem[_10211]]
                    if mem[_10211 + mem[_10211]] > test266151307():
                        revert with 0, 65
                    if _10211 + ceil32(return_data.size) + ceil32(32 * mem[_10211 + mem[_10211]]) + 1 > test266151307() or ceil32(32 * mem[_10211 + mem[_10211]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _10211 + ceil32(return_data.size) + ceil32(32 * mem[_10211 + mem[_10211]]) + 1
                    mem[_10211 + ceil32(return_data.size)] = _10499
                    require return_data.size >= _10355 + (32 * _10499) + 32
                    mem[_10211 + ceil32(return_data.size) + 32 len 32 * _10499] = mem[_10211 + _10355 + 32 len 32 * _10499]
                    if _10499 < 1:
                        revert with 0, 17
                    if _10499 - 1 >= _10499:
                        revert with 0, 50
                    return _7030, mem[(32 * _10499 - 1) + _10211 + ceil32(return_data.size) + 32]
                _7731 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_7731]:
                    revert with 0, 50
                mem[_7731 + 32] = stor1
                if 1 >= mem[_7731]:
                    revert with 0, 50
                mem[_7731 + 64] = stor1
                if 2 >= mem[_7731]:
                    revert with 0, 50
                mem[_7731 + 96] = address(ext_call.return_data[0])
                mem[_7731 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_7731 + 132] = arg3 / 2
                mem[_7731 + 164] = 64
                mem[_7731 + 196] = mem[_7731]
                idx = 0
                s = _7731 + 32
                t = _7731 + 228
                while idx < mem[_7731]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg2)
                staticcall arg2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _7731 + (32 * mem[_7731]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10210 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10354 = mem[_10210]
                require mem[_10210] <= test266151307()
                require _10210 + mem[_10210] + 31 < _10210 + return_data.size
                _10498 = mem[_10210 + mem[_10210]]
                if mem[_10210 + mem[_10210]] > test266151307():
                    revert with 0, 65
                if _10210 + ceil32(return_data.size) + ceil32(32 * mem[_10210 + mem[_10210]]) + 1 > test266151307() or ceil32(32 * mem[_10210 + mem[_10210]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _10210 + ceil32(return_data.size) + ceil32(32 * mem[_10210 + mem[_10210]]) + 1
                mem[_10210 + ceil32(return_data.size)] = _10498
                require return_data.size >= _10354 + (32 * _10498) + 32
                mem[_10210 + ceil32(return_data.size) + 32 len 32 * _10498] = mem[_10210 + _10354 + 32 len 32 * _10498]
                if _10498 < 1:
                    revert with 0, 17
                if _10498 - 1 >= _10498:
                    revert with 0, 50
                return _7030, mem[(32 * _10498 - 1) + _10210 + ceil32(return_data.size) + 32]
            _7371 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_7371]:
                revert with 0, 50
            mem[_7371 + 32] = stor1
            if 1 >= mem[_7371]:
                revert with 0, 50
            mem[_7371 + 64] = stor1
            if 2 >= mem[_7371]:
                revert with 0, 50
            mem[_7371 + 96] = stor3[address(ext_call.return_data[0])][address(arg2)]
            if 3 >= mem[_7371]:
                revert with 0, 50
            mem[_7371 + 128] = address(ext_call.return_data[0])
            mem[_7371 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7371 + 164] = arg3 / 2
            mem[_7371 + 196] = 64
            mem[_7371 + 228] = mem[_7371]
            idx = 0
            s = _7371 + 32
            t = _7371 + 260
            while idx < mem[_7371]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7371 + (32 * mem[_7371]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10212 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10356 = mem[_10212]
            require mem[_10212] <= test266151307()
            require _10212 + mem[_10212] + 31 < _10212 + return_data.size
            _10500 = mem[_10212 + mem[_10212]]
            if mem[_10212 + mem[_10212]] > test266151307():
                revert with 0, 65
            if _10212 + ceil32(return_data.size) + ceil32(32 * mem[_10212 + mem[_10212]]) + 1 > test266151307() or ceil32(32 * mem[_10212 + mem[_10212]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10212 + ceil32(return_data.size) + ceil32(32 * mem[_10212 + mem[_10212]]) + 1
            mem[_10212 + ceil32(return_data.size)] = _10500
            require return_data.size >= _10356 + (32 * _10500) + 32
            mem[_10212 + ceil32(return_data.size) + 32 len 32 * _10500] = mem[_10212 + _10356 + 32 len 32 * _10500]
            if _10500 < 1:
                revert with 0, 17
            if _10500 - 1 >= _10500:
                revert with 0, 50
            return _7030, mem[(32 * _10500 - 1) + _10212 + ceil32(return_data.size) + 32]
        if stor1 == address(ext_call.return_data[0]):
            _7375 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_7375]:
                revert with 0, 50
            mem[_7375 + 32] = stor1
            if 1 >= mem[_7375]:
                revert with 0, 50
            mem[_7375 + 64] = stor3[stor1][address(arg2)]
            if 2 >= mem[_7375]:
                revert with 0, 50
            mem[_7375 + 96] = stor1
            mem[_7375 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_7375 + 132] = arg3 / 2
            mem[_7375 + 164] = 64
            mem[_7375 + 196] = mem[_7375]
            idx = 0
            s = _7375 + 32
            t = _7375 + 228
            while idx < mem[_7375]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg2)
            staticcall arg2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _7375 + (32 * mem[_7375]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10214 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10358 = mem[_10214]
            require mem[_10214] <= test266151307()
            require _10214 + mem[_10214] + 31 < _10214 + return_data.size
            _10502 = mem[_10214 + mem[_10214]]
            if mem[_10214 + mem[_10214]] > test266151307():
                revert with 0, 65
            if _10214 + ceil32(return_data.size) + ceil32(32 * mem[_10214 + mem[_10214]]) + 1 > test266151307() or ceil32(32 * mem[_10214 + mem[_10214]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _10214 + ceil32(return_data.size) + ceil32(32 * mem[_10214 + mem[_10214]]) + 1
            mem[_10214 + ceil32(return_data.size)] = _10502
            require return_data.size >= _10358 + (32 * _10502) + 32
            mem[_10214 + ceil32(return_data.size) + 32 len 32 * _10502] = mem[_10214 + _10358 + 32 len 32 * _10502]
            if _10502 < 1:
                revert with 0, 17
            if _10502 - 1 >= _10502:
                revert with 0, 50
            return _7030, mem[(32 * _10502 - 1) + _10214 + ceil32(return_data.size) + 32]
        _7373 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 160
        if 0 >= mem[_7373]:
            revert with 0, 50
        mem[_7373 + 32] = stor1
        if 1 >= mem[_7373]:
            revert with 0, 50
        mem[_7373 + 64] = stor3[stor1][address(arg2)]
        if 2 >= mem[_7373]:
            revert with 0, 50
        mem[_7373 + 96] = stor1
        if 3 >= mem[_7373]:
            revert with 0, 50
        mem[_7373 + 128] = address(ext_call.return_data[0])
        mem[_7373 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_7373 + 164] = arg3 / 2
        mem[_7373 + 196] = 64
        mem[_7373 + 228] = mem[_7373]
        idx = 0
        s = _7373 + 32
        t = _7373 + 260
        while idx < mem[_7373]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _7373 + (32 * mem[_7373]) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10213 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10357 = mem[_10213]
        require mem[_10213] <= test266151307()
        require _10213 + mem[_10213] + 31 < _10213 + return_data.size
        _10501 = mem[_10213 + mem[_10213]]
        if mem[_10213 + mem[_10213]] > test266151307():
            revert with 0, 65
        if _10213 + ceil32(return_data.size) + ceil32(32 * mem[_10213 + mem[_10213]]) + 1 > test266151307() or ceil32(32 * mem[_10213 + mem[_10213]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _10213 + ceil32(return_data.size) + ceil32(32 * mem[_10213 + mem[_10213]]) + 1
        mem[_10213 + ceil32(return_data.size)] = _10501
        require return_data.size >= _10357 + (32 * _10501) + 32
        mem[_10213 + ceil32(return_data.size) + 32 len 32 * _10501] = mem[_10213 + _10357 + 32 len 32 * _10501]
        if _10501 < 1:
            revert with 0, 17
        if _10501 - 1 >= _10501:
            revert with 0, 50
        return _7030, mem[(32 * _10501 - 1) + _10213 + ceil32(return_data.size) + 32]
    if stor3[stor1][address(arg2)] == stor3[address(ext_call.return_data[0])][address(arg2)]:
        _7285 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_7285]:
            revert with 0, 50
        mem[_7285 + 32] = stor1
        if 1 >= mem[_7285]:
            revert with 0, 50
        mem[_7285 + 64] = stor3[stor1][address(arg2)]
        if 2 >= mem[_7285]:
            revert with 0, 50
        mem[_7285 + 96] = address(ext_call.return_data[0])
        mem[_7285 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_7285 + 132] = arg3 / 2
        mem[_7285 + 164] = 64
        mem[_7285 + 196] = mem[_7285]
        idx = 0
        s = _7285 + 32
        t = _7285 + 228
        while idx < mem[_7285]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _7285 + (32 * mem[_7285]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10215 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10359 = mem[_10215]
        require mem[_10215] <= test266151307()
        require _10215 + mem[_10215] + 31 < _10215 + return_data.size
        _10503 = mem[_10215 + mem[_10215]]
        if mem[_10215 + mem[_10215]] > test266151307():
            revert with 0, 65
        if _10215 + ceil32(return_data.size) + ceil32(32 * mem[_10215 + mem[_10215]]) + 1 > test266151307() or ceil32(32 * mem[_10215 + mem[_10215]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _10215 + ceil32(return_data.size) + ceil32(32 * mem[_10215 + mem[_10215]]) + 1
        mem[_10215 + ceil32(return_data.size)] = _10503
        require return_data.size >= _10359 + (32 * _10503) + 32
        mem[_10215 + ceil32(return_data.size) + 32 len 32 * _10503] = mem[_10215 + _10359 + 32 len 32 * _10503]
        if _10503 < 1:
            revert with 0, 17
        if _10503 - 1 >= _10503:
            revert with 0, 50
        return _7030, mem[(32 * _10503 - 1) + _10215 + ceil32(return_data.size) + 32]
    _7287 = mem[64]
    mem[mem[64]] = 5
    mem[64] = mem[64] + 192
    if 0 >= mem[_7287]:
        revert with 0, 50
    mem[_7287 + 32] = stor1
    if 1 >= mem[_7287]:
        revert with 0, 50
    mem[_7287 + 64] = stor3[stor1][address(arg2)]
    if 2 >= mem[_7287]:
        revert with 0, 50
    mem[_7287 + 96] = stor1
    if 3 >= mem[_7287]:
        revert with 0, 50
    mem[_7287 + 128] = stor3[address(ext_call.return_data[0])][address(arg2)]
    if 4 >= mem[_7287]:
        revert with 0, 50
    mem[_7287 + 160] = address(ext_call.return_data[0])
    mem[_7287 + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_7287 + 196] = arg3 / 2
    mem[_7287 + 228] = 64
    mem[_7287 + 260] = mem[_7287]
    idx = 0
    s = _7287 + 32
    t = _7287 + 292
    while idx < mem[_7287]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg2)
    staticcall arg2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _7287 + (32 * mem[_7287]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _10216 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _10360 = mem[_10216]
    require mem[_10216] <= test266151307()
    require _10216 + mem[_10216] + 31 < _10216 + return_data.size
    _10504 = mem[_10216 + mem[_10216]]
    if mem[_10216 + mem[_10216]] > test266151307():
        revert with 0, 65
    if _10216 + ceil32(return_data.size) + ceil32(32 * mem[_10216 + mem[_10216]]) + 1 > test266151307() or ceil32(32 * mem[_10216 + mem[_10216]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _10216 + ceil32(return_data.size) + ceil32(32 * mem[_10216 + mem[_10216]]) + 1
    mem[_10216 + ceil32(return_data.size)] = _10504
    require return_data.size >= _10360 + (32 * _10504) + 32
    mem[_10216 + ceil32(return_data.size) + 32 len 32 * _10504] = mem[_10216 + _10360 + 32 len 32 * _10504]
    if _10504 < 1:
        revert with 0, 17
    if _10504 - 1 >= _10504:
        revert with 0, 50
    return _7030, mem[(32 * _10504 - 1) + _10216 + ceil32(return_data.size) + 32]
}



}
