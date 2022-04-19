contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const wavax = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const pool = 0x7f90122bf0700f9e7e1f688fe926940e8839f353

const getName = 'StrategyCurveAave', 0

const want = 0x1337bedc9d22ecbe766df105c9623922a27963ec

const usdc = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const joeRouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const crv = 0x249848beca43ac405b8102ec90dd5f22ca513c06

const performanceMax = 10000

const balanceOfWant = ext_call.return_data[0]

const withdrawalMax = 10000


address gaugeAddress;
uint256 performanceFee;
uint256 withdrawalFee;
address governanceAddress;
uint32 stor4;
address controllerAddress;
uint256 stor4;
address strategistAddress;
uint256 earned;

function strategist() payable {
    return strategistAddress
}

function governance() payable {
    return governanceAddress
}

function performanceFee() payable {
    return performanceFee
}

function withdrawalFee() payable {
    return withdrawalFee
}

function gauge() payable {
    return gaugeAddress
}

function earned() payable {
    return earned
}

function controller() payable {
    return address(controllerAddress)
}

function _fallback() payable {
    revert
}

function setGauge(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    gaugeAddress = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    withdrawalFee = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function setPerformanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    performanceFee = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(controllerAddress) = arg1
}

function balanceOfPool() payable {
    require ext_code.size(gaugeAddress)
    staticcall gaugeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function balanceOf() payable {
    require ext_code.size(gaugeAddress)
    staticcall gaugeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function deposit() payable {
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
        call 0x1337bedc9d22ecbe766df105c9623922a27963ec.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args gaugeAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(gaugeAddress)
        call gaugeAddress.0xb6b55f25 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if 0x1337bedc9d22ecbe766df105c9623922a27963ec == arg1:
        revert with 0, 'want'
    if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg1:
        revert with 0, 'usdc'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(controllerAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function withdrawAll() payable {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    mem[100] = this.address
    require ext_code.size(gaugeAddress)
    staticcall gaugeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(gaugeAddress)
    staticcall gaugeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(gaugeAddress)
    call gaugeAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(gaugeAddress)
    staticcall gaugeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if 2 * ext_call.return_data[0] != 2 * ext_call.return_data[0]:
        revert with 0, '!slippage'
    mem[(7 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 100] = 0x1337bedc9d22ecbe766df105c9623922a27963ec
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).vaults(address rg1) with:
            gas gas_remaining wei
           args 0x1337bedc9d22ecbe766df105c9623922a27963ec
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!vault'
    mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
    mem[(10 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(10 * ceil32(return_data.size)) + 96] = 68
    mem[(10 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(10 * ceil32(return_data.size)) + 196] = 32
    mem[(10 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(10 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0
    mem[(10 * ceil32(return_data.size)) + 328] = 0
    call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
       funct Mask(32, 224, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(10 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(10 * ceil32(return_data.size)) + 292] == bool(mem[(10 * ceil32(return_data.size)) + 292])
            if not mem[(10 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    mem[100] = this.address
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 100] = arg1 - ext_call.return_data[0]
        require ext_code.size(gaugeAddress)
        call gaugeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not arg1:
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).rewards() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 164] = 0
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], 0, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 264] = 0x1337bedc9d22ecbe766df105c9623922a27963ec
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0x1337bedc9d22ecbe766df105c9623922a27963ec
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 328] = arg1
            mem[(4 * ceil32(return_data.size)) + 260] = 68
            mem[(4 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 360] = 32
            mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, ext_call.return_data[12 len 20], arg1, 0
            mem[(4 * ceil32(return_data.size)) + 492] = 0
            call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
               funct Mask(32, 224, 0, ext_call.return_data[12 len 20], arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, ext_call.return_data[12 len 20], arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                    if not mem[(4 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 0x1337bedc9d22ecbe766df105c9623922a27963ec
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address rg1) with:
                gas gas_remaining wei
               args 0x1337bedc9d22ecbe766df105c9623922a27963ec
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!vault'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, ext_call.return_data[12 len 20], arg1, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], arg1, 0) << 288)
    else:
        require arg1
        if arg1 * withdrawalFee / arg1 != withdrawalFee:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).rewards() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 164] = arg1 * withdrawalFee / 10000
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], arg1 * withdrawalFee / 10000, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], arg1 * withdrawalFee / 10000, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], arg1 * withdrawalFee / 10000, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 264] = 0x1337bedc9d22ecbe766df105c9623922a27963ec
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0x1337bedc9d22ecbe766df105c9623922a27963ec
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if arg1 * withdrawalFee / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 328] = arg1 - (arg1 * withdrawalFee / 10000)
            mem[(4 * ceil32(return_data.size)) + 260] = 68
            mem[(4 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 360] = 32
            mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, ext_call.return_data[12 len 20], arg1 - (arg1 * withdrawalFee / 10000), 0
            mem[(4 * ceil32(return_data.size)) + 492] = 0
            call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
               funct Mask(32, 224, 0, ext_call.return_data[12 len 20], arg1 - (arg1 * withdrawalFee / 10000), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, ext_call.return_data[12 len 20], arg1 - (arg1 * withdrawalFee / 10000), 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                    if not mem[(4 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 0x1337bedc9d22ecbe766df105c9623922a27963ec
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address rg1) with:
                gas gas_remaining wei
               args 0x1337bedc9d22ecbe766df105c9623922a27963ec
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!vault'
        if arg1 * withdrawalFee / 10000 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg1 - (arg1 * withdrawalFee / 10000)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, ext_call.return_data[12 len 20], arg1 - (arg1 * withdrawalFee / 10000), 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call 0x1337bedc9d22ecbe766df105c9623922a27963ec with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], arg1 - (arg1 * withdrawalFee / 10000), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], arg1 - (arg1 * withdrawalFee / 10000), 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 430] = 32
        mem[(8 * ceil32(return_data.size)) + 462] = 32
        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 426
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size <= 0:
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
    mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 430] = 32
    mem[(8 * ceil32(return_data.size)) + 462] = 42
    mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
    revert with memory
      from (8 * ceil32(return_data.size)) + 426
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
