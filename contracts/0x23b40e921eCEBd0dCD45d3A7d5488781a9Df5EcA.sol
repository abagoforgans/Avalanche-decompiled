contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
mapping of uint256 stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_e9f9a700(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor0[address(arg1)][address(arg2)] < 1:
        revert with 'NH{q', 17
    return (stor0[address(arg1)][address(arg2)] - 1)
}

function sub_b681fb42(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor0[address(arg1)][address(arg2)] < 1:
        revert with 'NH{q', 17
    return ('signextend', 15, ('add', -1, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))))))
}

function sub_0fd197f7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).vaultCollateral(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).vaultDebt(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_6bd6f171(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx <= 255:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).underlying_coins(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            require idx > 1
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10 = mem[_9]
        require mem[_9] == mem[_9 + 12 len 20]
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = mem[_9 + 12 len 20]
        mem[32] = sha3(address(arg1), 0)
        stor0[address(arg1)][address(_10)] = idx + 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_8afd9f30(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0xe7fa295203fd6522610e0409694c8a65ee2670ac == msg.sender:
        idx = 0
        while idx <= 255:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).underlying_coins(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                require idx > 1
                stor1 = address(arg1)
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _30 = mem[_27]
            require mem[_27] == mem[_27 + 12 len 20]
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = mem[_27 + 12 len 20]
            mem[32] = sha3(address(arg1), 0)
            stor0[address(arg1)][address(_30)] = idx + 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if 0x8a35add672963f5d23b7bab88e4f67a30172dec1 == msg.sender:
            idx = 0
            while idx <= 255:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).underlying_coins(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    require idx > 1
                    stor1 = address(arg1)
                _28 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _31 = mem[_28]
                require mem[_28] == mem[_28 + 12 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                mem[0] = mem[_28 + 12 len 20]
                mem[32] = sha3(address(arg1), 0)
                stor0[address(arg1)][address(_31)] = idx + 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if msg.sender != 0x585845b853f6a37b159bd8dc98bd92f732c84716:
                revert with 0, 'onlyMe'
            idx = 0
            while idx <= 255:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).underlying_coins(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    require idx > 1
                    stor1 = address(arg1)
                _29 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _32 = mem[_29]
                require mem[_29] == mem[_29 + 12 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                mem[0] = mem[_29 + 12 len 20]
                mem[32] = sha3(address(arg1), 0)
                stor0[address(arg1)][address(_32)] = idx + 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    stor1 = address(arg1)
}

function sub_a73e69aa(?) payable {
    require calldata.size - 4 >= 128
    require arg3 == address(arg3)
    require ext_code.size(arg1)
    staticcall arg1.vaultCollateral(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.vaultDebt(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'debt=0'
    require ext_code.size(arg1)
    staticcall arg1.getPriceSource() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(arg1)
    staticcall arg1.getPricePeg() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    require ext_code.size(arg1)
    staticcall arg1.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if 100 * ext_call.return_data[0] * ext_call.return_data[0] and 1 > -1 / 100 * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(arg1)
        staticcall arg1.minimumCollateralPercentage() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] >= ext_call.return_data[0]:
            revert with 0, 'done'
    else:
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if 100 * ext_call.return_data[0] * ext_call.return_data[0] and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / 100 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.minimumCollateralPercentage() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 100 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * ext_call.return_data[0] >= ext_call.return_data[0]:
                revert with 0, 'done'
        else:
            s = 10
            t = 1
            idx = uint8(-ext_call.return_data[31 len 1] + 18)
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if 100 * ext_call.return_data[0] * ext_call.return_data[0] and s * t > -1 / 100 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.minimumCollateralPercentage() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 100 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / ext_call.return_data[0] * ext_call.return_data[0] >= ext_call.return_data[0]:
                revert with 0, 'done'
    require ext_code.size(arg1)
    staticcall arg1.debtRatio() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require ext_code.size(0xed7a2b4054757cfdb632af15ad528624f0fff3b0)
    call 0xed7a2b4054757cfdb632af15ad528624f0fff3b0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), 128, calldata.size - 4, call.data[4 len calldata.size - 4], Mask(8 * floor32(calldata.size + 27) + -calldata.size + 4, -(8 * floor32(calldata.size + 27) + -calldata.size + 4) + 256, 0) >> -(8 * floor32(calldata.size + 27) + -calldata.size + 4) + 256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
