contract main {




// =====================  Runtime code  =====================


#
#  - impermaxRedeem(address arg1, uint256 arg2, bytes arg3)
#
function impermaxBorrow(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_16816262(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    call address(arg2).accountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        revert with 0, 'has liquidity'
    require ext_code.size(address(arg3))
    staticcall address(arg3).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg3))
    staticcall address(arg3).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    call address(arg2).getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 'NH{q', 17
    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
        if ext_call.return_data[18 len 14] > !(3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[18 len 14] + (3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        call address(arg2).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(arg1), address(arg2), address(arg3), ext_call.return_data[0], address(ext_call.return_data[0]), 0
    else:
        if ext_call.return_data[50 len 14] > !(3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 17
        if ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14] + (3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        call address(arg2).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(arg1), address(arg2), address(arg3), ext_call.return_data[0], address(ext_call.return_data[0]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04a4d36a(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 'noliq'
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    call address(arg2).accountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        revert with 0, 'has liquidity'
    require ext_code.size(address(arg3))
    staticcall address(arg3).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg3))
    staticcall address(arg3).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    call address(arg2).getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 'NH{q', 17
    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
        if ext_call.return_data[18 len 14] > !(3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[18 len 14] + (3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        call address(arg2).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(arg1), address(arg2), address(arg3), ext_call.return_data[0], address(ext_call.return_data[0]), 0
    else:
        if ext_call.return_data[50 len 14] > !(3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 17
        if ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14] + (3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        call address(arg2).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(arg1), address(arg2), address(arg3), ext_call.return_data[0], address(ext_call.return_data[0]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6d1e6050(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    call address(arg2).getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    call address(arg2).accountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        revert with 0, 'has liquidity'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    call address(arg2).getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 'NH{q', 17
    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
        if ext_call.return_data[18 len 14] > !(3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[18 len 14] + (3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        call address(arg2).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(arg1), address(arg2), address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]), 0
    else:
        if ext_call.return_data[50 len 14] > !(3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 17
        if ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14] + (3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        call address(arg2).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(arg1), address(arg2), address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d71175ce(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'noliq'
    require ext_code.size(address(arg2))
    call address(arg2).getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    call address(arg2).accountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        revert with 0, 'has liquidity'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    call address(arg2).getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 'NH{q', 17
    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
        if ext_call.return_data[18 len 14] > !(3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[18 len 14] + (3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        call address(arg2).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(arg1), address(arg2), address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]), 0
    else:
        if ext_call.return_data[50 len 14] > !(3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 17
        if ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14] + (3 * ext_call.return_data[0] / 1000):
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        call address(arg2).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(arg1), address(arg2), address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0aeb730d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    call address(arg2).accountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(arg2))
    call address(arg2).getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(arg2))
    staticcall address(arg2).liquidationIncentive() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).exchangeRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(arg2))
        staticcall address(arg2).borrowable1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[256] = ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).accrueInterest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0, 0, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, 0
        if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 <= 0:
            return 0, 0, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, 0
    else:
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).borrowable1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[256] = ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).accrueInterest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if address(ext_call.return_data[12 len 20]) == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
                return 0, 0, address(ext_call.return_data[12 len 20]), 0
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg2))
            call address(arg2).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    return bool(ext_call.return_data[32]), 
                           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                           address(ext_call.return_data[12 len 20]),
                           ext_call.return_data[0]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    return bool(ext_call.return_data[32]), 
                           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                           address(ext_call.return_data[12 len 20]),
                           ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).exchangeRate() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                       address(ext_call.return_data[12 len 20]),
                       ext_call.return_data[0]
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                    gas gas_remaining wei
            if not ext_call.success:
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                       address(ext_call.return_data[12 len 20]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                       address(ext_call.return_data[12 len 20]),
                       ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            return bool(ext_call.return_data[32]), 
                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                   address(ext_call.return_data[12 len 20]),
                   ext_call.return_data[0]
        if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if address(ext_call.return_data[12 len 20]) == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
                return 0, 0, address(ext_call.return_data[12 len 20]), 0
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg2))
            call address(arg2).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    return bool(ext_call.return_data[32]), 
                           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                           address(ext_call.return_data[12 len 20]),
                           ext_call.return_data[0]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    return bool(ext_call.return_data[32]), 
                           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                           address(ext_call.return_data[12 len 20]),
                           ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).exchangeRate() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                       address(ext_call.return_data[12 len 20]),
                       ext_call.return_data[0]
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                    gas gas_remaining wei
            if not ext_call.success:
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                       address(ext_call.return_data[12 len 20]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                       address(ext_call.return_data[12 len 20]),
                       ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            return bool(ext_call.return_data[32]), 
                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                   address(ext_call.return_data[12 len 20]),
                   ext_call.return_data[0]
    if mem[268 len 20] == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
        return 0, 0, address(ext_call.return_data[12 len 20]), 0
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).exchangeRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                gas gas_remaining wei
        if not ext_call.success:
            require ext_code.size(address(arg2))
            staticcall address(arg2).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                revert with 'NH{q', 17
            return bool(ext_call.return_data[32]), 
                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
                   address(ext_call.return_data[12 len 20]),
                   ext_call.return_data[0]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            require ext_code.size(address(arg2))
            staticcall address(arg2).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                revert with 'NH{q', 17
            return bool(ext_call.return_data[32]), 
                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
                   address(ext_call.return_data[12 len 20]),
                   ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).exchangeRate() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
            revert with 'NH{q', 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            revert with 'NH{q', 17
        return bool(ext_call.return_data[32]), 
               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
               address(ext_call.return_data[12 len 20]),
               ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        require ext_code.size(address(arg2))
        staticcall address(arg2).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
            revert with 'NH{q', 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            revert with 'NH{q', 17
        return bool(ext_call.return_data[32]), 
               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
               address(ext_call.return_data[12 len 20]),
               ext_call.return_data[0]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(address(arg2))
        staticcall address(arg2).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
            revert with 'NH{q', 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            revert with 'NH{q', 17
        return bool(ext_call.return_data[32]), 
               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
               address(ext_call.return_data[12 len 20]),
               ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).exchangeRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 'NH{q', 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
        revert with 'NH{q', 17
    return bool(ext_call.return_data[32]), 
           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
           address(ext_call.return_data[12 len 20]),
           ext_call.return_data[0]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x6d1e6050(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x04a4d36a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[68] == address(cd[68])
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[100]:
                    revert with 0, 'noliq'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).borrowable0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).accrueInterest() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).borrowable1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).accrueInterest() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[36]))
                call address(cd[36]).accountLiquidity(address arg1) with:
                     gas gas_remaining wei
                    args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[32] <= 0:
                    revert with 0, 'has liquidity'
                require ext_code.size(address(cd[68]))
                staticcall address(cd[68]).borrowBalance(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(cd[68]))
                staticcall address(cd[68]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(cd[36]))
                call address(cd[36]).getPrices() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[0] > 0x5555555555555555555555555555555555555555555555555555555555555555:
                    revert with 'NH{q', 17
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if ext_call.return_data[18 len 14] > !(3 * ext_call.return_data[0] / 1000):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[18 len 14] + (3 * ext_call.return_data[0] / 1000):
                        revert with 'NH{q', 18
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
                        revert with 'NH{q', 17
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(cd[4]), address(cd[36]), address(cd[68]), ext_call.return_data[0], address(ext_call.return_data[0]), 0
                else:
                    if ext_call.return_data[50 len 14] > !(3 * ext_call.return_data[0] / 1000):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[50 len 14] + (3 * ext_call.return_data[0] / 1000):
                        revert with 'NH{q', 18
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
                        revert with 'NH{q', 17
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(cd[4]), address(cd[36]), address(cd[68]), ext_call.return_data[0], address(ext_call.return_data[0]), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint32(call.func_hash) >> 224 != unknown_0x0aeb730d(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x16816262(?????):
                    require unknown_0x51cff8d9(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xa9059cbb with:
                         gas gas_remaining wei
                        args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[68] == address(cd[68])
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).borrowable0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).borrowable1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).accountLiquidity(address arg1) with:
                         gas gas_remaining wei
                        args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'has liquidity'
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).borrowBalance(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).getPrices() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[0] > 0x5555555555555555555555555555555555555555555555555555555555555555:
                        revert with 'NH{q', 17
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        if ext_call.return_data[18 len 14] > !(3 * ext_call.return_data[0] / 1000):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[18 len 14] + (3 * ext_call.return_data[0] / 1000):
                            revert with 'NH{q', 18
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).liquidationIncentive() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
                            revert with 'NH{q', 17
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(cd[4]), address(cd[36]), address(cd[68]), ext_call.return_data[0], address(ext_call.return_data[0]), 0
                    else:
                        if ext_call.return_data[50 len 14] > !(3 * ext_call.return_data[0] / 1000):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[50 len 14] + (3 * ext_call.return_data[0] / 1000):
                            revert with 'NH{q', 18
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).liquidationIncentive() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
                            revert with 'NH{q', 17
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(cd[4]), address(cd[36]), address(cd[68]), ext_call.return_data[0], address(ext_call.return_data[0]), 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require ext_code.size(address(cd[36]))
            call address(cd[36]).accountLiquidity(address arg1) with:
                 gas gas_remaining wei
                args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(cd[36]))
            call address(cd[36]).getPrices() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[36]))
            call address(cd[36]).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).borrowable0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).accrueInterest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            staticcall address(ext_call.return_data[12 len 20]).borrowBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).borrowable1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[288] = ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).accrueInterest() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[12 len 20]))
                staticcall address(ext_call.return_data[12 len 20]).borrowBalance(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0, 0, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, 0
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 <= 0:
                    return 0, 0, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, 0
            else:
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).borrowable1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[288] = ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).accrueInterest() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[12 len 20]))
                staticcall address(ext_call.return_data[12 len 20]).borrowBalance(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if address(ext_call.return_data[12 len 20]) == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
                        return 0, 0, address(ext_call.return_data[12 len 20]), 0
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).exchangeRate() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).underlying() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).underlying() with:
                                    gas gas_remaining wei
                            if ext_call.success:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            return bool(ext_call.return_data[32]), 
                                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                                   address(ext_call.return_data[12 len 20]),
                                   ext_call.return_data[0]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).underlying() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).underlying() with:
                                    gas gas_remaining wei
                            if ext_call.success:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            return bool(ext_call.return_data[32]), 
                                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                                   address(ext_call.return_data[12 len 20]),
                                   ext_call.return_data[0]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).exchangeRate() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlying() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        return bool(ext_call.return_data[32]), 
                               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                               address(ext_call.return_data[12 len 20]),
                               ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlying() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        return bool(ext_call.return_data[32]), 
                               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                               address(ext_call.return_data[12 len 20]),
                               ext_call.return_data[0]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlying() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        return bool(ext_call.return_data[32]), 
                               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                               address(ext_call.return_data[12 len 20]),
                               ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).exchangeRate() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    return bool(ext_call.return_data[32]), 
                           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                           address(ext_call.return_data[12 len 20]),
                           ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    if address(ext_call.return_data[12 len 20]) == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
                        return 0, 0, address(ext_call.return_data[12 len 20]), 0
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).exchangeRate() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).underlying() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).underlying() with:
                                    gas gas_remaining wei
                            if ext_call.success:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            return bool(ext_call.return_data[32]), 
                                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                                   address(ext_call.return_data[12 len 20]),
                                   ext_call.return_data[0]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).underlying() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).underlying() with:
                                    gas gas_remaining wei
                            if ext_call.success:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            return bool(ext_call.return_data[32]), 
                                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                                   address(ext_call.return_data[12 len 20]),
                                   ext_call.return_data[0]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).exchangeRate() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlying() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        return bool(ext_call.return_data[32]), 
                               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                               address(ext_call.return_data[12 len 20]),
                               ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlying() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        return bool(ext_call.return_data[32]), 
                               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                               address(ext_call.return_data[12 len 20]),
                               ext_call.return_data[0]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlying() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        return bool(ext_call.return_data[32]), 
                               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                               address(ext_call.return_data[12 len 20]),
                               ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).exchangeRate() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    return bool(ext_call.return_data[32]), 
                           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                           address(ext_call.return_data[12 len 20]),
                           ext_call.return_data[0]
            if mem[300 len 20] == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
                return 0, 0, address(ext_call.return_data[12 len 20]), 0
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[36]))
            call address(cd[36]).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] <= ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                        revert with 'NH{q', 17
                    return bool(ext_call.return_data[32]), 
                           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
                           address(ext_call.return_data[12 len 20]),
                           ext_call.return_data[0]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                        revert with 'NH{q', 17
                    return bool(ext_call.return_data[32]), 
                           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
                           address(ext_call.return_data[12 len 20]),
                           ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).exchangeRate() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                    revert with 'NH{q', 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
                       address(ext_call.return_data[12 len 20]),
                       ext_call.return_data[0]
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                    gas gas_remaining wei
            if not ext_call.success:
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                    revert with 'NH{q', 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
                       address(ext_call.return_data[12 len 20]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                    revert with 'NH{q', 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
                       address(ext_call.return_data[12 len 20]),
                       ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20]), ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                revert with 'NH{q', 17
            return bool(ext_call.return_data[32]), 
                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
                   address(ext_call.return_data[12 len 20]),
                   ext_call.return_data[0]
        if unknown_0x6d1e6050(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require ext_code.size(address(cd[36]))
            call address(cd[36]).getPrices() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).borrowable0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).borrowable1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).borrowable0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).accrueInterest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).borrowable1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).accrueInterest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[36]))
            call address(cd[36]).accountLiquidity(address arg1) with:
                 gas gas_remaining wei
                args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32] <= 0:
                revert with 0, 'has liquidity'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(cd[36]))
            call address(cd[36]).getPrices() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[0] > 0x5555555555555555555555555555555555555555555555555555555555555555:
                revert with 'NH{q', 17
            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                if ext_call.return_data[18 len 14] > !(3 * ext_call.return_data[0] / 1000):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14] + (3 * ext_call.return_data[0] / 1000):
                    revert with 'NH{q', 18
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
                    revert with 'NH{q', 17
                require ext_code.size(address(cd[36]))
                call address(cd[36]).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(cd[4]), address(cd[36]), address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]), 0
            else:
                if ext_call.return_data[50 len 14] > !(3 * ext_call.return_data[0] / 1000):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[50 len 14] + (3 * ext_call.return_data[0] / 1000):
                    revert with 'NH{q', 18
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
                    revert with 'NH{q', 17
                require ext_code.size(address(cd[36]))
                call address(cd[36]).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(cd[4]), address(cd[36]), address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x876d9d9e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                require ('cd', 100).length <= test266151307()
                require cd[100] + ('cd', 100).length + 36 <= calldata.size
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xacb86cbb(?????):
                    require unknown_0xd71175ce(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[68]:
                        revert with 0, 'noliq'
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).getPrices() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).borrowable0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).borrowable1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).borrowable0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).borrowable1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).accountLiquidity(address arg1) with:
                         gas gas_remaining wei
                        args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'has liquidity'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).getPrices() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[0] > 0x5555555555555555555555555555555555555555555555555555555555555555:
                        revert with 'NH{q', 17
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        if ext_call.return_data[18 len 14] > !(3 * ext_call.return_data[0] / 1000):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[18 len 14] + (3 * ext_call.return_data[0] / 1000):
                            revert with 'NH{q', 18
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).liquidationIncentive() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
                            revert with 'NH{q', 17
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(cd[4]), address(cd[36]), address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]), 0
                    else:
                        if ext_call.return_data[50 len 14] > !(3 * ext_call.return_data[0] / 1000):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[50 len 14] + (3 * ext_call.return_data[0] / 1000):
                            revert with 'NH{q', 18
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).liquidationIncentive() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18 < 1:
                            revert with 'NH{q', 17
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).flashRedeem(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) + (3 * ext_call.return_data[0] / 1000) / 10^18) - 1, 96, 192, address(cd[4]), address(cd[36]), address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]), 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[68] <= test266151307()
                    require cd[68] + 35 < calldata.size
                    require ('cd', 68).length <= test266151307()
                    require cd[68] + ('cd', 68).length + 36 <= calldata.size
                    require ('cd', 68).length >= 192
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    require ('cd', 68)[2] == address(('cd', 68)[2])
                    require ('cd', 68)[4] == address(('cd', 68)[4])
                    require ('cd', 68)[5] == uint8(('cd', 68)[5])
                    require ext_code.size(address(('cd', 68)[1]))
                    staticcall address(('cd', 68)[1]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).isStakedLPToken() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        mem[ceil32(return_data.size) + 164] = cd[36]
                        require ext_code.size(address(('cd', 68)[4]))
                        call address(('cd', 68)[4]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(('cd', 68)[4]), cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(('cd', 68)[4]))
                        call address(('cd', 68)[4]).burn(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        mem[(2 * ceil32(return_data.size)) + 128 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(address(('cd', 68)[4]))
                        staticcall address(('cd', 68)[4]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(('cd', 68)[4]))
                        staticcall address(('cd', 68)[4]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(('cd', 68)[4]))
                        staticcall address(('cd', 68)[4]).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(('cd', 68)[4]))
                        staticcall address(('cd', 68)[4]).getReserves() with:
                                gas gas_remaining wei
                        mem[(8 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if cd[36] and ext_call.return_data[18 len 14] > -1 / cd[36]:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if cd[36] and ext_call.return_data[50 len 14] > -1 / cd[36]:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[18 len 14] < cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] < cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 1 == uint8(('cd', 68)[5]):
                            if 1 == uint8(('cd', 68)[5]):
                                if cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                if not cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                    if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(address(('cd', 68)[4]))
                                    if 1 == uint8(('cd', 68)[5]):
                                        call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0
                                    else:
                                        call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(address(('cd', 68)[2]))
                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args address(('cd', 68)[0]), this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(('cd', 68)[1]))
                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                else:
                                    if cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and 997 > -1 / cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if not cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] / cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != 997:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                        if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if -3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (1000 * ext_call.return_data[18 len 14]) - (3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(('cd', 68)[4]))
                                            if 1 == uint8(('cd', 68)[5]):
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0
                                            else:
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                        else:
                                            if 0 > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if uint8(('cd', 68)[5]) != 1:
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(11 * ceil32(return_data.size)) + 260] = 128
                                                mem[(11 * ceil32(return_data.size)) + 292] = 0
                                                mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                                mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                                mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                                mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                                    else:
                                        if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1 / 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if (997 * ext_call.return_data[50 len 14] * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) - (997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            if 0 > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if uint8(('cd', 68)[5]) != 1:
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(11 * ceil32(return_data.size)) + 260] = 128
                                                mem[(11 * ceil32(return_data.size)) + 292] = 0
                                                mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                                mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                                mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                                mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                                        else:
                                            if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if -3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (1000 * ext_call.return_data[18 len 14]) - (3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                            mem[(11 * ceil32(return_data.size)) + 260] = 128
                                            mem[(11 * ceil32(return_data.size)) + 292] = 0
                                            mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                            require ext_code.size(address(('cd', 68)[4]))
                                            if 1 == uint8(('cd', 68)[5]):
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                            else:
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                            mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                            mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                            mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                            else:
                                if cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                if not cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                    if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if uint8(('cd', 68)[5]) != 1:
                                        require ext_code.size(address(('cd', 68)[4]))
                                        call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[2]), ('cd', 68)[3]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(('cd', 68)[2]))
                                        call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[0]), this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(('cd', 68)[1]))
                                        call address(('cd', 68)[1]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[1]), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                    else:
                                        mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                        mem[(11 * ceil32(return_data.size)) + 260] = 128
                                        mem[(11 * ceil32(return_data.size)) + 292] = 0
                                        mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                        require ext_code.size(address(('cd', 68)[4]))
                                        call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                        mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[2]), ('cd', 68)[3]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                        mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                        require ext_code.size(address(('cd', 68)[2]))
                                        call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[0]), this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                        mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        require ext_code.size(address(('cd', 68)[1]))
                                        call address(('cd', 68)[1]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                                else:
                                    if cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and 997 > -1 / cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if not cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != 997:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                        if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            if 0 > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if 1 == uint8(('cd', 68)[5]):
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(11 * ceil32(return_data.size)) + 260] = 128
                                                mem[(11 * ceil32(return_data.size)) + 292] = 0
                                                mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                                mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                                mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                                mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                                        else:
                                            if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if -3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (1000 * ext_call.return_data[50 len 14]) - (3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if uint8(('cd', 68)[5]) != 1:
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(11 * ceil32(return_data.size)) + 260] = 128
                                                mem[(11 * ceil32(return_data.size)) + 292] = 0
                                                mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                                mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                                mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                                mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                                    else:
                                        if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1 / 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if (997 * ext_call.return_data[18 len 14] * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) - (997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            if 0 > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(('cd', 68)[4]))
                                            if 1 == uint8(('cd', 68)[5]):
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0
                                            else:
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                        else:
                                            if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if -3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (1000 * ext_call.return_data[50 len 14]) - (3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                            mem[(11 * ceil32(return_data.size)) + 260] = 128
                                            mem[(11 * ceil32(return_data.size)) + 292] = 0
                                            mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                            require ext_code.size(address(('cd', 68)[4]))
                                            if 1 == uint8(('cd', 68)[5]):
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                            else:
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                            mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                            mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                            mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                        else:
                            if 1 == uint8(('cd', 68)[5]):
                                if cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                if not cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                    if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if 1 == uint8(('cd', 68)[5]):
                                        require ext_code.size(address(('cd', 68)[4]))
                                        call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[2]), ('cd', 68)[3]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(('cd', 68)[2]))
                                        call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[0]), this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(('cd', 68)[1]))
                                        call address(('cd', 68)[1]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[1]), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                    else:
                                        mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                        mem[(11 * ceil32(return_data.size)) + 260] = 128
                                        mem[(11 * ceil32(return_data.size)) + 292] = 0
                                        mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                        require ext_code.size(address(('cd', 68)[4]))
                                        call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                        mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[2]), ('cd', 68)[3]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                        mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                        require ext_code.size(address(('cd', 68)[2]))
                                        call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[0]), this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                        mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        require ext_code.size(address(('cd', 68)[1]))
                                        call address(('cd', 68)[1]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                                else:
                                    if cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and 997 > -1 / cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if not cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] / cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != 997:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                        if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            if 0 > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(('cd', 68)[4]))
                                            if 1 == uint8(('cd', 68)[5]):
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0
                                            else:
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                        else:
                                            if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if -3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (1000 * ext_call.return_data[18 len 14]) - (3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                            mem[(11 * ceil32(return_data.size)) + 260] = 128
                                            mem[(11 * ceil32(return_data.size)) + 292] = 0
                                            mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                            require ext_code.size(address(('cd', 68)[4]))
                                            if 1 == uint8(('cd', 68)[5]):
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                            else:
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                            mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                            mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                            mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                                    else:
                                        if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1 / 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if (997 * ext_call.return_data[50 len 14] * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) - (997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            if 0 > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if 1 == uint8(('cd', 68)[5]):
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(11 * ceil32(return_data.size)) + 260] = 128
                                                mem[(11 * ceil32(return_data.size)) + 292] = 0
                                                mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                                mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                                mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                                mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                                        else:
                                            if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if -3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (1000 * ext_call.return_data[18 len 14]) - (3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if uint8(('cd', 68)[5]) != 1:
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(11 * ceil32(return_data.size)) + 260] = 128
                                                mem[(11 * ceil32(return_data.size)) + 292] = 0
                                                mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                                mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                                mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                                mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                            else:
                                if cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                if not cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                    if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(address(('cd', 68)[4]))
                                    if 1 == uint8(('cd', 68)[5]):
                                        call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0
                                    else:
                                        call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(address(('cd', 68)[2]))
                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args address(('cd', 68)[0]), this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(('cd', 68)[1]))
                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                else:
                                    if cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and 997 > -1 / cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if not cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != 997:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                        if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            if 0 > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if 1 == uint8(('cd', 68)[5]):
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(11 * ceil32(return_data.size)) + 260] = 128
                                                mem[(11 * ceil32(return_data.size)) + 292] = 0
                                                mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                                mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                                mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                                mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                                        else:
                                            if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if -3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (1000 * ext_call.return_data[50 len 14]) - (3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if uint8(('cd', 68)[5]) != 1:
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(11 * ceil32(return_data.size)) + 260] = 128
                                                mem[(11 * ceil32(return_data.size)) + 292] = 0
                                                mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                                mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                                mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                                mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                                    else:
                                        if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1 / 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if (997 * ext_call.return_data[18 len 14] * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) - (997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            if 0 > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                            mem[(11 * ceil32(return_data.size)) + 260] = 128
                                            mem[(11 * ceil32(return_data.size)) + 292] = 0
                                            mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                            require ext_code.size(address(('cd', 68)[4]))
                                            if 1 == uint8(('cd', 68)[5]):
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                            else:
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                            mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                            mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                            mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                                        else:
                                            if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 17
                                            if -3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (1000 * ext_call.return_data[50 len 14]) - (3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 'NH{q', 18
                                            mem[(10 * ceil32(return_data.size)) + 164] = cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if 1 == uint8(('cd', 68)[5]):
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(11 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(11 * ceil32(return_data.size)) + 260] = 128
                                                mem[(11 * ceil32(return_data.size)) + 292] = 0
                                                mem[(11 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(11 * ceil32(return_data.size)) + 164] = address(('cd', 68)[2])
                                                mem[(11 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 164] = address(('cd', 68)[0])
                                                mem[(12 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(14 * ceil32(return_data.size)) + 164] = address(('cd', 68)[1])
                                                mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(16 * ceil32(return_data.size)) + 164] = this.address
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(16 * ceil32(return_data.size)) + 164 len (9 * ceil32(return_data.size)) + 32]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(('cd', 68)[4]))
                            call address(('cd', 68)[4]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(('cd', 68)[4]), cd[36]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(('cd', 68)[4]))
                            call address(('cd', 68)[4]).burn(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require ext_code.size(address(('cd', 68)[4]))
                            staticcall address(('cd', 68)[4]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 68)[4]))
                            staticcall address(('cd', 68)[4]).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 68)[4]))
                            staticcall address(('cd', 68)[4]).0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(('cd', 68)[4]))
                            staticcall address(('cd', 68)[4]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if cd[36] and ext_call.return_data[18 len 14] > -1 / cd[36]:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if cd[36] and ext_call.return_data[50 len 14] > -1 / cd[36]:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if ext_call.return_data[18 len 14] < cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[50 len 14] < cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 == uint8(('cd', 68)[5]):
                                if 1 == uint8(('cd', 68)[5]):
                                    if cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                    if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                        if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1:
                                            revert with 'NH{q', 17
                                        if not (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                        mem[(12 * ceil32(return_data.size)) + 260] = 128
                                        mem[(12 * ceil32(return_data.size)) + 292] = 0
                                        mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                        require ext_code.size(address(('cd', 68)[4]))
                                        if 1 == uint8(('cd', 68)[5]):
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                        else:
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[2]), ('cd', 68)[3]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                        require ext_code.size(address(('cd', 68)[2]))
                                        call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[0]), this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        require ext_code.size(address(('cd', 68)[1]))
                                        call address(('cd', 68)[1]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                    else:
                                        if cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and 997 > -1 / cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] / cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[18 len 14]) - (3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                if 0 > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                mem[(12 * ceil32(return_data.size)) + 292] = 0
                                                mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                        else:
                                            if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1 / 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if (997 * ext_call.return_data[50 len 14] * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) - (997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[18 len 14]) - (3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                if 0 > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if uint8(('cd', 68)[5]) != 1:
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(12 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                else:
                                    if cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                    if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                        if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1:
                                            revert with 'NH{q', 17
                                        if not (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if uint8(('cd', 68)[5]) != 1:
                                            require ext_code.size(address(('cd', 68)[4]))
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                        else:
                                            mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                            mem[(12 * ceil32(return_data.size)) + 260] = 128
                                            mem[(12 * ceil32(return_data.size)) + 292] = 0
                                            mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                            require ext_code.size(address(('cd', 68)[4]))
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                    else:
                                        if cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and 997 > -1 / cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                if 0 > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                mem[(12 * ceil32(return_data.size)) + 292] = 0
                                                mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                            else:
                                                if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[50 len 14]) - (3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                mem[(12 * ceil32(return_data.size)) + 292] = 0
                                                mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                        else:
                                            if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1 / 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if (997 * ext_call.return_data[18 len 14] * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) - (997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                if 0 > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if 1 == uint8(('cd', 68)[5]):
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(12 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                            else:
                                                if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[50 len 14]) - (3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if uint8(('cd', 68)[5]) != 1:
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(12 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                            else:
                                if uint8(('cd', 68)[5]) != 1:
                                    if cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                    if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                        if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1:
                                            revert with 'NH{q', 17
                                        if not (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if uint8(('cd', 68)[5]) != 1:
                                            require ext_code.size(address(('cd', 68)[4]))
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                        else:
                                            mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                            mem[(12 * ceil32(return_data.size)) + 260] = 128
                                            mem[(12 * ceil32(return_data.size)) + 292] = 0
                                            mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                            require ext_code.size(address(('cd', 68)[4]))
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                    else:
                                        if cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and 997 > -1 / cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1 / 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if (997 * ext_call.return_data[18 len 14] * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) - (997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[50 len 14]) - (3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                if 0 > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                mem[(12 * ceil32(return_data.size)) + 292] = 0
                                                mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[0]) * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                        else:
                                            if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                if 0 > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                mem[(12 * ceil32(return_data.size)) + 292] = 0
                                                mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                            else:
                                                if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[50 len 14]) - (3 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if 1 == uint8(('cd', 68)[5]):
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(12 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                else:
                                    if cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                    if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                        if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1:
                                            revert with 'NH{q', 17
                                        if not (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(('cd', 68)[4]))
                                        if 1 == uint8(('cd', 68)[5]):
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0
                                        else:
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[2]), ('cd', 68)[3]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(('cd', 68)[2]))
                                        call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[0]), this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(('cd', 68)[1]))
                                        call address(('cd', 68)[1]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[1]), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                    else:
                                        if cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and 997 > -1 / cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] / cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                if 0 > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0
                                            else:
                                                if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[18 len 14]) - (3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                        else:
                                            if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1 / 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if (997 * ext_call.return_data[50 len 14] * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) - (997 * cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != ext_call.return_data[50 len 14] - (cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                if 0 > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                if ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[18 len 14]) - (3 * cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if uint8(('cd', 68)[5]) != 1:
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(12 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(12 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(12 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(13 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(15 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(17 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), cd[36]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(('cd', 68)[4]))
                            call address(('cd', 68)[4]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(('cd', 68)[4]), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(('cd', 68)[4]))
                            call address(('cd', 68)[4]).burn(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require ext_code.size(address(('cd', 68)[4]))
                            staticcall address(('cd', 68)[4]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 68)[4]))
                            staticcall address(('cd', 68)[4]).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 68)[4]))
                            staticcall address(('cd', 68)[4]).0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(('cd', 68)[4]))
                            staticcall address(('cd', 68)[4]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if ext_call.return_data[18 len 14] < ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[50 len 14] < ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 == uint8(('cd', 68)[5]):
                                if 1 == uint8(('cd', 68)[5]):
                                    if ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                    if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                        if not ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1:
                                            revert with 'NH{q', 17
                                        if not (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                        mem[(14 * ceil32(return_data.size)) + 260] = 128
                                        mem[(14 * ceil32(return_data.size)) + 292] = 0
                                        mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                        require ext_code.size(address(('cd', 68)[4]))
                                        if 1 == uint8(('cd', 68)[5]):
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                        else:
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[2]), ('cd', 68)[3]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                        require ext_code.size(address(('cd', 68)[2]))
                                        call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[0]), this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        require ext_code.size(address(('cd', 68)[1]))
                                        call address(('cd', 68)[1]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if not 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if (997 * ext_call.return_data[50 len 14] * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[18 len 14]) - (3 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                if 0 > !(997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if 1 == uint8(('cd', 68)[5]):
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                        else:
                                            if not ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                if 0 > !(997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if uint8(('cd', 68)[5]) != 1:
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                            else:
                                                if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[18 len 14]) - (3 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                    if ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                        if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1:
                                            revert with 'NH{q', 17
                                        if not (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(('cd', 68)[4]))
                                        if 1 == uint8(('cd', 68)[5]):
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0
                                        else:
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[2]), ('cd', 68)[3]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(('cd', 68)[2]))
                                        call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[0]), this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(('cd', 68)[1]))
                                        call address(('cd', 68)[1]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[1]), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                if 0 > !(997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                            else:
                                                if ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[50 len 14]) - (3 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if 1 == uint8(('cd', 68)[5]):
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                        else:
                                            if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if not 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if (997 * ext_call.return_data[18 len 14] * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                if 0 > !(997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                            else:
                                                if ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[50 len 14]) - (3 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if uint8(('cd', 68)[5]) != 1:
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                            else:
                                if 1 == uint8(('cd', 68)[5]):
                                    if ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                    if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                        if not ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1:
                                            revert with 'NH{q', 17
                                        if not (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                        mem[(14 * ceil32(return_data.size)) + 260] = 128
                                        mem[(14 * ceil32(return_data.size)) + 292] = 0
                                        mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                        require ext_code.size(address(('cd', 68)[4]))
                                        if 1 == uint8(('cd', 68)[5]):
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                        else:
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[2]), ('cd', 68)[3]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                        require ext_code.size(address(('cd', 68)[2]))
                                        call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[0]), this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        require ext_code.size(address(('cd', 68)[1]))
                                        call address(('cd', 68)[1]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                            if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[18 len 14]) - (3 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                if 0 > !(997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if 1 == uint8(('cd', 68)[5]):
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                        else:
                                            if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] and ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if not 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if (997 * ext_call.return_data[50 len 14] * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] != ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) / ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > !(997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < -1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[18 len 14]) - (3 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), address(this.address), 128, 0
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                if 0 > !(997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if uint8(('cd', 68)[5]) != 1:
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0, address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                    if ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                        if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > -1:
                                            revert with 'NH{q', 17
                                        if not (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if 1 == uint8(('cd', 68)[5]):
                                            require ext_code.size(address(('cd', 68)[4]))
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                        else:
                                            mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                            mem[(14 * ceil32(return_data.size)) + 260] = 128
                                            mem[(14 * ceil32(return_data.size)) + 292] = 0
                                            mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                            require ext_code.size(address(('cd', 68)[4]))
                                            call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[2]), ('cd', 68)[3]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                            require ext_code.size(address(('cd', 68)[2]))
                                            call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[0]), this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                            require ext_code.size(address(('cd', 68)[1]))
                                            call address(('cd', 68)[1]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                            if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                if 0 > !(997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if uint8(('cd', 68)[5]) != 1:
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                            else:
                                                if ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[50 len 14]) - (3 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if uint8(('cd', 68)[5]) != 1:
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                        else:
                                            if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if not 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if (997 * ext_call.return_data[18 len 14] * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != ext_call.return_data[18 len 14] - (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                if 0 > !(997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                require ext_code.size(address(('cd', 68)[4]))
                                                if 1 == uint8(('cd', 68)[5]):
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], address(this.address), 128, 0, None
                                                else:
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 0, address(this.address), 128, 0, None
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[2]), ('cd', 68)[3]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                require ext_code.size(address(('cd', 68)[2]))
                                                call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[0]), this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                require ext_code.size(address(('cd', 68)[1]))
                                                call address(('cd', 68)[1]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                                            else:
                                                if ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) and 1000 > -1 / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if not ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) / ext_call.return_data[50 len 14] - (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) != 1000:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (1000 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]) > !(997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 17
                                                if -3 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < -1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (1000 * ext_call.return_data[50 len 14]) - (3 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]):
                                                    revert with 'NH{q', 18
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(('cd', 68)[4]), ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if 1 == uint8(('cd', 68)[5]):
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), address(this.address), 128, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                else:
                                                    mem[(14 * ceil32(return_data.size)) + 228] = this.address
                                                    mem[(14 * ceil32(return_data.size)) + 260] = 128
                                                    mem[(14 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(14 * ceil32(return_data.size)) + 324 len 0] = None
                                                    require ext_code.size(address(('cd', 68)[4]))
                                                    call address(('cd', 68)[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) - (3 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[(14 * ceil32(return_data.size)) + 196] = ('cd', 68)[3]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[2]), ('cd', 68)[3]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(15 * ceil32(return_data.size)) + 196] = this.address
                                                    require ext_code.size(address(('cd', 68)[2]))
                                                    call address(('cd', 68)[2]).liquidate(address arg1, address arg2) with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[0]), this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(17 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                                    require ext_code.size(address(('cd', 68)[1]))
                                                    call address(('cd', 68)[1]).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(('cd', 68)[1]), ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(19 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
