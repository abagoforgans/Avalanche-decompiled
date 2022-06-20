contract main {




// =====================  Runtime code  =====================


#
#  - sub_19cfbcd4(?)
#  - sub_e9fca960(?)
#
address owner;
address universeImplementationAddress;
uint8 stor51;
uint8 stor51; offset 8
uint256 stor51; offset 8
uint256 stor52; offset 1
uint256 sub_1d4f3d4f;
array of struct fee;
array of uint256 stor54;
uint256 sub_fac4fcc8;
address routerAddress;
address pairAddress;
address leftSideAddress;
address rightSideAddress;

function feeAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < fee.length
    return address(fee[arg1].field_0)
}

function sub_15151c4b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor54.length
    return sub_15151c4b[uint8(arg1)]
}

function sub_1d4f3d4f(?) payable {
    return sub_1d4f3d4f
}

function getUniverseImplementation() payable {
    return universeImplementationAddress
}

function getLeftSide() payable {
    return leftSideAddress
}

function owner() payable {
    return owner
}

function getRouter() payable {
    return routerAddress
}

function getPair() payable {
    return pairAddress
}

function getRightSide() payable {
    return rightSideAddress
}

function sub_fac4fcc8(?) payable {
    return sub_fac4fcc8
}

function _fallback() payable {
    revert
}

function isPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == pairAddress)
}

function isRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == routerAddress)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function recoverLostAVAX() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b278110f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < fee.length:
        mem[0] = 53
        if address(fee[idx].field_0) == address(arg1):
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_05cc9d6c(?) payable {
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return (sub_fac4fcc8 > ext_call.return_data[0])
}

function sub_1e17ba39(?) payable {
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return (sub_fac4fcc8 < ext_call.return_data[0])
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

function sub_2c5ecd4f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LiquidityPoolManager: Number of coins to swap to liquidity must be defined'
    sub_1d4f3d4f = arg1
}

function changeUniverseImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg1) <= 0:
        if arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Universe: You can only set 0x0 or a contract address as a new implementation'
    universeImplementationAddress = arg1
    emit UpdateUniverse(universeImplementationAddress, arg1);
}

function recoverLostTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getFeeAddresses() payable {
    mem[64] = (32 * fee.length) + 128
    mem[96] = fee.length
    if not fee.length:
        mem[(32 * fee.length) + 128] = 32
        mem[(32 * fee.length) + 160] = fee.length
        idx = 0
        s = 128
        t = (32 * fee.length) + 192
        while idx < fee.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * fee.length) + 128
           len (96 * fee.length) + 64
    mem[128] = address(fee.field_0)
    idx = 128
    s = 0
    while (32 * fee.length) + 96 > idx:
        mem[idx + 32] = address(fee[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * fee.length) + 128] = 32
    mem[(32 * fee.length) + 160] = fee.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < fee.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * fee.length) + -mem[64] + 192
}

function sub_ac43b099(?) payable {
    mem[64] = (32 * stor54.length) + 128
    mem[96] = stor54.length
    if not stor54.length:
        mem[(32 * stor54.length) + 128] = 32
        mem[(32 * stor54.length) + 160] = stor54.length
        idx = 0
        s = 128
        t = (32 * stor54.length) + 192
        while idx < stor54.length:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor54.length) + 128
           len (96 * stor54.length) + 64
    mem[128] = uint8(stor54)
    idx = 128
    s = 0
    while (32 * stor54.length) + 96 > idx:
        mem[idx + 32] = stor('name', 'stor54', 54)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * stor54.length) + 128] = 32
    mem[(32 * stor54.length) + 160] = stor54.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor54.length:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor54.length) + -mem[64] + 192
}

function sub_4cb08466(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = floor32(('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == uint8(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length <= 0:
        revert with 0, 'LiquidityPoolManager: Addresses array length must be greater than zero'
    if ('cd', 36).length > -2:
        revert with 'NH{q', 17
    if ('cd', 4).length != ('cd', 36).length + 1:
        revert with 0, 'LiquidityPoolManager: Addresses arrays length mismatch. Remember last address receive the remains.'
    fee.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while fee.length > idx:
            fee[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(fee[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while fee.length > idx:
            fee[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor54.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor54.length + 31 / 32 > idx:
            uint256(stor54[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = floor32(('cd', 4).length) + 129
        while floor32(('cd', 4).length) + (32 * ('cd', 36).length) + 129 > idx:
            uint256(stor54) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor54)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        s = sha3(54)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5 * None + 3 / 32)
        while stor54.length + 31 / 32 > idx:
            uint256(stor54[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_0f3988ce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not universeImplementationAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Implementations: Universe is not set'
    if universeImplementationAddress != msg.sender:
        revert with 0, 'Implementations: Not Universe'
    mem[100] = this.address
    staticcall leftSideAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if ext_call.return_data[0] < sub_1d4f3d4f:
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        sub_fac4fcc8 = ext_call.return_data[0]
    else:
        if not uint8(stor51.field_0):
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            sub_fac4fcc8 = ext_call.return_data[0]
        else:
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                sub_fac4fcc8 = ext_call.return_data[0]
            else:
                if uint8(stor51.field_8):
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    sub_fac4fcc8 = ext_call.return_data[0]
                else:
                    if address(arg1) == pairAddress:
                        staticcall pairAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        sub_fac4fcc8 = ext_call.return_data[0]
                    else:
                        if address(arg1) == routerAddress:
                            staticcall pairAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            sub_fac4fcc8 = ext_call.return_data[0]
                        else:
                            Mask(248, 0, stor51.field_8) = 1
                            mem[(2 * ceil32(return_data.size)) + 100] = this.address
                            staticcall rightSideAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[(4 * ceil32(return_data.size)) + 96] = 2
                            mem[(4 * ceil32(return_data.size)) + 128] = leftSideAddress
                            mem[(4 * ceil32(return_data.size)) + 160] = rightSideAddress
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = stor52
                            mem[(4 * ceil32(return_data.size)) + 228] = 0
                            mem[(4 * ceil32(return_data.size)) + 260] = 160
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 292] = this.address
                            mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * Mask(256, -1, stor52), 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 196] = this.address
                            staticcall rightSideAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[(6 * ceil32(return_data.size)) + 260] = stor52
                            mem[(6 * ceil32(return_data.size)) + 292] = 0
                            mem[(6 * ceil32(return_data.size)) + 324] = 0
                            mem[(6 * ceil32(return_data.size)) + 356] = 0
                            mem[(6 * ceil32(return_data.size)) + 388] = this.address
                            mem[(6 * ceil32(return_data.size)) + 420] = block.timestamp
                            call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args leftSideAddress, rightSideAddress, 2 * Mask(256, -1, stor52), 0, 0, 0, address(this.address), block.timestamp
                            mem[(6 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            emit SwapAndLiquify(stor52, ext_call.return_data[0], 0);
                            mem[(7 * ceil32(return_data.size)) + 196] = this.address
                            staticcall pairAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            idx = 0
                            while idx < fee.length:
                                if fee.length < 1:
                                    revert with 'NH{q', 17
                                if fee.length - 1 == idx:
                                    if idx >= fee.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 53
                                    mem[mem[64] + 4] = address(fee[idx].field_0)
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    call pairAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(fee[idx].field_0), ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _114 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_114] == bool(mem[_114])
                                else:
                                    if idx >= stor54.length:
                                        revert with 'NH{q', 50
                                    if ext_call.return_data[0] and stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor54', 54))[uint8(idx)] > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] < ext_call.return_data[0] * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor54', 54))[uint8(idx)] / 100:
                                        revert with 'NH{q', 17
                                    if idx >= fee.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 53
                                    mem[mem[64] + 4] = address(fee[idx].field_0)
                                    mem[mem[64] + 36] = ext_call.return_data[0] * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor54', 54))[uint8(idx)] / 100
                                    call pairAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(fee[idx].field_0), ext_call.return_data[0] * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor54', 54))[uint8(idx)] / 100
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _119 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_119] == bool(mem[_119])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                            require ext_code.size(pairAddress)
                            call pairAddress.sync() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            Mask(248, 0, stor51.field_8) = 0
                            staticcall pairAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            _106 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_106] == mem[_106]
                            sub_fac4fcc8 = mem[_106]
    return 1
}



}
