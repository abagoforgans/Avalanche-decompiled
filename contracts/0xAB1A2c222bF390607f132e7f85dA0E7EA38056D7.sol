contract main {




// =====================  Runtime code  =====================


#
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
    staticcall arg1.farmingToken() with:
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

function sub_657041fe(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if msg.value < 1000:
        revert with 0, 'min amount violation'
    require ext_code.size(WBNBAddress)
    call WBNBAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    staticcall address(arg1).farmingToken() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).factory() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        revert with 0, 'incompatible liquidity pair factory'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] <= 1000:
        revert with 0, 'LP reserves too low'
    if ext_call.return_data[50 len 14] <= 1000:
        revert with 0, 'LP reserves too low'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == WBNBAddress:
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = WBNBAddress
        require ext_code.size(address(ext_call.return_data[0]))
        if address(ext_call.return_data[0]) == WBNBAddress:
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(WBNBAddress)
            staticcall WBNBAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(8 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 32]
            mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            if address(ext_call.return_data[0]) == WBNBAddress:
                mem[(10 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[0])
                mem[(10 * ceil32(return_data.size)) + 260] = swapFee
                require ext_code.size(0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273)
                delegate 0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273.getSwapAmount(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[0] << 144, swapFee, mem[(10 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
                mem[(10 * ceil32(return_data.size)) + 192] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require delegate.return_data[0] == delegate.return_data[0]
                mem[(12 * ceil32(return_data.size)) + 196] = routerAddress
                mem[(12 * ceil32(return_data.size)) + 228] = -1
                require ext_code.size(WBNBAddress)
                call WBNBAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1, mem[(12 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(13 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 196] = delegate.return_data[0]
                mem[(13 * ceil32(return_data.size)) + 228] = arg2
                mem[(13 * ceil32(return_data.size)) + 260] = 160
                mem[(13 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (13 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(13 * ceil32(return_data.size)) + 292] = this.address
                mem[(13 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], arg2, Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(13 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (14 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _435 = mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28]
                require mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 223 < (13 * ceil32(return_data.size)) + return_data.size + 192
                _443 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193
                mem[(14 * ceil32(return_data.size)) + 192] = _443
                require _435 + (32 * _443) + 32 <= return_data.size
                idx = 0
                s = (13 * ceil32(return_data.size)) + _435 + 224
                t = (14 * ceil32(return_data.size)) + 224
                while idx < _443:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[12 len 20]))
                call address(ext_call.return_data[12 len 20]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _747 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_747] == bool(mem[_747])
                if 0 >= _443:
                    revert with 'NH{q', 50
                _803 = mem[(14 * ceil32(return_data.size)) + 224]
                if ext_call.return_data[0] < mem[(14 * ceil32(return_data.size)) + 224]:
                    revert with 'NH{q', 17
                if 1 >= _443:
                    revert with 'NH{q', 50
                _819 = mem[(14 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 68] = ext_call.return_data[0] - mem[(14 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 100] = _819
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args WBNBAddress, address(ext_call.return_data[12 len 20]), ext_call.return_data[0] - _803, _819, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _843 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_843] == mem[_843]
                require mem[_843 + 32] == mem[_843 + 32]
                _867 = mem[_843 + 64]
                require mem[_843 + 64] == mem[_843 + 64]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _891 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_891] == bool(mem[_891])
                require ext_code.size(address(arg1))
                call address(arg1).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args _867
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _939 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _947 = mem[_939]
                require mem[_939] == mem[_939]
                _955 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _947
                _963 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_955 + 100] = 32
                mem[_955 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1011 = mem[_963]
                mem[_955 + 164 len ceil32(mem[_963])] = mem[_963 + 32 len ceil32(mem[_963])]
                if ceil32(_1011) > _1011:
                    mem[_955 + _1011 + 164] = 0
                call address(arg1) with:
                     gas gas_remaining wei
                    args mem[_955 + 168 len _1011 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_955 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_955 + 196] == bool(mem[_955 + 196])
                        if not mem[_955 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x67a737f9: msg.sender, address(arg1), _867, _947
            else:
                mem[(10 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
                mem[(10 * ceil32(return_data.size)) + 260] = swapFee
                require ext_code.size(0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273)
                delegate 0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273.getSwapAmount(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[32] << 144, swapFee, mem[(10 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
                mem[(10 * ceil32(return_data.size)) + 192] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require delegate.return_data[0] == delegate.return_data[0]
                mem[(12 * ceil32(return_data.size)) + 196] = routerAddress
                mem[(12 * ceil32(return_data.size)) + 228] = -1
                require ext_code.size(WBNBAddress)
                call WBNBAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1, mem[(12 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(13 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 196] = delegate.return_data[0]
                mem[(13 * ceil32(return_data.size)) + 228] = arg2
                mem[(13 * ceil32(return_data.size)) + 260] = 160
                mem[(13 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (13 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(13 * ceil32(return_data.size)) + 292] = this.address
                mem[(13 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], arg2, Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(13 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (14 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _436 = mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28]
                require mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 223 < (13 * ceil32(return_data.size)) + return_data.size + 192
                _444 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193
                mem[(14 * ceil32(return_data.size)) + 192] = _444
                require _436 + (32 * _444) + 32 <= return_data.size
                idx = 0
                s = (13 * ceil32(return_data.size)) + _436 + 224
                t = (14 * ceil32(return_data.size)) + 224
                while idx < _444:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[12 len 20]))
                call address(ext_call.return_data[12 len 20]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _748 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_748] == bool(mem[_748])
                if 0 >= _444:
                    revert with 'NH{q', 50
                _804 = mem[(14 * ceil32(return_data.size)) + 224]
                if ext_call.return_data[0] < mem[(14 * ceil32(return_data.size)) + 224]:
                    revert with 'NH{q', 17
                if 1 >= _444:
                    revert with 'NH{q', 50
                _821 = mem[(14 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 68] = ext_call.return_data[0] - mem[(14 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 100] = _821
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args WBNBAddress, address(ext_call.return_data[12 len 20]), ext_call.return_data[0] - _804, _821, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _844 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_844] == mem[_844]
                require mem[_844 + 32] == mem[_844 + 32]
                _868 = mem[_844 + 64]
                require mem[_844 + 64] == mem[_844 + 64]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _892 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_892] == bool(mem[_892])
                require ext_code.size(address(arg1))
                call address(arg1).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args _868
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _940 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _948 = mem[_940]
                require mem[_940] == mem[_940]
                _956 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _948
                _965 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_956 + 100] = 32
                mem[_956 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1012 = mem[_965]
                mem[_956 + 164 len ceil32(mem[_965])] = mem[_965 + 32 len ceil32(mem[_965])]
                if ceil32(_1012) > _1012:
                    mem[_956 + _1012 + 164] = 0
                call address(arg1) with:
                     gas gas_remaining wei
                    args mem[_956 + 168 len _1012 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_956 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_956 + 196] == bool(mem[_956 + 196])
                        if not mem[_956 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x67a737f9: msg.sender, address(arg1), _868, _948
        else:
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(WBNBAddress)
            staticcall WBNBAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(8 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 32]
            mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            if address(ext_call.return_data[0]) == WBNBAddress:
                mem[(10 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[0])
                mem[(10 * ceil32(return_data.size)) + 260] = swapFee
                require ext_code.size(0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273)
                delegate 0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273.getSwapAmount(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[0] << 144, swapFee, mem[(10 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
                mem[(10 * ceil32(return_data.size)) + 192] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require delegate.return_data[0] == delegate.return_data[0]
                mem[(12 * ceil32(return_data.size)) + 196] = routerAddress
                mem[(12 * ceil32(return_data.size)) + 228] = -1
                require ext_code.size(WBNBAddress)
                call WBNBAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1, mem[(12 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(13 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 196] = delegate.return_data[0]
                mem[(13 * ceil32(return_data.size)) + 228] = arg2
                mem[(13 * ceil32(return_data.size)) + 260] = 160
                mem[(13 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (13 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(13 * ceil32(return_data.size)) + 292] = this.address
                mem[(13 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], arg2, Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(13 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (14 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _437 = mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28]
                require mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 223 < (13 * ceil32(return_data.size)) + return_data.size + 192
                _445 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193
                mem[(14 * ceil32(return_data.size)) + 192] = _445
                require _437 + (32 * _445) + 32 <= return_data.size
                idx = 0
                s = (13 * ceil32(return_data.size)) + _437 + 224
                t = (14 * ceil32(return_data.size)) + 224
                while idx < _445:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[12 len 20]))
                call address(ext_call.return_data[12 len 20]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _749 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_749] == bool(mem[_749])
                if 0 >= _445:
                    revert with 'NH{q', 50
                _805 = mem[(14 * ceil32(return_data.size)) + 224]
                if ext_call.return_data[0] < mem[(14 * ceil32(return_data.size)) + 224]:
                    revert with 'NH{q', 17
                if 1 >= _445:
                    revert with 'NH{q', 50
                _823 = mem[(14 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 68] = ext_call.return_data[0] - mem[(14 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 100] = _823
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args WBNBAddress, address(ext_call.return_data[12 len 20]), ext_call.return_data[0] - _805, _823, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _845 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_845] == mem[_845]
                require mem[_845 + 32] == mem[_845 + 32]
                _869 = mem[_845 + 64]
                require mem[_845 + 64] == mem[_845 + 64]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _893 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_893] == bool(mem[_893])
                require ext_code.size(address(arg1))
                call address(arg1).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args _869
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _941 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _949 = mem[_941]
                require mem[_941] == mem[_941]
                _957 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _949
                _967 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_957 + 100] = 32
                mem[_957 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1013 = mem[_967]
                mem[_957 + 164 len ceil32(mem[_967])] = mem[_967 + 32 len ceil32(mem[_967])]
                if ceil32(_1013) > _1013:
                    mem[_957 + _1013 + 164] = 0
                call address(arg1) with:
                     gas gas_remaining wei
                    args mem[_957 + 168 len _1013 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_957 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_957 + 196] == bool(mem[_957 + 196])
                        if not mem[_957 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x67a737f9: msg.sender, address(arg1), _869, _949
            else:
                mem[(10 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
                mem[(10 * ceil32(return_data.size)) + 260] = swapFee
                require ext_code.size(0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273)
                delegate 0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273.getSwapAmount(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[32] << 144, swapFee, mem[(10 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
                mem[(10 * ceil32(return_data.size)) + 192] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require delegate.return_data[0] == delegate.return_data[0]
                mem[(12 * ceil32(return_data.size)) + 196] = routerAddress
                mem[(12 * ceil32(return_data.size)) + 228] = -1
                require ext_code.size(WBNBAddress)
                call WBNBAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1, mem[(12 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(13 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 196] = delegate.return_data[0]
                mem[(13 * ceil32(return_data.size)) + 228] = arg2
                mem[(13 * ceil32(return_data.size)) + 260] = 160
                mem[(13 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (13 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(13 * ceil32(return_data.size)) + 292] = this.address
                mem[(13 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], arg2, Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(13 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (14 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _438 = mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28]
                require mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 223 < (13 * ceil32(return_data.size)) + return_data.size + 192
                _446 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193
                mem[(14 * ceil32(return_data.size)) + 192] = _446
                require _438 + (32 * _446) + 32 <= return_data.size
                idx = 0
                s = (13 * ceil32(return_data.size)) + _438 + 224
                t = (14 * ceil32(return_data.size)) + 224
                while idx < _446:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[12 len 20]))
                call address(ext_call.return_data[12 len 20]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _750 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_750] == bool(mem[_750])
                if 0 >= _446:
                    revert with 'NH{q', 50
                _806 = mem[(14 * ceil32(return_data.size)) + 224]
                if ext_call.return_data[0] < mem[(14 * ceil32(return_data.size)) + 224]:
                    revert with 'NH{q', 17
                if 1 >= _446:
                    revert with 'NH{q', 50
                _825 = mem[(14 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 68] = ext_call.return_data[0] - mem[(14 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 100] = _825
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args WBNBAddress, address(ext_call.return_data[12 len 20]), ext_call.return_data[0] - _806, _825, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _846 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_846] == mem[_846]
                require mem[_846 + 32] == mem[_846 + 32]
                _870 = mem[_846 + 64]
                require mem[_846 + 64] == mem[_846 + 64]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _894 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_894] == bool(mem[_894])
                require ext_code.size(address(arg1))
                call address(arg1).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args _870
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _942 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _950 = mem[_942]
                require mem[_942] == mem[_942]
                _958 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _950
                _969 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_958 + 100] = 32
                mem[_958 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1014 = mem[_969]
                mem[_958 + 164 len ceil32(mem[_969])] = mem[_969 + 32 len ceil32(mem[_969])]
                if ceil32(_1014) > _1014:
                    mem[_958 + _1014 + 164] = 0
                call address(arg1) with:
                     gas gas_remaining wei
                    args mem[_958 + 168 len _1014 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_958 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_958 + 196] == bool(mem[_958 + 196])
                        if not mem[_958 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x67a737f9: msg.sender, address(arg1), _870, _950
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != WBNBAddress:
            revert with 0, 'token not in LP pair'
        mem[(8 * ceil32(return_data.size)) + 96] = 2
        mem[(8 * ceil32(return_data.size)) + 128] = WBNBAddress
        require ext_code.size(address(ext_call.return_data[0]))
        if address(ext_call.return_data[0]) == WBNBAddress:
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            mem[(10 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(WBNBAddress)
            staticcall WBNBAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address), mem[(10 * ceil32(return_data.size)) + 228 len 17 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(12 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            if address(ext_call.return_data[0]) == WBNBAddress:
                mem[(12 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[0])
                mem[(12 * ceil32(return_data.size)) + 260] = swapFee
                require ext_code.size(0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273)
                delegate 0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273.getSwapAmount(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[0] << 144, swapFee, mem[(12 * ceil32(return_data.size)) + 292 len 20 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require delegate.return_data[0] == delegate.return_data[0]
                mem[(14 * ceil32(return_data.size)) + 196] = routerAddress
                mem[(14 * ceil32(return_data.size)) + 228] = -1
                require ext_code.size(WBNBAddress)
                call WBNBAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1, mem[(14 * ceil32(return_data.size)) + 260 len 24 * ceil32(return_data.size)]
                mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(15 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(15 * ceil32(return_data.size)) + 196] = delegate.return_data[0]
                mem[(15 * ceil32(return_data.size)) + 228] = arg2
                mem[(15 * ceil32(return_data.size)) + 260] = 160
                mem[(15 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 128
                t = (15 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(15 * ceil32(return_data.size)) + 292] = this.address
                mem[(15 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], arg2, Array(len=2, data=mem[(15 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(15 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (16 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _439 = mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28]
                require mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] <= test266151307()
                require (15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 223 < (15 * ceil32(return_data.size)) + return_data.size + 192
                _447 = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                if mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (16 * ceil32(return_data.size)) + floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (16 * ceil32(return_data.size)) + floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193
                mem[(16 * ceil32(return_data.size)) + 192] = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                require _439 + (32 * _447) + 32 <= return_data.size
                idx = 0
                s = (15 * ceil32(return_data.size)) + _439 + 224
                t = (16 * ceil32(return_data.size)) + 224
                while idx < _447:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                _727 = mem[(8 * ceil32(return_data.size)) + 160]
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_727))
                call address(_727).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _751 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_751] == bool(mem[_751])
                if 0 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                if 1 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                _795 = mem[(8 * ceil32(return_data.size)) + 160]
                if 0 >= _447:
                    revert with 'NH{q', 50
                _807 = mem[(16 * ceil32(return_data.size)) + 224]
                if ext_call.return_data[0] < mem[(16 * ceil32(return_data.size)) + 224]:
                    revert with 'NH{q', 17
                if 1 >= _447:
                    revert with 'NH{q', 50
                _827 = mem[(16 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = mem[(8 * ceil32(return_data.size)) + 140 len 20]
                mem[mem[64] + 68] = ext_call.return_data[0] - _807
                mem[mem[64] + 100] = _827
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_795), ext_call.return_data[0] - _807, _827, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _847 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_847] == mem[_847]
                require mem[_847 + 32] == mem[_847 + 32]
                _871 = mem[_847 + 64]
                require mem[_847 + 64] == mem[_847 + 64]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _895 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_895] == bool(mem[_895])
                require ext_code.size(address(arg1))
                call address(arg1).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args _871
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _943 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _951 = mem[_943]
                require mem[_943] == mem[_943]
                _959 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _951
                _971 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_959 + 100] = 32
                mem[_959 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1015 = mem[_971]
                mem[_959 + 164 len ceil32(mem[_971])] = mem[_971 + 32 len ceil32(mem[_971])]
                if ceil32(_1015) > _1015:
                    mem[_959 + _1015 + 164] = 0
                call address(arg1) with:
                     gas gas_remaining wei
                    args mem[_959 + 168 len _1015 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_959 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_959 + 196] == bool(mem[_959 + 196])
                        if not mem[_959 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x67a737f9: msg.sender, address(arg1), _871, _951
            else:
                mem[(12 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
                mem[(12 * ceil32(return_data.size)) + 260] = swapFee
                require ext_code.size(0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273)
                delegate 0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273.getSwapAmount(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[32] << 144, swapFee, mem[(12 * ceil32(return_data.size)) + 292 len 20 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require delegate.return_data[0] == delegate.return_data[0]
                mem[(14 * ceil32(return_data.size)) + 196] = routerAddress
                mem[(14 * ceil32(return_data.size)) + 228] = -1
                require ext_code.size(WBNBAddress)
                call WBNBAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1, mem[(14 * ceil32(return_data.size)) + 260 len 24 * ceil32(return_data.size)]
                mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(15 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(15 * ceil32(return_data.size)) + 196] = delegate.return_data[0]
                mem[(15 * ceil32(return_data.size)) + 228] = arg2
                mem[(15 * ceil32(return_data.size)) + 260] = 160
                mem[(15 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 128
                t = (15 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(15 * ceil32(return_data.size)) + 292] = this.address
                mem[(15 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], arg2, Array(len=2, data=mem[(15 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(15 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (16 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _440 = mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28]
                require mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] <= test266151307()
                require (15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 223 < (15 * ceil32(return_data.size)) + return_data.size + 192
                _448 = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                if mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (16 * ceil32(return_data.size)) + floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (16 * ceil32(return_data.size)) + floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193
                mem[(16 * ceil32(return_data.size)) + 192] = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                require _440 + (32 * _448) + 32 <= return_data.size
                idx = 0
                s = (15 * ceil32(return_data.size)) + _440 + 224
                t = (16 * ceil32(return_data.size)) + 224
                while idx < _448:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                _728 = mem[(8 * ceil32(return_data.size)) + 160]
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_728))
                call address(_728).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _752 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_752] == bool(mem[_752])
                if 0 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                if 1 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                _797 = mem[(8 * ceil32(return_data.size)) + 160]
                if 0 >= _448:
                    revert with 'NH{q', 50
                _808 = mem[(16 * ceil32(return_data.size)) + 224]
                if ext_call.return_data[0] < mem[(16 * ceil32(return_data.size)) + 224]:
                    revert with 'NH{q', 17
                if 1 >= _448:
                    revert with 'NH{q', 50
                _829 = mem[(16 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = mem[(8 * ceil32(return_data.size)) + 140 len 20]
                mem[mem[64] + 68] = ext_call.return_data[0] - _808
                mem[mem[64] + 100] = _829
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_797), ext_call.return_data[0] - _808, _829, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _848 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_848] == mem[_848]
                require mem[_848 + 32] == mem[_848 + 32]
                _872 = mem[_848 + 64]
                require mem[_848 + 64] == mem[_848 + 64]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _896 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_896] == bool(mem[_896])
                require ext_code.size(address(arg1))
                call address(arg1).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args _872
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _944 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _952 = mem[_944]
                require mem[_944] == mem[_944]
                _960 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _952
                _973 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_960 + 100] = 32
                mem[_960 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1016 = mem[_973]
                mem[_960 + 164 len ceil32(mem[_973])] = mem[_973 + 32 len ceil32(mem[_973])]
                if ceil32(_1016) > _1016:
                    mem[_960 + _1016 + 164] = 0
                call address(arg1) with:
                     gas gas_remaining wei
                    args mem[_960 + 168 len _1016 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_960 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_960 + 196] == bool(mem[_960 + 196])
                        if not mem[_960 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x67a737f9: msg.sender, address(arg1), _872, _952
        else:
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            mem[(10 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(WBNBAddress)
            staticcall WBNBAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address), mem[(10 * ceil32(return_data.size)) + 228 len 17 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(12 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            if address(ext_call.return_data[0]) == WBNBAddress:
                mem[(12 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[0])
                mem[(12 * ceil32(return_data.size)) + 260] = swapFee
                require ext_code.size(0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273)
                delegate 0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273.getSwapAmount(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[0] << 144, swapFee, mem[(12 * ceil32(return_data.size)) + 292 len 20 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require delegate.return_data[0] == delegate.return_data[0]
                mem[(14 * ceil32(return_data.size)) + 196] = routerAddress
                mem[(14 * ceil32(return_data.size)) + 228] = -1
                require ext_code.size(WBNBAddress)
                call WBNBAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1, mem[(14 * ceil32(return_data.size)) + 260 len 24 * ceil32(return_data.size)]
                mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(15 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(15 * ceil32(return_data.size)) + 196] = delegate.return_data[0]
                mem[(15 * ceil32(return_data.size)) + 228] = arg2
                mem[(15 * ceil32(return_data.size)) + 260] = 160
                mem[(15 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 128
                t = (15 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(15 * ceil32(return_data.size)) + 292] = this.address
                mem[(15 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], arg2, Array(len=2, data=mem[(15 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(15 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (16 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _441 = mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28]
                require mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] <= test266151307()
                require (15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 223 < (15 * ceil32(return_data.size)) + return_data.size + 192
                _449 = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                if mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (16 * ceil32(return_data.size)) + floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (16 * ceil32(return_data.size)) + floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193
                mem[(16 * ceil32(return_data.size)) + 192] = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                require _441 + (32 * _449) + 32 <= return_data.size
                idx = 0
                s = (15 * ceil32(return_data.size)) + _441 + 224
                t = (16 * ceil32(return_data.size)) + 224
                while idx < _449:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                _729 = mem[(8 * ceil32(return_data.size)) + 160]
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_729))
                call address(_729).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _753 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_753] == bool(mem[_753])
                if 0 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                if 1 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                _799 = mem[(8 * ceil32(return_data.size)) + 160]
                if 0 >= _449:
                    revert with 'NH{q', 50
                _809 = mem[(16 * ceil32(return_data.size)) + 224]
                if ext_call.return_data[0] < mem[(16 * ceil32(return_data.size)) + 224]:
                    revert with 'NH{q', 17
                if 1 >= _449:
                    revert with 'NH{q', 50
                _831 = mem[(16 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = mem[(8 * ceil32(return_data.size)) + 140 len 20]
                mem[mem[64] + 68] = ext_call.return_data[0] - _809
                mem[mem[64] + 100] = _831
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_799), ext_call.return_data[0] - _809, _831, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _849 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_849] == mem[_849]
                require mem[_849 + 32] == mem[_849 + 32]
                _873 = mem[_849 + 64]
                require mem[_849 + 64] == mem[_849 + 64]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _897 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_897] == bool(mem[_897])
                require ext_code.size(address(arg1))
                call address(arg1).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args _873
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _945 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _953 = mem[_945]
                require mem[_945] == mem[_945]
                _961 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _953
                _975 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_961 + 100] = 32
                mem[_961 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1017 = mem[_975]
                mem[_961 + 164 len ceil32(mem[_975])] = mem[_975 + 32 len ceil32(mem[_975])]
                if ceil32(_1017) > _1017:
                    mem[_961 + _1017 + 164] = 0
                call address(arg1) with:
                     gas gas_remaining wei
                    args mem[_961 + 168 len _1017 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_961 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_961 + 196] == bool(mem[_961 + 196])
                        if not mem[_961 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x67a737f9: msg.sender, address(arg1), _873, _953
            else:
                mem[(12 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
                mem[(12 * ceil32(return_data.size)) + 260] = swapFee
                require ext_code.size(0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273)
                delegate 0xb051937b9fb8f3b89f3ad1a8a0bba82fb3b1c273.getSwapAmount(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[32] << 144, swapFee, mem[(12 * ceil32(return_data.size)) + 292 len 20 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require delegate.return_data[0] == delegate.return_data[0]
                mem[(14 * ceil32(return_data.size)) + 196] = routerAddress
                mem[(14 * ceil32(return_data.size)) + 228] = -1
                require ext_code.size(WBNBAddress)
                call WBNBAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1, mem[(14 * ceil32(return_data.size)) + 260 len 24 * ceil32(return_data.size)]
                mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(15 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(15 * ceil32(return_data.size)) + 196] = delegate.return_data[0]
                mem[(15 * ceil32(return_data.size)) + 228] = arg2
                mem[(15 * ceil32(return_data.size)) + 260] = 160
                mem[(15 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 128
                t = (15 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(15 * ceil32(return_data.size)) + 292] = this.address
                mem[(15 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], arg2, Array(len=2, data=mem[(15 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(15 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (16 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _442 = mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28]
                require mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] <= test266151307()
                require (15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 223 < (15 * ceil32(return_data.size)) + return_data.size + 192
                _450 = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                if mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (16 * ceil32(return_data.size)) + floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (16 * ceil32(return_data.size)) + floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]) + 193
                mem[(16 * ceil32(return_data.size)) + 192] = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], delegate.return_data[0 len 28] + 192]
                require _442 + (32 * _450) + 32 <= return_data.size
                idx = 0
                s = (15 * ceil32(return_data.size)) + _442 + 224
                t = (16 * ceil32(return_data.size)) + 224
                while idx < _450:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                _730 = mem[(8 * ceil32(return_data.size)) + 160]
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_730))
                call address(_730).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _754 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_754] == bool(mem[_754])
                if 0 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                if 1 >= mem[(8 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                _801 = mem[(8 * ceil32(return_data.size)) + 160]
                if 0 >= _450:
                    revert with 'NH{q', 50
                _810 = mem[(16 * ceil32(return_data.size)) + 224]
                if ext_call.return_data[0] < mem[(16 * ceil32(return_data.size)) + 224]:
                    revert with 'NH{q', 17
                if 1 >= _450:
                    revert with 'NH{q', 50
                _833 = mem[(16 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = mem[(8 * ceil32(return_data.size)) + 140 len 20]
                mem[mem[64] + 68] = ext_call.return_data[0] - _810
                mem[mem[64] + 100] = _833
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_801), ext_call.return_data[0] - _810, _833, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _850 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_850] == mem[_850]
                require mem[_850 + 32] == mem[_850 + 32]
                _874 = mem[_850 + 64]
                require mem[_850 + 64] == mem[_850 + 64]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _898 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_898] == bool(mem[_898])
                require ext_code.size(address(arg1))
                call address(arg1).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args _874
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _946 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _954 = mem[_946]
                require mem[_946] == mem[_946]
                _962 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _954
                _977 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_962 + 100] = 32
                mem[_962 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1018 = mem[_977]
                mem[_962 + 164 len ceil32(mem[_977])] = mem[_977 + 32 len ceil32(mem[_977])]
                if ceil32(_1018) > _1018:
                    mem[_962 + _1018 + 164] = 0
                call address(arg1) with:
                     gas gas_remaining wei
                    args mem[_962 + 168 len _1018 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_962 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_962 + 196] == bool(mem[_962 + 196])
                        if not mem[_962 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x67a737f9: msg.sender, address(arg1), _874, _954
}



}
