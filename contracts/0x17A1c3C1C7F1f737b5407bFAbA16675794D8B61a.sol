contract main {




// =====================  Runtime code  =====================


#
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - _fallback()
#
mapping of uint256 stor0;

function sub_1f248118(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0[address(arg1)] < 1:
        revert with 'NH{q', 17
    return (stor0[address(arg1)] - 1)
}

function sub_144fa7e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0[address(arg1)] < 1:
        revert with 'NH{q', 17
    return ('signextend', 15, ('add', -1, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0)))))
}

function sub_0fd197f7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    staticcall address(arg1).vaultCollateral(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg1).vaultDebt(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_a73e69aa(?) {
    require calldata.size - 4 >= 128
    require arg3 == address(arg3)
    staticcall arg1.vaultCollateral(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall arg1.vaultDebt(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'debt=0'
    staticcall arg1.getPriceSource() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    staticcall arg1.getPricePeg() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    staticcall arg1.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
            staticcall arg1.minimumCollateralPercentage() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 100 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / ext_call.return_data[0] * ext_call.return_data[0] >= ext_call.return_data[0]:
                revert with 0, 'done'
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
