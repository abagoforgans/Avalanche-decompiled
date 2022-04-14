contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - withdrawAll()
#  - deposit()
#
const name = 'StrategyTraderJoe', 0

const joeRouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const joe = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd

const masterchef = 0xd6a4f121ca35509af06a0be99093d08462f53052

const FEE_DENOMINATOR = 10000


uint256 performanceFee;
uint256 withdrawalFee;
uint256 buybackFee;
uint32 stor3;
address governanceAddress;
uint256 stor3;
address controllerAddress;
address strategistAddress;
address wantAddress;
uint256 earned;
uint256 stor8;
array of address a_b_path;
array of address joe_a_path;

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function joe_a_path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < joe_a_path.length
    return joe_a_path[arg1]
}

function buybackFee() payable {
    return buybackFee
}

function governance() payable {
    return address(governanceAddress)
}

function performanceFee() payable {
    return performanceFee
}

function withdrawalFee() payable {
    return withdrawalFee
}

function earned() payable {
    return earned
}

function controller() payable {
    return controllerAddress
}

function a_b_path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < a_b_path.length
    return a_b_path[arg1]
}

function _fallback() payable {
    revert
}

function setBuybackFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    buybackFee = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    withdrawalFee = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    controllerAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function setPerformanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    performanceFee = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    address(governanceAddress) = arg1
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.0x93f1a40b with:
            gas gas_remaining wei
           args stor8, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 224 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function balanceOf() payable {
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.0x93f1a40b with:
            gas gas_remaining wei
           args stor8, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 224 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
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

function clean(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    if wantAddress == arg1:
        revert with 0, 'want'
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
    mem[ceil32(return_data.size) + 132] = address(governanceAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) << 288)
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

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if controllerAddress != msg.sender:
        revert with 0, '!controller'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
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
        mem[ceil32(return_data.size) + 100] = stor8
        mem[ceil32(return_data.size) + 132] = arg1 - ext_call.return_data[0]
        require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
        call 0xd6a4f121ca35509af06a0be99093d08462f53052.0x441a3e70 with:
             gas gas_remaining wei
            args stor8, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not arg1:
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x9ec5a894 with:
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
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], 0, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call wantAddress with:
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
            mem[(2 * ceil32(return_data.size)) + 264] = wantAddress
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0xa622ee7c with:
                    gas gas_remaining wei
                   args wantAddress
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
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, ext_call.return_data[12 len 20], arg1, 0
            mem[(4 * ceil32(return_data.size)) + 492] = 0
            call wantAddress with:
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
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = wantAddress
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xa622ee7c with:
                gas gas_remaining wei
               args wantAddress
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
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, ext_call.return_data[12 len 20], arg1, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], arg1, 0) << 288)
    else:
        require arg1
        if arg1 * withdrawalFee / arg1 != withdrawalFee:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x9ec5a894 with:
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
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], arg1 * withdrawalFee / 10000, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call wantAddress with:
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
            mem[(2 * ceil32(return_data.size)) + 264] = wantAddress
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0xa622ee7c with:
                    gas gas_remaining wei
                   args wantAddress
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
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, ext_call.return_data[12 len 20], arg1 - (arg1 * withdrawalFee / 10000), 0
            mem[(4 * ceil32(return_data.size)) + 492] = 0
            call wantAddress with:
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
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = wantAddress
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xa622ee7c with:
                gas gas_remaining wei
               args wantAddress
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
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, ext_call.return_data[12 len 20], arg1 - (arg1 * withdrawalFee / 10000), 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call wantAddress with:
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
