contract main {




// =====================  Runtime code  =====================


#
#  - sub_1efb37c6(?)
#  - sub_2cd45399(?)
#  - sub_486f8caa(?)
#  - sub_586e848f(?)
#  - sub_5dd0ec32(?)
#  - closePosition(address arg1, uint256 arg2)
#
const DOMAIN_SEPARATOR = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(24575559991779696), sha3(49), chainid, address(this.address))

const REVISION = 100


mapping of struct underlyingBalanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address reserveAddress;
address stor359;
address stor360;
address stor365;
mapping of uint256 deposit;
uint256 totalDeposit;
mapping of uint256 loan;
uint256 totalLoan;
address stor371;
uint256 sub_6a3e400c;
mapping of uint256 nonces;
mapping of struct sub_e831fd1d;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function getTotalLoan() {
    return totalLoan
}

function decimals() {
    return decimals
}

function getLoan(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return loan[address(arg1)]
}

function getReserve() {
    return reserveAddress
}

function sub_6a3e400c(?) {
    return sub_6a3e400c
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[address(arg1)]
}

function underlyingBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return underlyingBalanceOf[address(arg1)].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getTotalDeposit() {
    return totalDeposit
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function getDeposit(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return deposit[address(arg1)]
}

function sub_e831fd1d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e831fd1d[address(arg1)].field_0, 
           sub_e831fd1d[address(arg1)].field_256,
           sub_e831fd1d[address(arg1)].field_512,
           sub_e831fd1d[address(arg1)].field_768
}

function _fallback() payable {
    revert
}

function getBorrowLimit() {
    require ext_code.size(reserveAddress)
    staticcall reserveAddress.getTotalLiquidity() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isActive() {
    require ext_code.size(stor365)
    staticcall stor365.0x22f3e2d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(reserveAddress)
    staticcall reserveAddress.getDebt(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_2f04bd56(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor365)
    staticcall stor365.0x2262697e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        return arg1
    if not ext_call.return_data[0]:
        if arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        return arg1
    if arg1 > -5001 / ext_call.return_data[0]:
        revert with 0, ''
    if ((ext_call.return_data[0] * arg1) + 5000 / 10000) + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    return (((ext_call.return_data[0] * arg1) + 5000 / 10000) + arg1)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_975bf010(?) {
    require calldata.size - 4 >= 64
    if arg1 <= arg2:
        return arg1, 0
    require ext_code.size(stor365)
    staticcall stor365.0x37ae0f1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1 - arg2:
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        return arg1, 0
    if not ext_call.return_data[0]:
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        return arg1, 0
    if arg1 - arg2 > -5001 / ext_call.return_data[0]:
        revert with 0, ''
    if (arg1 * ext_call.return_data[0]) + (-1 * arg2 * ext_call.return_data[0]) + 5000 / 10000 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    return arg1 - ((arg1 * ext_call.return_data[0]) + (-1 * arg2 * ext_call.return_data[0]) + 5000 / 10000), 
           (arg1 * ext_call.return_data[0]) + (-1 * arg2 * ext_call.return_data[0]) + 5000 / 10000
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if block.timestamp > arg4:
        revert with 0, 'ERC20Permit: expired deadline'
    nonces[address(arg1)]++
    if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 32, 34, 0x6545434453413a20696e76616c6964207369676e6174757265202773272076616c75, mem[784 len 30]
    if arg5 != 27:
        if arg5 != 28:
            revert with 0, 32, 34, 0x6445434453413a20696e76616c6964207369676e6174757265202776272076616c75, mem[784 len 30]
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(24575559991779696), sha3(49), chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'ERC20Permit: invalid signature'
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[842 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[842 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function sub_d59172f3(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor365)
    staticcall stor365.maxLeverageFactor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= 10000:
        if not arg1:
            return 0
        if arg1 * arg1 / arg1 != arg1:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 197 len 31]
        return (arg1 * arg1 / 10000)
    if 10000 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(stor365)
    staticcall stor365.0xfb844c2c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10000 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if 10000 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1 - 10000:
        if not ext_call.return_data[0] - 10000:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0] - 10000) + 10000 < 0 / ext_call.return_data[0] - 10000:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0] - 10000) + 10000)
    if (-10000 * arg1) + (-10000 * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) + 100 * 10^6 / arg1 - 10000 != ext_call.return_data[0] - 10000:
        revert with 0, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(2 * ceil32(return_data.size)) + 389 len 31]
    if not ext_call.return_data[0] - 10000:
        revert with 0, 'SafeMath: division by zero'
    if ((-10000 * arg1) + (-10000 * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) + 100 * 10^6 / ext_call.return_data[0] - 10000) + 10000 < (-10000 * arg1) + (-10000 * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) + 100 * 10^6 / ext_call.return_data[0] - 10000:
        revert with 0, 'SafeMath: addition overflow'
    return (((-10000 * arg1) + (-10000 * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) + 100 * 10^6 / ext_call.return_data[0] - 10000) + 10000)
}

function sub_77f64878(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require calldata.size - 36 >= 192
    require calldata.size - 36 >= 192
    require calldata.size - 132 >= 96
    require arg5 == uint8(arg5)
    if block.timestamp > arg4:
        revert with 0, 
                    32,
                    48,
                    0x655465726d696e6174696f6e436f6e646974696f6e7356616c696461746f723a206578706972656420646561646c696e,
                    mem[436 len 16]
    if 10000 <= arg2:
        revert with 0, 
                    32,
                    55,
                    0x645465726d696e6174696f6e436f6e646974696f6e7356616c696461746f723a20696e76616c69642073746f70206c6f73732076616c75,
                    mem[443 len 9]
    if arg3:
        if arg3 <= 10000:
            revert with 0, 
                        32,
                        57,
                        0x735465726d696e6174696f6e436f6e646974696f6e7356616c696461746f723a20696e76616c69642074616b652070726f6669742076616c75,
                        mem[445 len 7]
    if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 32, 34, 0x6545434453413a20696e76616c6964207369676e6174757265202773272076616c75, mem[944 len 30]
    if uint8(arg5) != 27:
        if uint8(arg5) != 28:
            revert with 0, 32, 34, 0x6445434453413a20696e76616c6964207369676e6174757265202776272076616c75, mem[944 len 30]
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(24575559991779696), sha3(49), chainid, this.address), sha3(0x7278469bf25869f395841cb9d850edc3765c8d43ae23bb3e8cc377baec07a6e4, arg2, arg3, arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != address(arg1):
        revert with 0, 
                    32,
                    49,
                    0x655465726d696e6174696f6e436f6e646974696f6e7356616c696461746f723a20696e76616c6964207369676e61747572,
                    Mask(88, 0, arg7),
                    mem[1002 len 4]
    if arg2:
        if eth.balance(this.address) + sub_e831fd1d[address(arg1)].field_768 < sub_e831fd1d[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        sub_e831fd1d[address(arg1)].field_768 += eth.balance(this.address)
    else:
        if arg3:
            if eth.balance(this.address) + sub_e831fd1d[address(arg1)].field_768 < sub_e831fd1d[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            sub_e831fd1d[address(arg1)].field_768 += eth.balance(this.address)
        else:
            if sub_e831fd1d[address(arg1)].field_768:
                sub_e831fd1d[address(arg1)].field_768 = 0
                call address(arg1) with:
                   value sub_e831fd1d[address(arg1)].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    sub_e831fd1d[address(arg1)].field_256 = arg2
    sub_e831fd1d[address(arg1)].field_512 = arg3
}

function getAmountOut(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor371:
        mem[96] = 2
        mem[160] = stor359
        mem[128] = stor360
        require ext_code.size(stor365)
        staticcall stor365.swapRouter() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _51 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _53 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require return_data.size >= _51 + (32 * _53) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _53] = mem[ceil32(return_data.size) + _51 + 224 len 32 * _53]
        require 1 < _53
        mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    else:
        mem[96] = 3
        mem[192] = stor359
        mem[160] = stor371
        mem[128] = stor360
        require ext_code.size(stor365)
        staticcall stor365.swapRouter() with:
                gas gas_remaining wei
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = arg1
        mem[ceil32(return_data.size) + 260] = 64
        mem[ceil32(return_data.size) + 292] = 3
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _50 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
        _52 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
        mem[(2 * ceil32(return_data.size)) + 224] = _52
        require return_data.size >= _50 + (32 * _52) + 32
        mem[(2 * ceil32(return_data.size)) + 256 len 32 * _52] = mem[ceil32(return_data.size) + _50 + 256 len 32 * _52]
        require 2 < _52
        mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 320]
    return memory
      from mem[64]
       len 32
}

function sub_b516f7b1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 308
    mem[100] = this.address
    mem[132] = address(arg1)
    require ext_code.size(reserveAddress)
    staticcall reserveAddress.getDebt(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor371:
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 160] = stor360
        mem[ceil32(return_data.size) + 128] = stor359
        require ext_code.size(stor365)
        staticcall stor365.swapRouter() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = underlyingBalanceOf[address(arg1)].field_0
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args underlyingBalanceOf[address(arg1)].field_0, 64, mem[(2 * ceil32(return_data.size)) + 260 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _108 = mem[(2 * ceil32(return_data.size)) + 192 len 4], underlyingBalanceOf[address(arg1)].field_32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], underlyingBalanceOf[address(arg1)].field_32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], underlyingBalanceOf[address(arg1)].field_32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _110 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], underlyingBalanceOf[address(arg1)].field_32 + 192]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], underlyingBalanceOf[address(arg1)].field_32 + 192] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], underlyingBalanceOf[address(arg1)].field_32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], underlyingBalanceOf[address(arg1)].field_32 + 192]) + 224 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], underlyingBalanceOf[address(arg1)].field_32 + 192]) + 224
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], underlyingBalanceOf[address(arg1)].field_32 + 192]
        require return_data.size >= _108 + (32 * _110) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _110] = mem[(2 * ceil32(return_data.size)) + _108 + 224 len 32 * _110]
        require mem[ceil32(return_data.size) + 96] - 1 < _110
        _184 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + (4 * ceil32(return_data.size)) + 224]
        require ext_code.size(stor365)
        staticcall stor365.0x2262697e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return _184, ext_call.return_data[0]
        if not mem[_190]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return _184, ext_call.return_data[0]
        if ext_call.return_data[0] > -5001 / mem[_190]:
            revert with 0, ''
        if ((mem[_190] * ext_call.return_data[0]) + 5000 / 10000) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return _184, ((mem[_190] * ext_call.return_data[0]) + 5000 / 10000) + ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 192] = stor360
    mem[ceil32(return_data.size) + 160] = stor371
    mem[ceil32(return_data.size) + 128] = stor359
    require ext_code.size(stor365)
    staticcall stor365.swapRouter() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = underlyingBalanceOf[address(arg1)].field_0
    mem[(2 * ceil32(return_data.size)) + 260] = 64
    mem[(2 * ceil32(return_data.size)) + 292] = 3
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 324
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args underlyingBalanceOf[address(arg1)].field_0, 64, mem[(2 * ceil32(return_data.size)) + 292 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _107 = mem[(2 * ceil32(return_data.size)) + 224 len 4], underlyingBalanceOf[address(arg1)].field_32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], underlyingBalanceOf[address(arg1)].field_32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], underlyingBalanceOf[address(arg1)].field_32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
    _109 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], underlyingBalanceOf[address(arg1)].field_32 + 224]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], underlyingBalanceOf[address(arg1)].field_32 + 224] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], underlyingBalanceOf[address(arg1)].field_32 + 224]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], underlyingBalanceOf[address(arg1)].field_32 + 224]) + 256 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], underlyingBalanceOf[address(arg1)].field_32 + 224]) + 256
    mem[(4 * ceil32(return_data.size)) + 224] = _109
    require return_data.size >= _107 + (32 * _109) + 32
    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _109] = mem[(2 * ceil32(return_data.size)) + _107 + 256 len 32 * _109]
    require mem[ceil32(return_data.size) + 96] - 1 < _109
    _183 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + (4 * ceil32(return_data.size)) + 256]
    require ext_code.size(stor365)
    staticcall stor365.0x2262697e with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return _183, ext_call.return_data[0]
    if not mem[_189]:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return _183, ext_call.return_data[0]
    if ext_call.return_data[0] > -5001 / mem[_189]:
        revert with 0, ''
    if ((mem[_189] * ext_call.return_data[0]) + 5000 / 10000) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return _183, ((mem[_189] * ext_call.return_data[0]) + 5000 / 10000) + ext_call.return_data[0]
}

function sub_b07f80a1(?) {
    require calldata.size - 4 >= 64
    if not arg1:
        if not stor371:
            mem[96] = 2
            mem[160] = stor359
            mem[128] = stor360
            require ext_code.size(stor365)
            staticcall stor365.swapRouter() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, 2, mem[ceil32(return_data.size) + 292 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _159 = mem[ceil32(return_data.size) + 192 len 4], 0
            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
            _165 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
            require return_data.size >= _159 + (32 * _165) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _165] = mem[ceil32(return_data.size) + _159 + 224 len 32 * _165]
            require 0 < _165
            mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 224]
        else:
            mem[96] = 3
            mem[192] = stor359
            mem[160] = stor371
            mem[128] = stor360
            require ext_code.size(stor365)
            staticcall stor365.swapRouter() with:
                    gas gas_remaining wei
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = 0
            mem[ceil32(return_data.size) + 260] = 64
            mem[ceil32(return_data.size) + 292] = 3
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, 3, mem[ceil32(return_data.size) + 324 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _158 = mem[ceil32(return_data.size) + 224 len 4], 0
            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
            _164 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 256 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 256
            mem[(2 * ceil32(return_data.size)) + 224] = _164
            require return_data.size >= _158 + (32 * _164) + 32
            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _164] = mem[ceil32(return_data.size) + _158 + 256 len 32 * _164]
            require 0 < _164
            mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    else:
        if not arg2:
            if not stor371:
                mem[96] = 2
                mem[160] = stor359
                mem[128] = stor360
                require ext_code.size(stor365)
                staticcall stor365.swapRouter() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = 0
                mem[ceil32(return_data.size) + 228] = 64
                mem[ceil32(return_data.size) + 260] = 2
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, 2, mem[ceil32(return_data.size) + 292 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _163 = mem[ceil32(return_data.size) + 192 len 4], 0
                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                _169 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224 <= test266151307()
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224
                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                require return_data.size >= _163 + (32 * _169) + 32
                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _169] = mem[ceil32(return_data.size) + _163 + 224 len 32 * _169]
                require 0 < _169
                mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 224]
            else:
                mem[96] = 3
                mem[192] = stor359
                mem[160] = stor371
                mem[128] = stor360
                require ext_code.size(stor365)
                staticcall stor365.swapRouter() with:
                        gas gas_remaining wei
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 228] = 0
                mem[ceil32(return_data.size) + 260] = 64
                mem[ceil32(return_data.size) + 292] = 3
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, 3, mem[ceil32(return_data.size) + 324 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _162 = mem[ceil32(return_data.size) + 224 len 4], 0
                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                _168 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 256 <= test266151307()
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 256
                mem[(2 * ceil32(return_data.size)) + 224] = _168
                require return_data.size >= _162 + (32 * _168) + 32
                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _168] = mem[ceil32(return_data.size) + _162 + 256 len 32 * _168]
                require 0 < _168
                mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
        else:
            mem[96] = 3
            mem[128] = 0x4d4d4f0000000000000000000000000000000000000000000000000000000000
            if arg1 > -5001 / arg2:
                revert with 0, ''
            if not stor371:
                mem[160] = 2
                mem[224] = stor359
                mem[192] = stor360
                require ext_code.size(stor365)
                staticcall stor365.swapRouter() with:
                        gas gas_remaining wei
                mem[256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 260] = (arg2 * arg1) + 5000 / 10000
                mem[ceil32(return_data.size) + 292] = 64
                mem[ceil32(return_data.size) + 324] = 2
                idx = 0
                s = 192
                t = ceil32(return_data.size) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args (arg2 * arg1) + 5000 / 10000, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _161 = mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32
                require mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 287 < ceil32(return_data.size) + return_data.size + 256
                _167 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 256]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 256] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 256]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 256]) + 288 <= test266151307()
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 256]) + 288
                mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 256]
                require return_data.size >= _161 + (32 * _167) + 32
                mem[(2 * ceil32(return_data.size)) + 288 len 32 * _167] = mem[ceil32(return_data.size) + _161 + 288 len 32 * _167]
                require 0 < _167
                mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 288]
            else:
                mem[160] = 3
                mem[256] = stor359
                mem[224] = stor371
                mem[192] = stor360
                require ext_code.size(stor365)
                staticcall stor365.swapRouter() with:
                        gas gas_remaining wei
                mem[288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 292] = (arg2 * arg1) + 5000 / 10000
                mem[ceil32(return_data.size) + 324] = 64
                mem[ceil32(return_data.size) + 356] = 3
                idx = 0
                s = 192
                t = ceil32(return_data.size) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args (arg2 * arg1) + 5000 / 10000, Array(len=3, data=mem[ceil32(return_data.size) + 388 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _160 = mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32
                require mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 319 < ceil32(return_data.size) + return_data.size + 288
                _166 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 288]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 288] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 288]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 288]) + 320 <= test266151307()
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 288]) + 320
                mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, (arg2 * arg1) + 5000 / 10000) >> 32 + 288]
                require return_data.size >= _160 + (32 * _166) + 32
                mem[(2 * ceil32(return_data.size)) + 320 len 32 * _166] = mem[ceil32(return_data.size) + _160 + 320 len 32 * _166]
                require 0 < _166
                mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 320]
    return memory
      from mem[64]
       len 32
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not msg.sender:
        if arg2 > underlyingBalanceOf[address(msg.sender)].field_0:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
    else:
        if not arg1:
            if arg2 > underlyingBalanceOf[address(msg.sender)].field_0:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
        else:
            require ext_code.size(reserveAddress)
            staticcall reserveAddress.getDebt(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not deposit[address(msg.sender)]:
                    if not loan[address(msg.sender)]:
                        if arg2 > underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 166 len 26],
                                        mem[ceil32(return_data.size) + 218 len 6]
                    else:
                        if not loan[address(msg.sender)]:
                            if not underlyingBalanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / underlyingBalanceOf[address(msg.sender)].field_0 > loan[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(msg.sender)] -= 0 / underlyingBalanceOf[address(msg.sender)].field_0
                            if (0 / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1] < loan[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg1)] = (0 / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1]
                        else:
                            if arg2 * loan[address(msg.sender)] / loan[address(msg.sender)] != arg2:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 197 len 31]
                            if not underlyingBalanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0 > loan[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(msg.sender)] -= arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0
                            if (arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1] < loan[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg1)] = (arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1]
                        if arg2 > underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 294 len 26],
                                        mem[ceil32(return_data.size) + 346 len 6]
                else:
                    if not deposit[address(msg.sender)]:
                        if not underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / underlyingBalanceOf[address(msg.sender)].field_0 > deposit[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        deposit[address(msg.sender)] -= 0 / underlyingBalanceOf[address(msg.sender)].field_0
                        if (0 / underlyingBalanceOf[address(msg.sender)].field_0) + deposit[arg1] < deposit[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        deposit[address(arg1)] = (0 / underlyingBalanceOf[address(msg.sender)].field_0) + deposit[arg1]
                    else:
                        if arg2 * deposit[address(msg.sender)] / deposit[address(msg.sender)] != arg2:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 197 len 31]
                        if not underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 * deposit[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0 > deposit[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        deposit[address(msg.sender)] -= arg2 * deposit[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0
                        if (arg2 * deposit[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + deposit[arg1] < deposit[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        deposit[address(arg1)] = (arg2 * deposit[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + deposit[arg1]
                    if not loan[address(msg.sender)]:
                        if arg2 > underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 294 len 26],
                                        mem[ceil32(return_data.size) + 346 len 6]
                    else:
                        if not loan[address(msg.sender)]:
                            if not underlyingBalanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / underlyingBalanceOf[address(msg.sender)].field_0 > loan[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(msg.sender)] -= 0 / underlyingBalanceOf[address(msg.sender)].field_0
                            if (0 / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1] < loan[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg1)] = (0 / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1]
                        else:
                            if arg2 * loan[address(msg.sender)] / loan[address(msg.sender)] != arg2:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 325 len 31]
                            if not underlyingBalanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0 > loan[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(msg.sender)] -= arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0
                            if (arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1] < loan[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg1)] = (arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1]
                        if arg2 > underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 422 len 26],
                                        mem[ceil32(return_data.size) + 474 len 6]
            else:
                if not ext_call.return_data[0]:
                    require underlyingBalanceOf[address(msg.sender)].field_0
                    mem[ceil32(return_data.size) + 164] = 0 / underlyingBalanceOf[address(msg.sender)].field_0
                    require ext_code.size(reserveAddress)
                    call reserveAddress.0xfe37d7be with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / underlyingBalanceOf[address(msg.sender)].field_0
                else:
                    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 197 len 31]
                    require underlyingBalanceOf[address(msg.sender)].field_0
                    mem[ceil32(return_data.size) + 164] = arg2 * ext_call.return_data[0] / underlyingBalanceOf[address(msg.sender)].field_0
                    require ext_code.size(reserveAddress)
                    call reserveAddress.0xfe37d7be with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg2 * ext_call.return_data[0] / underlyingBalanceOf[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                if not deposit[address(msg.sender)]:
                    if not loan[address(msg.sender)]:
                        if arg2 > underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[(2 * ceil32(return_data.size)) + 166 len 26],
                                        mem[(2 * ceil32(return_data.size)) + 218 len 6]
                    else:
                        if not loan[address(msg.sender)]:
                            if not underlyingBalanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / underlyingBalanceOf[address(msg.sender)].field_0 > loan[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(msg.sender)] -= 0 / underlyingBalanceOf[address(msg.sender)].field_0
                            if (0 / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1] < loan[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg1)] = (0 / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1]
                        else:
                            if arg2 * loan[address(msg.sender)] / loan[address(msg.sender)] != arg2:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 197 len 31]
                            if not underlyingBalanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0 > loan[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(msg.sender)] -= arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0
                            if (arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1] < loan[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg1)] = (arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1]
                        if arg2 > underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[(2 * ceil32(return_data.size)) + 294 len 26],
                                        mem[(2 * ceil32(return_data.size)) + 346 len 6]
                else:
                    if not deposit[address(msg.sender)]:
                        if not underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / underlyingBalanceOf[address(msg.sender)].field_0 > deposit[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        deposit[address(msg.sender)] -= 0 / underlyingBalanceOf[address(msg.sender)].field_0
                        if (0 / underlyingBalanceOf[address(msg.sender)].field_0) + deposit[arg1] < deposit[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        deposit[address(arg1)] = (0 / underlyingBalanceOf[address(msg.sender)].field_0) + deposit[arg1]
                    else:
                        if arg2 * deposit[address(msg.sender)] / deposit[address(msg.sender)] != arg2:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 197 len 31]
                        if not underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 * deposit[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0 > deposit[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        deposit[address(msg.sender)] -= arg2 * deposit[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0
                        if (arg2 * deposit[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + deposit[arg1] < deposit[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        deposit[address(arg1)] = (arg2 * deposit[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + deposit[arg1]
                    if not loan[address(msg.sender)]:
                        if arg2 > underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[(2 * ceil32(return_data.size)) + 294 len 26],
                                        mem[(2 * ceil32(return_data.size)) + 346 len 6]
                    else:
                        if not loan[address(msg.sender)]:
                            if not underlyingBalanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / underlyingBalanceOf[address(msg.sender)].field_0 > loan[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(msg.sender)] -= 0 / underlyingBalanceOf[address(msg.sender)].field_0
                            if (0 / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1] < loan[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg1)] = (0 / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1]
                        else:
                            if arg2 * loan[address(msg.sender)] / loan[address(msg.sender)] != arg2:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 325 len 31]
                            if not underlyingBalanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0 > loan[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(msg.sender)] -= arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0
                            if (arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1] < loan[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg1)] = (arg2 * loan[address(msg.sender)] / underlyingBalanceOf[address(msg.sender)].field_0) + loan[arg1]
                        if arg2 > underlyingBalanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[(2 * ceil32(return_data.size)) + 422 len 26],
                                        mem[(2 * ceil32(return_data.size)) + 474 len 6]
    ('le', ('param', 'arg2'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'underlyingBalanceOf', 308)))))
    underlyingBalanceOf[address(msg.sender)].field_0 -= arg2
    if arg2 + underlyingBalanceOf[arg1].field_0 < underlyingBalanceOf[arg1].field_0:
        revert with 0, 'SafeMath: addition overflow'
    underlyingBalanceOf[address(arg1)].field_0 = arg2 + underlyingBalanceOf[arg1].field_0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg1:
        if arg3 > underlyingBalanceOf[address(arg1)].field_0:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        underlyingBalanceOf[address(arg1)].field_0 -= arg3
        if arg3 + underlyingBalanceOf[arg2].field_0 < underlyingBalanceOf[arg2].field_0:
            revert with 0, 'SafeMath: addition overflow'
        underlyingBalanceOf[address(arg2)].field_0 = arg3 + underlyingBalanceOf[arg2].field_0
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if not arg2:
            if arg3 > underlyingBalanceOf[address(arg1)].field_0:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            underlyingBalanceOf[address(arg1)].field_0 -= arg3
            if arg3 + underlyingBalanceOf[arg2].field_0 < underlyingBalanceOf[arg2].field_0:
                revert with 0, 'SafeMath: addition overflow'
            underlyingBalanceOf[address(arg2)].field_0 = arg3 + underlyingBalanceOf[arg2].field_0
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            require ext_code.size(reserveAddress)
            staticcall reserveAddress.getDebt(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not deposit[address(arg1)]:
                    if not loan[address(arg1)]:
                        if arg3 > underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 166 len 26],
                                        mem[ceil32(return_data.size) + 218 len 6]
                        underlyingBalanceOf[address(arg1)].field_0 -= arg3
                        if arg3 + underlyingBalanceOf[arg2].field_0 < underlyingBalanceOf[arg2].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        underlyingBalanceOf[address(arg2)].field_0 = arg3 + underlyingBalanceOf[arg2].field_0
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 264 len 24],
                                        mem[ceil32(return_data.size) + 312 len 8]
                        if not arg1:
                            revert with 0, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 392 len 28]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        34,
                                        0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 390 len 30]
                    else:
                        if not loan[address(arg1)]:
                            if not underlyingBalanceOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / underlyingBalanceOf[address(arg1)].field_0 > loan[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(arg1)] -= 0 / underlyingBalanceOf[address(arg1)].field_0
                            if (0 / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2] < loan[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg2)] = (0 / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2]
                        else:
                            if arg3 * loan[address(arg1)] / loan[address(arg1)] != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 197 len 31]
                            if not underlyingBalanceOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0 > loan[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(arg1)] -= arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0
                            if (arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2] < loan[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg2)] = (arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2]
                        if arg3 > underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 294 len 26],
                                        mem[ceil32(return_data.size) + 346 len 6]
                        underlyingBalanceOf[address(arg1)].field_0 -= arg3
                        if arg3 + underlyingBalanceOf[arg2].field_0 < underlyingBalanceOf[arg2].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        underlyingBalanceOf[address(arg2)].field_0 = arg3 + underlyingBalanceOf[arg2].field_0
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 392 len 24],
                                        mem[ceil32(return_data.size) + 440 len 8]
                        if not arg1:
                            revert with 0, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 520 len 28]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        34,
                                        0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 518 len 30]
                else:
                    if not deposit[address(arg1)]:
                        if not underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / underlyingBalanceOf[address(arg1)].field_0 > deposit[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        deposit[address(arg1)] -= 0 / underlyingBalanceOf[address(arg1)].field_0
                        if (0 / underlyingBalanceOf[address(arg1)].field_0) + deposit[arg2] < deposit[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        deposit[address(arg2)] = (0 / underlyingBalanceOf[address(arg1)].field_0) + deposit[arg2]
                    else:
                        if arg3 * deposit[address(arg1)] / deposit[address(arg1)] != arg3:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 197 len 31]
                        if not underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg3 * deposit[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0 > deposit[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        deposit[address(arg1)] -= arg3 * deposit[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0
                        if (arg3 * deposit[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + deposit[arg2] < deposit[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        deposit[address(arg2)] = (arg3 * deposit[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + deposit[arg2]
                    if not loan[address(arg1)]:
                        if arg3 > underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 294 len 26],
                                        mem[ceil32(return_data.size) + 346 len 6]
                        underlyingBalanceOf[address(arg1)].field_0 -= arg3
                        if arg3 + underlyingBalanceOf[arg2].field_0 < underlyingBalanceOf[arg2].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        underlyingBalanceOf[address(arg2)].field_0 = arg3 + underlyingBalanceOf[arg2].field_0
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 392 len 24],
                                        mem[ceil32(return_data.size) + 440 len 8]
                        if not arg1:
                            revert with 0, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 520 len 28]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        34,
                                        0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 518 len 30]
                    else:
                        if not loan[address(arg1)]:
                            if not underlyingBalanceOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / underlyingBalanceOf[address(arg1)].field_0 > loan[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(arg1)] -= 0 / underlyingBalanceOf[address(arg1)].field_0
                            if (0 / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2] < loan[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg2)] = (0 / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2]
                        else:
                            if arg3 * loan[address(arg1)] / loan[address(arg1)] != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 325 len 31]
                            if not underlyingBalanceOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0 > loan[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(arg1)] -= arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0
                            if (arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2] < loan[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg2)] = (arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2]
                        if arg3 > underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 422 len 26],
                                        mem[ceil32(return_data.size) + 474 len 6]
                        underlyingBalanceOf[address(arg1)].field_0 -= arg3
                        if arg3 + underlyingBalanceOf[arg2].field_0 < underlyingBalanceOf[arg2].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        underlyingBalanceOf[address(arg2)].field_0 = arg3 + underlyingBalanceOf[arg2].field_0
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 520 len 24],
                                        mem[ceil32(return_data.size) + 568 len 8]
                        if not arg1:
                            revert with 0, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 648 len 28]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        34,
                                        0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                        mem[ceil32(return_data.size) + 646 len 30]
            else:
                if not ext_call.return_data[0]:
                    require underlyingBalanceOf[address(arg1)].field_0
                    mem[ceil32(return_data.size) + 164] = 0 / underlyingBalanceOf[address(arg1)].field_0
                    require ext_code.size(reserveAddress)
                    call reserveAddress.0xfe37d7be with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), 0 / underlyingBalanceOf[address(arg1)].field_0
                else:
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 197 len 31]
                    require underlyingBalanceOf[address(arg1)].field_0
                    mem[ceil32(return_data.size) + 164] = arg3 * ext_call.return_data[0] / underlyingBalanceOf[address(arg1)].field_0
                    require ext_code.size(reserveAddress)
                    call reserveAddress.0xfe37d7be with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3 * ext_call.return_data[0] / underlyingBalanceOf[address(arg1)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                if not deposit[address(arg1)]:
                    if not loan[address(arg1)]:
                        if arg3 > underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[(2 * ceil32(return_data.size)) + 166 len 26],
                                        mem[(2 * ceil32(return_data.size)) + 218 len 6]
                        underlyingBalanceOf[address(arg1)].field_0 -= arg3
                        if arg3 + underlyingBalanceOf[arg2].field_0 < underlyingBalanceOf[arg2].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        underlyingBalanceOf[address(arg2)].field_0 = arg3 + underlyingBalanceOf[arg2].field_0
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[(2 * ceil32(return_data.size)) + 264 len 24],
                                        mem[(2 * ceil32(return_data.size)) + 312 len 8]
                        if not arg1:
                            revert with 0, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[(2 * ceil32(return_data.size)) + 392 len 28]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        34,
                                        0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                        mem[(2 * ceil32(return_data.size)) + 390 len 30]
                    else:
                        if not loan[address(arg1)]:
                            if not underlyingBalanceOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / underlyingBalanceOf[address(arg1)].field_0 > loan[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(arg1)] -= 0 / underlyingBalanceOf[address(arg1)].field_0
                            if (0 / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2] < loan[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg2)] = (0 / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2]
                        else:
                            if arg3 * loan[address(arg1)] / loan[address(arg1)] != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 197 len 31]
                            if not underlyingBalanceOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0 > loan[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(arg1)] -= arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0
                            if (arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2] < loan[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg2)] = (arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2]
                        if arg3 > underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[(2 * ceil32(return_data.size)) + 294 len 26],
                                        mem[(2 * ceil32(return_data.size)) + 346 len 6]
                        underlyingBalanceOf[address(arg1)].field_0 -= arg3
                        if arg3 + underlyingBalanceOf[arg2].field_0 < underlyingBalanceOf[arg2].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        underlyingBalanceOf[address(arg2)].field_0 = arg3 + underlyingBalanceOf[arg2].field_0
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[(2 * ceil32(return_data.size)) + 392 len 24],
                                        mem[(2 * ceil32(return_data.size)) + 440 len 8]
                        if not arg1:
                            revert with 0, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[(2 * ceil32(return_data.size)) + 520 len 28]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        34,
                                        0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                        mem[(2 * ceil32(return_data.size)) + 518 len 30]
                else:
                    if not deposit[address(arg1)]:
                        if not underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / underlyingBalanceOf[address(arg1)].field_0 > deposit[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        deposit[address(arg1)] -= 0 / underlyingBalanceOf[address(arg1)].field_0
                        if (0 / underlyingBalanceOf[address(arg1)].field_0) + deposit[arg2] < deposit[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        deposit[address(arg2)] = (0 / underlyingBalanceOf[address(arg1)].field_0) + deposit[arg2]
                    else:
                        if arg3 * deposit[address(arg1)] / deposit[address(arg1)] != arg3:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 197 len 31]
                        if not underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg3 * deposit[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0 > deposit[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        deposit[address(arg1)] -= arg3 * deposit[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0
                        if (arg3 * deposit[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + deposit[arg2] < deposit[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        deposit[address(arg2)] = (arg3 * deposit[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + deposit[arg2]
                    if not loan[address(arg1)]:
                        if arg3 > underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[(2 * ceil32(return_data.size)) + 294 len 26],
                                        mem[(2 * ceil32(return_data.size)) + 346 len 6]
                        underlyingBalanceOf[address(arg1)].field_0 -= arg3
                        if arg3 + underlyingBalanceOf[arg2].field_0 < underlyingBalanceOf[arg2].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        underlyingBalanceOf[address(arg2)].field_0 = arg3 + underlyingBalanceOf[arg2].field_0
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[(2 * ceil32(return_data.size)) + 392 len 24],
                                        mem[(2 * ceil32(return_data.size)) + 440 len 8]
                        if not arg1:
                            revert with 0, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[(2 * ceil32(return_data.size)) + 520 len 28]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        34,
                                        0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                        mem[(2 * ceil32(return_data.size)) + 518 len 30]
                    else:
                        if not loan[address(arg1)]:
                            if not underlyingBalanceOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / underlyingBalanceOf[address(arg1)].field_0 > loan[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(arg1)] -= 0 / underlyingBalanceOf[address(arg1)].field_0
                            if (0 / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2] < loan[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg2)] = (0 / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2]
                        else:
                            if arg3 * loan[address(arg1)] / loan[address(arg1)] != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 325 len 31]
                            if not underlyingBalanceOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0 > loan[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            loan[address(arg1)] -= arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0
                            if (arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2] < loan[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            loan[address(arg2)] = (arg3 * loan[address(arg1)] / underlyingBalanceOf[address(arg1)].field_0) + loan[arg2]
                        if arg3 > underlyingBalanceOf[address(arg1)].field_0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[(2 * ceil32(return_data.size)) + 422 len 26],
                                        mem[(2 * ceil32(return_data.size)) + 474 len 6]
                        underlyingBalanceOf[address(arg1)].field_0 -= arg3
                        if arg3 + underlyingBalanceOf[arg2].field_0 < underlyingBalanceOf[arg2].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        underlyingBalanceOf[address(arg2)].field_0 = arg3 + underlyingBalanceOf[arg2].field_0
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[(2 * ceil32(return_data.size)) + 520 len 24],
                                        mem[(2 * ceil32(return_data.size)) + 568 len 8]
                        if not arg1:
                            revert with 0, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[(2 * ceil32(return_data.size)) + 648 len 28]
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        34,
                                        0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                        mem[(2 * ceil32(return_data.size)) + 646 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
