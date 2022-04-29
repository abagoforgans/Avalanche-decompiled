contract main {




// =====================  Runtime code  =====================


#
#  - sub_0784f212(?)
#  - sub_3b4335a6(?)
#
array of address stor0;

function _fallback() payable {
  stop
}

function sub_85b501ee(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[196] = 0, mem[196 len 28]
    staticcall address(arg1).mem[196 len 4] with:
            gas gas_remaining wei
    if not return_data.size:
        mem[232] = 0, mem[232 len 28]
        staticcall address(arg2).mem[232 len 4] with:
                gas gas_remaining wei
    else:
        mem[ceil32(return_data.size) + 233] = 0, mem[ceil32(return_data.size) + 233 len 28]
        staticcall address(arg2).mem[ceil32(return_data.size) + 233 len 4] with:
                gas gas_remaining wei
    return bool(ext_call.success)
}

function sub_00a0ce06(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    stor0.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(stor0[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_6ebf27c6(?) {
    require calldata.size - 4 >= 32
    if block.number <= arg1:
        mem[192 len 2048] = mem[128], 64, mem[192 len 1984]
        return 64, 0, 64, mem[192 len 2048]
    if stor0.length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 2 * stor0.length > test266151307():
        revert with 'NH{q', 65
    if uint255(stor0.length):
        mem[128 len 64 * stor0.length] = call.data[calldata.size len 64 * stor0.length]
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        staticcall address(stor0[idx]).getReserves() with:
                gas 15000 wei
        mem[(64 * stor0.length) + 128 len 64] = ext_call.return_data[0 len 64]
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * idx >= 2 * stor0.length:
            revert with 'NH{q', 50
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 1 > !(2 * idx):
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= 2 * stor0.length:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + 128] = ext_call.return_data[32]
        mem[(64 * idx) + 128] = ext_call.return_data[0]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=2 * stor0.length, data=mem[128 len 64 * stor0.length]), block.number
}

function sub_11ffef85(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg2.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg2.length:
            require arg2.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg2.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg2.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function sub_8e7b43b2(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg2.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg2.length:
            require arg2.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg2.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg2.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function sub_d3329cb9(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg2.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg2.length:
            require arg2.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg2.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg2.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function zeroCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function oliveCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function canaryCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function baguetteCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function complusV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = transfer(address arg1, uint256 arg2), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function sub_7ccd1719(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg1) == ext_call.return_data[12 len 20]:
        if Mask(112, 0, ext_call.return_data[0]) < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg2))
        if address(arg1) == ext_call.return_data[12 len 20]:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args Mask(112, 0, ext_call.return_data[0]) - 1, 0, address(this.address), 128, 64, arg1, Mask(112, 0, ext_call.return_data[0]) - 1
        else:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, Mask(112, 0, ext_call.return_data[0]) - 1, address(this.address), 128, 64, arg1, Mask(112, 0, ext_call.return_data[0]) - 1
    else:
        if Mask(112, 0, ext_call.return_data[32]) < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg2))
        if address(arg1) == ext_call.return_data[12 len 20]:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args Mask(112, 0, ext_call.return_data[32]) - 1, 0, address(this.address), 128, 64, arg1, Mask(112, 0, ext_call.return_data[32]) - 1
        else:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, Mask(112, 0, ext_call.return_data[32]) - 1, address(this.address), 128, 64, arg1, Mask(112, 0, ext_call.return_data[32]) - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
