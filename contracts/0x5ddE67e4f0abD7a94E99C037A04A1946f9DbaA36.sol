contract main {




// =====================  Runtime code  =====================


#
#  - withdrawOther(address arg1)
#  - withdraw(uint256 arg1)
#  - harvest()
#  - initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address[5] arg6, uint256[3] arg7)
#
const getName = 'Stablecoin-Pangolin-Strategy', 0

const uniswap = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d

const version = '', 0

const sub_5a2ebd51(?) = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const isTendable = 0

const baseStrategyVersion = '', 0

const MAX_FEE = 10000

const MAX_BPS = 10000


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint8 stor51;
address governanceAddress;
address strategistAddress;
address keeperAddress;
address wantAddress;
uint256 performanceFeeGovernance;
uint256 performanceFeeStrategist;
uint256 withdrawalFee;
address controllerAddress;
address guardianAddress;
uint256 withdrawalMaxDeviationThreshold;
address stakingAddress;
address rewardAddress;
address token1Address;
address token2Address;
address stakingContractAddress;
uint256 sl;

function performanceFeeGovernance() payable {
    return performanceFeeGovernance
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function reward() payable {
    return rewardAddress
}

function token2() payable {
    return token2Address
}

function guardian() payable {
    return guardianAddress
}

function staking() payable {
    return stakingAddress
}

function performanceFeeStrategist() payable {
    return performanceFeeStrategist
}

function governance() payable {
    return governanceAddress
}

function paused() payable {
    return bool(stor51)
}

function sl() payable {
    return sl
}

function withdrawalFee() payable {
    return withdrawalFee
}

function keeper() payable {
    return keeperAddress
}

function token1() payable {
    return token1Address
}

function stakingContract() payable {
    return stakingContractAddress
}

function controller() payable {
    return controllerAddress
}

function withdrawalMaxDeviationThreshold() payable {
    return withdrawalMaxDeviationThreshold
}

function _fallback() payable {
    revert
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    keeperAddress = arg1
}

function setGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    guardianAddress = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    controllerAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    governanceAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    strategistAddress = arg1
}

function unpause() payable {
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    if not stor51:
        revert with 0, 'Pausable: not paused'
    stor51 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    if guardianAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'onlyPausers'
    if stor51:
        revert with 0, 'Pausable: paused'
    stor51 = 1
    emit Paused(msg.sender);
}

function setSlippageTolerance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor51:
        revert with 0, 'Pausable: paused'
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'onlyGovernanceOrStrategist'
    sl = arg1
}

function getProtectedTokens() payable {
    mem[128] = wantAddress
    mem[160] = rewardAddress
    mem[192] = 32
    idx = 0
    s = 128
    t = 256
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=2, data=mem[256 len 64])
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'base-strategy/excessive-withdrawal-fee'
    withdrawalFee = arg1
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setPerformanceFeeGovernance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'base-strategy/excessive-governance-performance-fee'
    performanceFeeGovernance = arg1
}

function setPerformanceFeeStrategist(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'base-strategy/excessive-strategist-performance-fee'
    performanceFeeStrategist = arg1
}

function setWithdrawalMaxDeviationThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'base-strategy/excessive-max-deviation-threshold'
    withdrawalMaxDeviationThreshold = arg1
}

function balanceOfToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function deposit() payable {
    if stor51:
        revert with 0, 'Pausable: paused'
    if keeperAddress != msg.sender:
        if governanceAddress != msg.sender:
            if controllerAddress != msg.sender:
                revert with 0, 'onlyAuthorizedActorsOrController'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stakingContractAddress)
        call stakingContractAddress.stake(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function __BaseStrategy_init(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if stor51:
        revert with 0, 'Pausable: paused'
    if uint8(stor0.field_8):
        stor51 = 0
        governanceAddress = arg1
        strategistAddress = arg2
        keeperAddress = arg4
        controllerAddress = arg3
        guardianAddress = arg5
        withdrawalMaxDeviationThreshold = 50
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor51 = 0
            governanceAddress = arg1
            strategistAddress = arg2
            keeperAddress = arg4
            controllerAddress = arg3
            guardianAddress = arg5
            withdrawalMaxDeviationThreshold = 50
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor51 = 0
                governanceAddress = arg1
                strategistAddress = arg2
                keeperAddress = arg4
                controllerAddress = arg3
                guardianAddress = arg5
                withdrawalMaxDeviationThreshold = 50
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor51 = 0
                    governanceAddress = arg1
                    strategistAddress = arg2
                    keeperAddress = arg4
                    controllerAddress = arg3
                    guardianAddress = arg5
                    withdrawalMaxDeviationThreshold = 50
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    stor51 = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    governanceAddress = arg1
                    strategistAddress = arg2
                    keeperAddress = arg4
                    controllerAddress = arg3
                    guardianAddress = arg5
                    withdrawalMaxDeviationThreshold = 50
                    uint8(stor0.field_8) = 0
}

function withdrawAll() payable {
    if stor51:
        revert with 0, 'Pausable: paused'
    if controllerAddress != msg.sender:
        revert with 0, 'onlyController'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.0x3d18b912 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(rewardAddress)
    staticcall rewardAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(stakingContractAddress)
        staticcall stakingContractAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stakingContractAddress)
        call stakingContractAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 100] = wantAddress
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xa622ee7c with:
                gas gas_remaining wei
               args wantAddress
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!vault'
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = 68
        mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(6 * ceil32(return_data.size)) + 196] = 32
        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0
        mem[(6 * ceil32(return_data.size)) + 328] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                if not mem[(6 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if not ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 160] = 3
            mem[ceil32(return_data.size) + 192] = rewardAddress
            mem[ceil32(return_data.size) + 224] = token1Address
            mem[ceil32(return_data.size) + 256] = token2Address
            mem[ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 292] = 0
            mem[ceil32(return_data.size) + 324] = 0
            mem[ceil32(return_data.size) + 356] = 160
            mem[ceil32(return_data.size) + 452] = 3
            idx = 0
            s = ceil32(return_data.size) + 192
            t = ceil32(return_data.size) + 484
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 388] = this.address
            mem[ceil32(return_data.size) + 420] = block.timestamp
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 484 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _1018 = mem[ceil32(return_data.size) + 288 len 4], 0
            require mem[ceil32(return_data.size) + 288 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 288 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 0 + 319
            _1032 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 0 + 288]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 0 + 288] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 0 + 288]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 0 + 288]) + 320 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 0 + 288]) + 320
            mem[(2 * ceil32(return_data.size)) + 288] = _1032
            require return_data.size >= _1018 + (32 * _1032) + 32
            mem[(2 * ceil32(return_data.size)) + 320 len 32 * _1032] = mem[ceil32(return_data.size) + _1018 + 320 len 32 * _1032]
            _1961 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require mem[_1961]
            mem[_1961 + 32] = rewardAddress
            require 1 < mem[_1961]
            mem[_1961 + 64] = token1Address
            mem[64] = _1961 + 160
            mem[_1961 + 96] = 30
            mem[_1961 + 128] = 'SafeMath: subtraction overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_1961 + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1961 + 164] = ext_call.return_data[0]
            mem[_1961 + 196] = 0
            mem[_1961 + 228] = 160
            mem[_1961 + 324] = mem[_1961]
            idx = 0
            s = _1961 + 32
            t = _1961 + 356
            while idx < mem[_1961]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1961 + 260] = this.address
            mem[_1961 + 292] = block.timestamp
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1961 + (32 * mem[_1961]) + -mem[64] + 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2846 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2848 = mem[_2846]
            require mem[_2846] <= test266151307()
            require _2846 + return_data.size > _2846 + mem[_2846] + 31
            _2850 = mem[_2846 + mem[_2846]]
            require mem[_2846 + mem[_2846]] <= test266151307()
            require (32 * mem[_2846 + mem[_2846]]) + 32 >= 0 and _2846 + ceil32(return_data.size) + (32 * mem[_2846 + mem[_2846]]) + 32 <= test266151307()
            mem[64] = _2846 + ceil32(return_data.size) + (32 * mem[_2846 + mem[_2846]]) + 32
            mem[_2846 + ceil32(return_data.size)] = _2850
            require return_data.size >= _2848 + (32 * _2850) + 32
            mem[_2846 + ceil32(return_data.size) + 32 len 32 * _2850] = mem[_2846 + _2848 + 32 len 32 * _2850]
            mem[mem[64] + 4] = this.address
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3694 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3696 = mem[_3694]
            mem[mem[64] + 4] = this.address
            require ext_code.size(token2Address)
            staticcall token2Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3704 = mem[_3702]
            if not _3696:
                _3708 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3708] = 26
                mem[_3708 + 32] = 'SafeMath: division by zero'
                if not _3704:
                    _3718 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3718] = 26
                    mem[_3718 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 68] = _3696
                    mem[mem[64] + 100] = _3704
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args token1Address, token2Address, _3696, _3704, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stakingContractAddress)
                    staticcall stakingContractAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3794 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_3794]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3850 = mem[_3842]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xa622ee7c with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3874 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3874] == mem[_3874 + 12 len 20]
                    if not mem[_3874 + 12 len 20]:
                        revert with 0, '!vault'
                    _3896 = mem[64]
                    mem[mem[64] + 36] = mem[_3874 + 12 len 20]
                    mem[mem[64] + 68] = _3850
                    _3913 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3896 + 100] = 32
                    mem[_3896 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3950 = mem[_3913]
                    mem[_3896 + 164 len ceil32(mem[_3913])] = mem[_3913 + 32 len ceil32(mem[_3913])]
                    if ceil32(_3950) > _3950:
                        mem[_3950 + _3896 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3896 + 168 len _3950 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_3896 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3896 + 196] == bool(mem[_3896 + 196])
                            if not mem[_3896 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if sl * _3704 / _3704 != sl:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3723 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3723] = 26
                    mem[_3723 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 68] = _3696
                    mem[mem[64] + 100] = _3704
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = sl * _3704 / 10000
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args token1Address, token2Address, _3696, _3704, 0, sl * _3704 / 10000, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stakingContractAddress)
                    staticcall stakingContractAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3798 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_3798]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3854 = mem[_3846]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xa622ee7c with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3878 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3878] == mem[_3878 + 12 len 20]
                    if not mem[_3878 + 12 len 20]:
                        revert with 0, '!vault'
                    _3903 = mem[64]
                    mem[mem[64] + 36] = mem[_3878 + 12 len 20]
                    mem[mem[64] + 68] = _3854
                    _3924 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3903 + 100] = 32
                    mem[_3903 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3959 = mem[_3924]
                    mem[_3903 + 164 len ceil32(mem[_3924])] = mem[_3924 + 32 len ceil32(mem[_3924])]
                    if ceil32(_3959) > _3959:
                        mem[_3959 + _3903 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3903 + 168 len _3959 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_3903 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3903 + 196] == bool(mem[_3903 + 196])
                            if not mem[_3903 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if sl * _3696 / _3696 != sl:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3711 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3711] = 26
                mem[_3711 + 32] = 'SafeMath: division by zero'
                if not _3704:
                    _3722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3722] = 26
                    mem[_3722 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 68] = _3696
                    mem[mem[64] + 100] = _3704
                    mem[mem[64] + 132] = sl * _3696 / 10000
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args token1Address, token2Address, _3696, _3704, sl * _3696 / 10000, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stakingContractAddress)
                    staticcall stakingContractAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3797 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_3797]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3853 = mem[_3845]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xa622ee7c with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3877 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3877] == mem[_3877 + 12 len 20]
                    if not mem[_3877 + 12 len 20]:
                        revert with 0, '!vault'
                    _3902 = mem[64]
                    mem[mem[64] + 36] = mem[_3877 + 12 len 20]
                    mem[mem[64] + 68] = _3853
                    _3922 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3902 + 100] = 32
                    mem[_3902 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3958 = mem[_3922]
                    mem[_3902 + 164 len ceil32(mem[_3922])] = mem[_3922 + 32 len ceil32(mem[_3922])]
                    if ceil32(_3958) > _3958:
                        mem[_3958 + _3902 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3902 + 168 len _3958 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_3902 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3902 + 196] == bool(mem[_3902 + 196])
                            if not mem[_3902 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if sl * _3704 / _3704 != sl:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3727 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3727] = 26
                    mem[_3727 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 68] = _3696
                    mem[mem[64] + 100] = _3704
                    mem[mem[64] + 132] = sl * _3696 / 10000
                    mem[mem[64] + 164] = sl * _3704 / 10000
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args token1Address, token2Address, _3696, _3704, sl * _3696 / 10000, sl * _3704 / 10000, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stakingContractAddress)
                    staticcall stakingContractAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3801 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_3801]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3857 = mem[_3849]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xa622ee7c with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3881 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3881] == mem[_3881 + 12 len 20]
                    if not mem[_3881 + 12 len 20]:
                        revert with 0, '!vault'
                    _3910 = mem[64]
                    mem[mem[64] + 36] = mem[_3881 + 12 len 20]
                    mem[mem[64] + 68] = _3857
                    _3931 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3910 + 100] = 32
                    mem[_3910 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3964 = mem[_3931]
                    mem[_3910 + 164 len ceil32(mem[_3931])] = mem[_3931 + 32 len ceil32(mem[_3931])]
                    if ceil32(_3964) > _3964:
                        mem[_3964 + _3910 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3910 + 168 len _3964 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_3910 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3910 + 196] == bool(mem[_3910 + 196])
                            if not mem[_3910 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if 5000 * ext_call.return_data[0] / ext_call.return_data[0] != 5000:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 160] = 3
            mem[ceil32(return_data.size) + 192] = rewardAddress
            mem[ceil32(return_data.size) + 224] = token1Address
            mem[ceil32(return_data.size) + 256] = token2Address
            mem[ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 292] = 5000 * ext_call.return_data[0] / 10000
            mem[ceil32(return_data.size) + 324] = 0
            mem[ceil32(return_data.size) + 356] = 160
            mem[ceil32(return_data.size) + 452] = 3
            idx = 0
            s = ceil32(return_data.size) + 192
            t = ceil32(return_data.size) + 484
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 388] = this.address
            mem[ceil32(return_data.size) + 420] = block.timestamp
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 5000 * ext_call.return_data[0] / 10000, 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 484 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _1017 = mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32
            require mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 288 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 319
            _1031 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 288]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 288] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 288]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 288]) + 320 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, 5000 * ext_call.return_data[0] / 10000) >> 32 + 288]) + 320
            mem[(2 * ceil32(return_data.size)) + 288] = _1031
            require return_data.size >= _1017 + (32 * _1031) + 32
            mem[(2 * ceil32(return_data.size)) + 320 len 32 * _1031] = mem[ceil32(return_data.size) + _1017 + 320 len 32 * _1031]
            _1959 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require mem[_1959]
            mem[_1959 + 32] = rewardAddress
            require 1 < mem[_1959]
            mem[_1959 + 64] = token1Address
            mem[64] = _1959 + 160
            mem[_1959 + 96] = 30
            mem[_1959 + 128] = 'SafeMath: subtraction overflow'
            if 5000 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_1959 + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1959 + 164] = ext_call.return_data[0] - (5000 * ext_call.return_data[0] / 10000)
            mem[_1959 + 196] = 0
            mem[_1959 + 228] = 160
            mem[_1959 + 324] = mem[_1959]
            idx = 0
            s = _1959 + 32
            t = _1959 + 356
            while idx < mem[_1959]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1959 + 260] = this.address
            mem[_1959 + 292] = block.timestamp
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1959 + (32 * mem[_1959]) + -mem[64] + 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2845 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2847 = mem[_2845]
            require mem[_2845] <= test266151307()
            require _2845 + return_data.size > _2845 + mem[_2845] + 31
            _2849 = mem[_2845 + mem[_2845]]
            require mem[_2845 + mem[_2845]] <= test266151307()
            require (32 * mem[_2845 + mem[_2845]]) + 32 >= 0 and _2845 + ceil32(return_data.size) + (32 * mem[_2845 + mem[_2845]]) + 32 <= test266151307()
            mem[64] = _2845 + ceil32(return_data.size) + (32 * mem[_2845 + mem[_2845]]) + 32
            mem[_2845 + ceil32(return_data.size)] = _2849
            require return_data.size >= _2847 + (32 * _2849) + 32
            mem[_2845 + ceil32(return_data.size) + 32 len 32 * _2849] = mem[_2845 + _2847 + 32 len 32 * _2849]
            mem[mem[64] + 4] = this.address
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3693 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3695 = mem[_3693]
            mem[mem[64] + 4] = this.address
            require ext_code.size(token2Address)
            staticcall token2Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3701 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3703 = mem[_3701]
            if not _3695:
                _3707 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3707] = 26
                mem[_3707 + 32] = 'SafeMath: division by zero'
                if not _3703:
                    _3716 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3716] = 26
                    mem[_3716 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 68] = _3695
                    mem[mem[64] + 100] = _3703
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args token1Address, token2Address, _3695, _3703, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stakingContractAddress)
                    staticcall stakingContractAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3792 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_3792]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3840 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3848 = mem[_3840]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xa622ee7c with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3872 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3872] == mem[_3872 + 12 len 20]
                    if not mem[_3872 + 12 len 20]:
                        revert with 0, '!vault'
                    _3893 = mem[64]
                    mem[mem[64] + 36] = mem[_3872 + 12 len 20]
                    mem[mem[64] + 68] = _3848
                    _3908 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3893 + 100] = 32
                    mem[_3893 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3945 = mem[_3908]
                    mem[_3893 + 164 len ceil32(mem[_3908])] = mem[_3908 + 32 len ceil32(mem[_3908])]
                    if ceil32(_3945) > _3945:
                        mem[_3945 + _3893 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3893 + 168 len _3945 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_3893 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3893 + 196] == bool(mem[_3893 + 196])
                            if not mem[_3893 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if sl * _3703 / _3703 != sl:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3720] = 26
                    mem[_3720 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 68] = _3695
                    mem[mem[64] + 100] = _3703
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = sl * _3703 / 10000
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args token1Address, token2Address, _3695, _3703, 0, sl * _3703 / 10000, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stakingContractAddress)
                    staticcall stakingContractAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3796 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_3796]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3844 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3852 = mem[_3844]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xa622ee7c with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3876 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3876] == mem[_3876 + 12 len 20]
                    if not mem[_3876 + 12 len 20]:
                        revert with 0, '!vault'
                    _3899 = mem[64]
                    mem[mem[64] + 36] = mem[_3876 + 12 len 20]
                    mem[mem[64] + 68] = _3852
                    _3918 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3899 + 100] = 32
                    mem[_3899 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3954 = mem[_3918]
                    mem[_3899 + 164 len ceil32(mem[_3918])] = mem[_3918 + 32 len ceil32(mem[_3918])]
                    if ceil32(_3954) > _3954:
                        mem[_3954 + _3899 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3899 + 168 len _3954 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_3899 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3899 + 196] == bool(mem[_3899 + 196])
                            if not mem[_3899 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if sl * _3695 / _3695 != sl:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3709 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3709] = 26
                mem[_3709 + 32] = 'SafeMath: division by zero'
                if not _3703:
                    _3719 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3719] = 26
                    mem[_3719 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 68] = _3695
                    mem[mem[64] + 100] = _3703
                    mem[mem[64] + 132] = sl * _3695 / 10000
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args token1Address, token2Address, _3695, _3703, sl * _3695 / 10000, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stakingContractAddress)
                    staticcall stakingContractAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3795 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_3795]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3843 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3851 = mem[_3843]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xa622ee7c with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3875 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3875] == mem[_3875 + 12 len 20]
                    if not mem[_3875 + 12 len 20]:
                        revert with 0, '!vault'
                    _3898 = mem[64]
                    mem[mem[64] + 36] = mem[_3875 + 12 len 20]
                    mem[mem[64] + 68] = _3851
                    _3916 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3898 + 100] = 32
                    mem[_3898 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3953 = mem[_3916]
                    mem[_3898 + 164 len ceil32(mem[_3916])] = mem[_3916 + 32 len ceil32(mem[_3916])]
                    if ceil32(_3953) > _3953:
                        mem[_3953 + _3898 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3898 + 168 len _3953 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_3898 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3898 + 196] == bool(mem[_3898 + 196])
                            if not mem[_3898 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if sl * _3703 / _3703 != sl:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3725 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3725] = 26
                    mem[_3725 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 68] = _3695
                    mem[mem[64] + 100] = _3703
                    mem[mem[64] + 132] = sl * _3695 / 10000
                    mem[mem[64] + 164] = sl * _3703 / 10000
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args token1Address, token2Address, _3695, _3703, sl * _3695 / 10000, sl * _3703 / 10000, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stakingContractAddress)
                    staticcall stakingContractAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3799 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_3799]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3855 = mem[_3847]
                    mem[mem[64] + 4] = wantAddress
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xa622ee7c with:
                            gas gas_remaining wei
                           args wantAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3879 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3879] == mem[_3879 + 12 len 20]
                    if not mem[_3879 + 12 len 20]:
                        revert with 0, '!vault'
                    _3905 = mem[64]
                    mem[mem[64] + 36] = mem[_3879 + 12 len 20]
                    mem[mem[64] + 68] = _3855
                    _3927 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3905 + 100] = 32
                    mem[_3905 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3961 = mem[_3927]
                    mem[_3905 + 164 len ceil32(mem[_3927])] = mem[_3927 + 32 len ceil32(mem[_3927])]
                    if ceil32(_3961) > _3961:
                        mem[_3961 + _3905 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3905 + 168 len _3961 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_3905 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3905 + 196] == bool(mem[_3905 + 196])
                            if not mem[_3905 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return 0
}



}
