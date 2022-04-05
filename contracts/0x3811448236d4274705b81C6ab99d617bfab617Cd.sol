contract main {




// =====================  Runtime code  =====================


#
#  - withdrawOther(address arg1)
#  - withdraw(uint256 arg1)
#  - harvest()
#  - withdrawAll()
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
uint8 paused;
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
    return bool(paused)
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
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    if guardianAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'onlyPausers'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function setSlippageTolerance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
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
    if paused:
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
        call stakingContractAddress.0xa694fc3a with:
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
    if paused:
        revert with 0, 'Pausable: paused'
    if uint8(stor0.field_8):
        paused = 0
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
            paused = 0
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
                paused = 0
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
                    paused = 0
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
                    paused = 0
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



}
