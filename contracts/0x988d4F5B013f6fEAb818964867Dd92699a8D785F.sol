contract main {




// =====================  Runtime code  =====================


#
#  - sub_657041fe(?)
#  - zapIn(address arg1, uint256 arg2, address arg3, uint256 arg4)
#
const MIN_AMOUNT = 1000


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address routerAddress;
address WBNBAddress;
uint256 swapFee;

function swapFee() {
    return swapFee
}

function WBNB() {
    return WBNBAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function initialize(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        routerAddress = arg1
        WBNBAddress = arg2
        swapFee = arg3
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            routerAddress = arg1
            WBNBAddress = arg2
            swapFee = arg3
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            routerAddress = arg1
            WBNBAddress = arg2
            swapFee = arg3
            Mask(248, 0, stor0.field_8) = 0
}

function estimateSwap(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.0xad24dce7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        revert with 0, 'incompatible liquidity pair factory'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[12 len 20] != arg2:
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != arg2:
            revert with 0, 'token not in LP pair'
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273)
    if address(ext_call.return_data[0]) == arg2:
        delegate 0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273.getSwapAmount(uint256 rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args arg3, ext_call.return_data[0] << 144, swapFee
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == delegate.return_data[0]
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args delegate.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        delegate 0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273.getSwapAmount(uint256 rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args arg3, ext_call.return_data[32] << 144, swapFee
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == delegate.return_data[0]
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args delegate.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    if address(ext_call.return_data[0]) == arg2:
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
    else:
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return delegate.return_data[0], ext_call.return_data[0], address(ext_call.return_data[0])
}



}
