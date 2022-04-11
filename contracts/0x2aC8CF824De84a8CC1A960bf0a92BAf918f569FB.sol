contract main {




// =====================  Runtime code  =====================


#
#  - sub_3ff5099f(?)
#  - deposit(address arg1, uint256 arg2)
#  - sub_80530c61(?)
#  - addLiquidity(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - sub_921602b6(?)
#  - sub_936551de(?)
#  - sub_aec99aa8(?)
#  - sub_c055ee8b(?)
#  - initialize(address arg1, address arg2, address arg3, address arg4, address[] arg5)
#  - _fallback()
#
address owner;
address veeAddress;
uint32 stor102;
address dexRouterAddress;
uint256 stor102;
uint32 stor103;
address farmPoolAddress;
uint256 stor103;
address sub_3154b10eAddress;
mapping of uint256 sub_5a372e63;
mapping of uint256 sub_5762e264;
mapping of uint8 stor107;
uint256 sub_4fb98b35;

function dexRouter() {
    return address(dexRouterAddress)
}

function sub_3154b10e(?) {
    return sub_3154b10eAddress
}

function vee() {
    return veeAddress
}

function sub_4fb98b35(?) {
    return sub_4fb98b35
}

function sub_5762e264(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_5762e264[arg1][arg2]
}

function sub_5a372e63(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5a372e63[arg1]
}

function tokenWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor107[arg1])
}

function owner() {
    return owner
}

function farmPool() {
    return address(farmPoolAddress)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function sub_c9bcc97e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(arg2) == bool(stor107[address(arg1)]):
        revert with 0, 'not change'
    stor107[address(arg1)] = uint8(bool(arg2))
    emit 0x6e293d85: address(arg1), bool(arg2), bool(stor107[address(arg1)])
}

function sub_2d02bea2(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(address(farmPoolAddress))
    staticcall address(farmPoolAddress).0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    mem[96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 > sub_5762e264[msg.sender][address(ext_call.return_data[0])]:
        revert with 0, 'lpToken insufficient'
    if sub_5762e264[msg.sender][address(ext_call.return_data[0])] < arg2:
        revert with 0, 17
    sub_5762e264[msg.sender][address(ext_call.return_data[0])] -= arg2
    mem[ceil32(return_data.size) + 196 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor103), uint32(stor103), arg2, mem[ceil32(return_data.size) + 196 len 28]
    call address(ext_call.return_data[0]).mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'APPROVE_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'APPROVE_FAILED'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'APPROVE_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'APPROVE_FAILED'
    require ext_code.size(address(farmPoolAddress))
    call address(farmPoolAddress).depositBehalf(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeLiquidity(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require ext_code.size(address(dexRouterAddress))
    staticcall address(dexRouterAddress).factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = veeAddress
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args veeAddress, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 > sub_5762e264[msg.sender][address(ext_call.return_data[0])]:
        revert with 0, 'lpToken insufficient'
    if sub_5762e264[msg.sender][address(ext_call.return_data[0])] < arg2:
        revert with 0, 17
    sub_5762e264[msg.sender][address(ext_call.return_data[0])] -= arg2
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor102)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address rg1, uint256 rg2)
    mem[(2 * ceil32(return_data.size)) + 196 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), arg2, mem[(2 * ceil32(return_data.size)) + 196 len 28]
    call address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 196 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'APPROVE_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'APPROVE_FAILED'
        if 1000 > !block.timestamp:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 296] = arg3
        mem[(2 * ceil32(return_data.size)) + 328] = arg4
        mem[(2 * ceil32(return_data.size)) + 360] = this.address
        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp + 1000
        require ext_code.size(address(dexRouterAddress))
        call address(dexRouterAddress).removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
             gas gas_remaining wei
            args veeAddress, address(arg1), arg2, arg3, arg4, address(this.address), block.timestamp + 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if sub_5a372e63[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        sub_5a372e63[msg.sender] += ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 296 len 96] = 0, msg.sender, ext_call.return_data[32], mem[(4 * ceil32(return_data.size)) + 296 len 28]
        call arg1.mem[(4 * ceil32(return_data.size)) + 296 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 300 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TRANSFER_FAILED'
        else:
            mem[(4 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 328] == bool(mem[(4 * ceil32(return_data.size)) + 328])
                if not mem[(4 * ceil32(return_data.size)) + 328]:
                    revert with 0, 'TRANSFER_FAILED'
    else:
        mem[(2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'APPROVE_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 228] == bool(mem[(2 * ceil32(return_data.size)) + 228])
            if not mem[(2 * ceil32(return_data.size)) + 228]:
                revert with 0, 'APPROVE_FAILED'
        if 1000 > !block.timestamp:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg3
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg4
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 1000
        require ext_code.size(address(dexRouterAddress))
        call address(dexRouterAddress).removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
             gas gas_remaining wei
            args veeAddress, address(arg1), arg2, arg3, arg4, address(this.address), block.timestamp + 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if sub_5a372e63[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        sub_5a372e63[msg.sender] += ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, msg.sender, ext_call.return_data[32], mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
        call arg1.mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TRANSFER_FAILED'
        else:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                    revert with 0, 'TRANSFER_FAILED'
    emit 0x19f2d086: address(ext_call.return_data[0]), arg2, veeAddress, address(arg1), ext_call.return_data[0], ext_call.return_data[32]
    return ext_call.return_data[0], ext_call.return_data[32]
}



}
