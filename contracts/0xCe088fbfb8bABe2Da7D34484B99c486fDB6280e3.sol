contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2, uint256 arg3, uint256 arg4)
#
const version = ''

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
uint8 paused;
uint8 stor201;
address tokenAddress;
address rewardsAddress;
uint256 maxStakingAmount;
uint256 currentTotalStake;
uint256 unstakingPeriod;
uint256 stor256;
uint256 rewardsDistributed;
uint256 rewardsWithdrawn;
uint256 totalRewardsDistributed;
mapping of struct stor260;
mapping of struct stor261;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function maxStakingAmount() payable {
    return maxStakingAmount
}

function paused() payable {
    return bool(paused)
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function rewardsDistributed() payable {
    return rewardsDistributed
}

function rewardsAddress() payable {
    return rewardsAddress
}

function rewardsWithdrawn() payable {
    return rewardsWithdrawn
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function currentTotalStake() payable {
    return currentTotalStake
}

function totalRewardsDistributed() payable {
    return totalRewardsDistributed
}

function unstakingPeriod() payable {
    return unstakingPeriod
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setUnstakingPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin['OWNER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x736d7573742068617665206f776e657220726f6c6520746f2073657420756e7374616b696e6720706572696f,
                    mem[208 len 20]
    unstakingPeriod = arg1
}

function pause() payable {
    if not roleAdmin['PAUSER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6c537761705374616b696e67436f6e74726163743a206d75737420686176652070617573657220726f6c6520746f2070617573,
                    mem[215 len 13]
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin['PAUSER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6c537761705374616b696e67436f6e74726163743a206d75737420686176652070617573657220726f6c6520746f20756e70617573,
                    mem[217 len 11]
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setMaxStakingAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin['OWNER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x646d7573742068617665206f776e657220726f6c6520746f20736574206d6178206361,
                    mem[199 len 29]
    if arg1 <= 0:
        revert with 0, 'max cap has to be larger than 0'
    maxStakingAmount = arg1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function setRewardAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin['OWNER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x655b56616c69646174696f6e5d205468652063616c6c6572206d7573742068617665206f776e657220726f6c6520746f20736574207265776172647320616464726573,
                    mem[231 len 29]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x745b56616c69646174696f6e5d205f726577617264734164647265737320697320746865207a65726f20616464726573,
                    mem[212 len 16]
    rewardsAddress = arg1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x74416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x735b56616c69646174696f6e5d20546865206164647265737320646f6573206e6f7420636f6e7461696e206120636f6e74726163,
                    mem[216 len 12]
    if not ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x735b56616c69646174696f6e5d20546865206164647265737320646f6573206e6f7420636f6e7461696e206120636f6e74726163,
                    mem[216 len 12]
    if not roleAdmin['OWNER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x645b56616c69646174696f6e5d205468652063616c6c6572206d7573742068617665206f776e657220726f6c6520746f2073657420746f6b656e20616464726573,
                    mem[229 len 31]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x305b56616c69646174696f6e5d20496e76616c6964207377617020746f6b656e20616464726573,
                    mem[203 len 25]
    tokenAddress = arg1
}

function initiateWithdrawal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor201:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor201 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x775b496e697469617465205769746864726177616c5d20496e76616c6964207769746864726177616c20616d6f756e,
                    mem[211 len 17]
    if arg1 > stor260[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x725b496e697469617465205769746864726177616c5d20576974686472617720616d6f756e742065786365656420746865207374616b6520616d6f756e,
                    mem[225 len 3]
    if not stor260[msg.sender].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x305b496e697469617465205769746864726177616c5d205468657265206973206e6f207374616b65206465706f73697420666f722074686973206163636f756e
    if not stor260[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x305b496e697469617465205769746864726177616c5d205468657265206973206e6f207374616b65206465706f73697420666f722074686973206163636f756e
    if stor260[msg.sender].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x305b496e697469617465205769746864726177616c5d20596f75206861766520616c726561647920696e697469617465642074686520776974686472617761,
                    mem[227 len 1]
    if stor261[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x305b496e697469617465205769746864726177616c5d20596f75206861766520616c726561647920696e697469617465642074686520776974686472617761,
                    mem[227 len 1]
    stor260[msg.sender].field_512 = block.timestamp
    stor260[msg.sender].field_1024 = stor256
    stor261[msg.sender].field_256 = arg1
    stor261[msg.sender].field_0 = block.timestamp
    if arg1 > currentTotalStake:
        revert with 0, 'SafeMath: subtraction overflow'
    currentTotalStake -= arg1
    emit WithdrawInitiated(arg1, block.timestamp, msg.sender);
    stor201 = 1
}

function getStakeDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor260[address(arg1)].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x745b56616c69646174696f6e5d2054686973206163636f756e7420646f65736e277420686176652061207374616b65206465706f7369,
                    mem[218 len 10]
    if not stor260[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x745b56616c69646174696f6e5d2054686973206163636f756e7420646f65736e277420686176652061207374616b65206465706f7369,
                    mem[218 len 10]
    if stor260[address(arg1)].field_512:
        if stor260[address(arg1)].field_768 > stor260[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor260[address(arg1)].field_0:
            return stor260[address(arg1)].field_0, stor260[address(arg1)].field_256, stor260[address(arg1)].field_512, 0
        if (stor260[address(arg1)].field_1024 * stor260[address(arg1)].field_0) - (stor260[address(arg1)].field_768 * stor260[address(arg1)].field_0) / stor260[address(arg1)].field_0 != stor260[address(arg1)].field_1024 - stor260[address(arg1)].field_768:
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        return stor260[address(arg1)].field_0, 
               stor260[address(arg1)].field_256,
               stor260[address(arg1)].field_512,
               (stor260[address(arg1)].field_1024 * stor260[address(arg1)].field_0) - (stor260[address(arg1)].field_768 * stor260[address(arg1)].field_0) / 10^18
    if stor260[address(arg1)].field_768 > stor256:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor260[address(arg1)].field_0:
        return stor260[address(arg1)].field_0, stor260[address(arg1)].field_256, stor260[address(arg1)].field_512, 0
    if (stor256 * stor260[address(arg1)].field_0) - (stor260[address(arg1)].field_768 * stor260[address(arg1)].field_0) / stor260[address(arg1)].field_0 != stor256 - stor260[address(arg1)].field_768:
        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
    return stor260[address(arg1)].field_0, 
           stor260[address(arg1)].field_256,
           stor260[address(arg1)].field_512,
           (stor256 * stor260[address(arg1)].field_0) - (stor260[address(arg1)].field_768 * stor260[address(arg1)].field_0) / 10^18
}

function distributeRewards() payable {
    if not stor201:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor201 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin['REWARDS_DISTRIBUTOR_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x6c5b56616c69646174696f6e5d205468652063616c6c6572206d75737420686176652072657761726473206469737472696275746f7220726f6c,
                    mem[222 len 6]
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin['REWARDS_DISTRIBUTOR_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x6c5b56616c69646174696f6e5d205468652063616c6c6572206d75737420686176652072657761726473206469737472696275746f7220726f6c,
                    mem[222 len 6]
    if currentTotalStake <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x645b56616c69646174696f6e5d206e6f7420656e6f75676820746f74616c207374616b6520616363756d756c617465,
                    mem[211 len 17]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args rewardsAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x735b56616c69646174696f6e5d206e6f7420656e6f756768207265776172647320616363756d756c617465,
                    mem[207 len 21]
    if rewardsWithdrawn + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsDistributed > rewardsWithdrawn + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rewardsWithdrawn + ext_call.return_data[0] - rewardsDistributed:
        if not currentTotalStake:
            revert with 0, 'SafeMath: division by zero'
        if (0 / currentTotalStake) + stor256 < stor256:
            revert with 0, 'SafeMath: addition overflow'
        stor256 += 0 / currentTotalStake
    else:
        if (10^18 * rewardsWithdrawn) + (10^18 * ext_call.return_data[0]) - (10^18 * rewardsDistributed) / rewardsWithdrawn + ext_call.return_data[0] - rewardsDistributed != 10^18:
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not currentTotalStake:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * rewardsWithdrawn) + (10^18 * ext_call.return_data[0]) - (10^18 * rewardsDistributed) / currentTotalStake) + stor256 < stor256:
            revert with 0, 'SafeMath: addition overflow'
        stor256 += (10^18 * rewardsWithdrawn) + (10^18 * ext_call.return_data[0]) - (10^18 * rewardsDistributed) / currentTotalStake
    rewardsDistributed = ext_call.return_data[0]
    rewardsWithdrawn = 0
    if rewardsWithdrawn + ext_call.return_data[0] - rewardsDistributed + totalRewardsDistributed < totalRewardsDistributed:
        revert with 0, 'SafeMath: addition overflow'
    totalRewardsDistributed = rewardsWithdrawn + ext_call.return_data[0] - rewardsDistributed + totalRewardsDistributed
    emit RewardsDistributed((rewardsWithdrawn + ext_call.return_data[0] - rewardsDistributed));
    stor201 = 1
}

function withdrawRewards() payable {
    if not stor201:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor201 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if not stor260[msg.sender].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x655b52657761726473205769746864726177616c5d205468657265206973206e6f207374616b65206465706f73697420666f722074686973206163636f756e,
                    mem[227 len 1]
    if not stor260[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x655b52657761726473205769746864726177616c5d205468657265206973206e6f207374616b65206465706f73697420666f722074686973206163636f756e,
                    mem[227 len 1]
    if stor260[msg.sender].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x745b52657761726473205769746864726177616c5d20596f7520616c726561647920696e69746961746564207468652066756c6c20776974686472617761,
                    mem[226 len 2]
    if stor260[msg.sender].field_512:
        if stor260[msg.sender].field_768 > stor260[msg.sender].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor260[msg.sender].field_0:
            revert with 0, 
                        32,
                        62,
                        0x745b52657761726473205769746864726177616c5d205468652072657761726420616d6f756e742068617320746f206265206c6172676572207468616e20,
                        mem[546 len 2]
        if (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / stor260[msg.sender].field_0 != stor260[msg.sender].field_1024 - stor260[msg.sender].field_768:
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18 <= 0:
            revert with 0, 
                        32,
                        62,
                        0x745b52657761726473205769746864726177616c5d205468652072657761726420616d6f756e742068617320746f206265206c6172676572207468616e20,
                        mem[546 len 2]
        stor260[msg.sender].field_768 = stor256
        if ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
            revert with 0, 'SafeMath: addition overflow'
        rewardsWithdrawn += (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsAddress, msg.sender, (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        72,
                        0x745b52657761726473205769746864726177616c5d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f7572207265776172,
                        mem[556 len 24]
        emit RewardsWithdrawn(((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18), msg.sender);
    else:
        if stor260[msg.sender].field_768 > stor256:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor260[msg.sender].field_0:
            revert with 0, 
                        32,
                        62,
                        0x745b52657761726473205769746864726177616c5d205468652072657761726420616d6f756e742068617320746f206265206c6172676572207468616e20,
                        mem[546 len 2]
        if (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / stor260[msg.sender].field_0 != stor256 - stor260[msg.sender].field_768:
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18 <= 0:
            revert with 0, 
                        32,
                        62,
                        0x745b52657761726473205769746864726177616c5d205468652072657761726420616d6f756e742068617320746f206265206c6172676572207468616e20,
                        mem[546 len 2]
        stor260[msg.sender].field_768 = stor256
        if ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
            revert with 0, 'SafeMath: addition overflow'
        rewardsWithdrawn += (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsAddress, msg.sender, (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        72,
                        0x745b52657761726473205769746864726177616c5d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f7572207265776172,
                        mem[556 len 24]
        emit RewardsWithdrawn(((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18), msg.sender);
    stor201 = 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor201:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor201 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if stor260[msg.sender].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x655b4465706f7369745d20596f75206861766520616c726561647920696e697469617465642074686520776974686472617761,
                    mem[215 len 13]
    if stor260[msg.sender].field_512:
        if stor260[msg.sender].field_768 > stor260[msg.sender].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor260[msg.sender].field_0:
            if arg1 + stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + stor260[msg.sender].field_0 <= stor260[msg.sender].field_0:
                revert with 0, 
                            32,
                            54,
                            0x645b56616c69646174696f6e5d20546865207374616b65206465706f7369742068617320746f206265206c6172676572207468616e20,
                            mem[538 len 10]
            if stor260[msg.sender].field_0 > arg1 + stor260[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + currentTotalStake < currentTotalStake:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + currentTotalStake > maxStakingAmount:
                revert with 0, 
                            32,
                            61,
                            0x745b4465706f7369745d20596f7572206465706f73697420776f756c6420657863656564207468652063757272656e74207374616b696e67206c696d69,
                            mem[609 len 3]
            stor260[msg.sender].field_0 += arg1
            stor260[msg.sender].field_256 = block.timestamp
            stor260[msg.sender].field_1280 = 1
            stor260[msg.sender].field_768 = stor256
            currentTotalStake += arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x705b4465706f7369745d20536f6d657468696e672077656e742077726f6e6720647572696e672074686520746f6b656e207472616e736665,
                            mem[604 len 8]
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            emit StakeDeposited(arg1, msg.sender);
        else:
            if (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / stor260[msg.sender].field_0 != stor260[msg.sender].field_1024 - stor260[msg.sender].field_768:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if arg1 + stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + stor260[msg.sender].field_0 <= stor260[msg.sender].field_0:
                revert with 0, 
                            32,
                            54,
                            0x645b56616c69646174696f6e5d20546865207374616b65206465706f7369742068617320746f206265206c6172676572207468616e20,
                            mem[538 len 10]
            if stor260[msg.sender].field_0 > ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + stor260[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + currentTotalStake < currentTotalStake:
                revert with 0, 'SafeMath: addition overflow'
            if ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + currentTotalStake > maxStakingAmount:
                revert with 0, 
                            32,
                            61,
                            0x745b4465706f7369745d20596f7572206465706f73697420776f756c6420657863656564207468652063757272656e74207374616b696e67206c696d69,
                            mem[609 len 3]
            stor260[msg.sender].field_0 = ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + stor260[msg.sender].field_0
            stor260[msg.sender].field_256 = block.timestamp
            stor260[msg.sender].field_1280 = 1
            stor260[msg.sender].field_768 = stor256
            currentTotalStake = ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + currentTotalStake
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x705b4465706f7369745d20536f6d657468696e672077656e742077726f6e6720647572696e672074686520746f6b656e207472616e736665,
                            mem[604 len 8]
            if (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18:
                if ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                    revert with 0, 'SafeMath: addition overflow'
                rewardsWithdrawn += (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsAddress, this.address, (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x645b4465706f7369745d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e67207265776172,
                                mem[604 len 8]
            if ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            emit StakeDeposited((((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1), msg.sender);
    else:
        if stor260[msg.sender].field_768 > stor256:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor260[msg.sender].field_0:
            if arg1 + stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + stor260[msg.sender].field_0 <= stor260[msg.sender].field_0:
                revert with 0, 
                            32,
                            54,
                            0x645b56616c69646174696f6e5d20546865207374616b65206465706f7369742068617320746f206265206c6172676572207468616e20,
                            mem[538 len 10]
            if stor260[msg.sender].field_0 > arg1 + stor260[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + currentTotalStake < currentTotalStake:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + currentTotalStake > maxStakingAmount:
                revert with 0, 
                            32,
                            61,
                            0x745b4465706f7369745d20596f7572206465706f73697420776f756c6420657863656564207468652063757272656e74207374616b696e67206c696d69,
                            mem[609 len 3]
            stor260[msg.sender].field_0 += arg1
            stor260[msg.sender].field_256 = block.timestamp
            stor260[msg.sender].field_1280 = 1
            stor260[msg.sender].field_768 = stor256
            currentTotalStake += arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x705b4465706f7369745d20536f6d657468696e672077656e742077726f6e6720647572696e672074686520746f6b656e207472616e736665,
                            mem[604 len 8]
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            emit StakeDeposited(arg1, msg.sender);
        else:
            if (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / stor260[msg.sender].field_0 != stor256 - stor260[msg.sender].field_768:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if arg1 + stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + stor260[msg.sender].field_0 <= stor260[msg.sender].field_0:
                revert with 0, 
                            32,
                            54,
                            0x645b56616c69646174696f6e5d20546865207374616b65206465706f7369742068617320746f206265206c6172676572207468616e20,
                            mem[538 len 10]
            if stor260[msg.sender].field_0 > ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + stor260[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + currentTotalStake < currentTotalStake:
                revert with 0, 'SafeMath: addition overflow'
            if ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + currentTotalStake > maxStakingAmount:
                revert with 0, 
                            32,
                            61,
                            0x745b4465706f7369745d20596f7572206465706f73697420776f756c6420657863656564207468652063757272656e74207374616b696e67206c696d69,
                            mem[609 len 3]
            stor260[msg.sender].field_0 = ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + stor260[msg.sender].field_0
            stor260[msg.sender].field_256 = block.timestamp
            stor260[msg.sender].field_1280 = 1
            stor260[msg.sender].field_768 = stor256
            currentTotalStake = ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 + currentTotalStake
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x705b4465706f7369745d20536f6d657468696e672077656e742077726f6e6720647572696e672074686520746f6b656e207472616e736665,
                            mem[604 len 8]
            if (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18:
                if ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                    revert with 0, 'SafeMath: addition overflow'
                rewardsWithdrawn += (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsAddress, this.address, (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x645b4465706f7369745d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e67207265776172,
                                mem[604 len 8]
            if ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            emit StakeDeposited((((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + arg1), msg.sender);
    stor201 = 1
}

function executeWithdrawal() payable {
    if not stor201:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor201 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if not stor260[msg.sender].field_512:
        if not stor261[msg.sender].field_256:
            revert with 0, 
                        32,
                        45,
                        0x745b57697468647261775d20576974686472617720616d6f756e74206973206e6f7420696e697469616c697a65,
                        mem[721 len 19]
    if not stor260[msg.sender].field_1280:
        revert with 0, 
                    32,
                    53,
                    0x5b57697468647261775d205468657265206973206e6f207374616b65206465706f73697420666f722074686973206163636f756e00,
                    mem[729 len 11]
    if not stor260[msg.sender].field_0:
        revert with 0, 
                    32,
                    53,
                    0x5b57697468647261775d205468657265206973206e6f207374616b65206465706f73697420666f722074686973206163636f756e00,
                    mem[729 len 11]
    if unstakingPeriod > block.timestamp - stor260[msg.sender].field_512 / 24 * 3600:
        revert with 0, 32, 44, 0x735b57697468647261775d2054686520756e7374616b696e6720706572696f6420646964206e6f7420706173, mem[720 len 20]
    if stor261[msg.sender].field_256 != 0:
        if stor260[msg.sender].field_512:
            if stor260[msg.sender].field_768 > stor260[msg.sender].field_1024:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor260[msg.sender].field_0:
                if stor260[msg.sender].field_0 < stor261[msg.sender].field_256:
                    revert with 0, 
                                32,
                                76,
                                0x645b77697468647261775d2052656d61696e696e67207374616b656465706f73697420616d6f756e74206d75737420626520686967686572207468616e20776974686472617720616d6f756e,
                                mem[880 len 20]
                if stor261[msg.sender].field_256 < stor260[msg.sender].field_0:
                    if stor261[msg.sender].field_256 > stor260[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor260[msg.sender].field_0 -= stor261[msg.sender].field_256
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = stor256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor261[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[939 len 25]
                else:
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_256 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = 0
                    stor260[msg.sender].field_1024 = 0
                    stor260[msg.sender].field_1280 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor261[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[875 len 25]
                ('bool', ('ext_call.return_data', 0, 32))
                stor261[msg.sender].field_256 = 0
                stor261[msg.sender].field_0 = 0
                emit WithdrawExecuted(stor261[msg.sender].field_256, 0, msg.sender);
            else:
                if (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / stor260[msg.sender].field_0 != stor260[msg.sender].field_1024 - stor260[msg.sender].field_768:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                if stor260[msg.sender].field_0 < stor261[msg.sender].field_256:
                    revert with 0, 
                                32,
                                76,
                                0x645b77697468647261775d2052656d61696e696e67207374616b656465706f73697420616d6f756e74206d75737420626520686967686572207468616e20776974686472617720616d6f756e,
                                mem[880 len 20]
                if stor261[msg.sender].field_256 < stor260[msg.sender].field_0:
                    if stor261[msg.sender].field_256 > stor260[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor260[msg.sender].field_0 -= stor261[msg.sender].field_256
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = stor256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor261[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[939 len 25]
                    if (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18:
                        if ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardsWithdrawn += (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsAddress, msg.sender, (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        62,
                                        0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f7572207265776172,
                                        mem[930 len 2]
                else:
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_256 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = 0
                    stor260[msg.sender].field_1024 = 0
                    stor260[msg.sender].field_1280 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor261[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[875 len 25]
                    if (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18:
                        if ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardsWithdrawn += (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsAddress, msg.sender, (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        62,
                                        0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f7572207265776172,
                                        mem[866 len 2]
                stor261[msg.sender].field_256 = 0
                stor261[msg.sender].field_0 = 0
                emit WithdrawExecuted(stor261[msg.sender].field_256, (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18, msg.sender);
        else:
            if stor260[msg.sender].field_768 > stor256:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor260[msg.sender].field_0:
                if stor260[msg.sender].field_0 < stor261[msg.sender].field_256:
                    revert with 0, 
                                32,
                                76,
                                0x645b77697468647261775d2052656d61696e696e67207374616b656465706f73697420616d6f756e74206d75737420626520686967686572207468616e20776974686472617720616d6f756e,
                                mem[880 len 20]
                if stor261[msg.sender].field_256 < stor260[msg.sender].field_0:
                    if stor261[msg.sender].field_256 > stor260[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor260[msg.sender].field_0 -= stor261[msg.sender].field_256
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = stor256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor261[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[939 len 25]
                else:
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_256 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = 0
                    stor260[msg.sender].field_1024 = 0
                    stor260[msg.sender].field_1280 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor261[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[875 len 25]
                ('bool', ('ext_call.return_data', 0, 32))
                stor261[msg.sender].field_256 = 0
                stor261[msg.sender].field_0 = 0
                emit WithdrawExecuted(stor261[msg.sender].field_256, 0, msg.sender);
            else:
                if (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / stor260[msg.sender].field_0 != stor256 - stor260[msg.sender].field_768:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                if stor260[msg.sender].field_0 < stor261[msg.sender].field_256:
                    revert with 0, 
                                32,
                                76,
                                0x645b77697468647261775d2052656d61696e696e67207374616b656465706f73697420616d6f756e74206d75737420626520686967686572207468616e20776974686472617720616d6f756e,
                                mem[880 len 20]
                if stor261[msg.sender].field_256 < stor260[msg.sender].field_0:
                    if stor261[msg.sender].field_256 > stor260[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor260[msg.sender].field_0 -= stor261[msg.sender].field_256
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = stor256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor261[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[939 len 25]
                    if (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18:
                        if ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardsWithdrawn += (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsAddress, msg.sender, (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        62,
                                        0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f7572207265776172,
                                        mem[930 len 2]
                else:
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_256 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = 0
                    stor260[msg.sender].field_1024 = 0
                    stor260[msg.sender].field_1280 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor261[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[875 len 25]
                    if (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18:
                        if ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardsWithdrawn += (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsAddress, msg.sender, (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        62,
                                        0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f7572207265776172,
                                        mem[866 len 2]
                stor261[msg.sender].field_256 = 0
                stor261[msg.sender].field_0 = 0
                emit WithdrawExecuted(stor261[msg.sender].field_256, (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18, msg.sender);
    else:
        if stor260[msg.sender].field_512:
            if stor260[msg.sender].field_768 > stor260[msg.sender].field_1024:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor260[msg.sender].field_0:
                if stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                    revert with 0, 
                                32,
                                76,
                                0x645b77697468647261775d2052656d61696e696e67207374616b656465706f73697420616d6f756e74206d75737420626520686967686572207468616e20776974686472617720616d6f756e,
                                mem[880 len 20]
                if stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                    if stor260[msg.sender].field_0 > stor260[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = stor256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor260[msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[939 len 25]
                else:
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_256 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = 0
                    stor260[msg.sender].field_1024 = 0
                    stor260[msg.sender].field_1280 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor260[msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[875 len 25]
                ('bool', ('ext_call.return_data', 0, 32))
                stor261[msg.sender].field_256 = 0
                stor261[msg.sender].field_0 = 0
                emit WithdrawExecuted(stor260[msg.sender].field_0, 0, msg.sender);
            else:
                if (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / stor260[msg.sender].field_0 != stor260[msg.sender].field_1024 - stor260[msg.sender].field_768:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                if stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                    revert with 0, 
                                32,
                                76,
                                0x645b77697468647261775d2052656d61696e696e67207374616b656465706f73697420616d6f756e74206d75737420626520686967686572207468616e20776974686472617720616d6f756e,
                                mem[880 len 20]
                if stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                    if stor260[msg.sender].field_0 > stor260[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = stor256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor260[msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[939 len 25]
                    if (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18:
                        if ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardsWithdrawn += (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsAddress, msg.sender, (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        62,
                                        0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f7572207265776172,
                                        mem[930 len 2]
                else:
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_256 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = 0
                    stor260[msg.sender].field_1024 = 0
                    stor260[msg.sender].field_1280 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor260[msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[875 len 25]
                    if (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18:
                        if ((stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardsWithdrawn += (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsAddress, msg.sender, (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        62,
                                        0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f7572207265776172,
                                        mem[866 len 2]
                stor261[msg.sender].field_256 = 0
                stor261[msg.sender].field_0 = 0
                emit WithdrawExecuted(stor260[msg.sender].field_0, (stor260[msg.sender].field_1024 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18, msg.sender);
        else:
            if stor260[msg.sender].field_768 > stor256:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor260[msg.sender].field_0:
                if stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                    revert with 0, 
                                32,
                                76,
                                0x645b77697468647261775d2052656d61696e696e67207374616b656465706f73697420616d6f756e74206d75737420626520686967686572207468616e20776974686472617720616d6f756e,
                                mem[880 len 20]
                if stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                    if stor260[msg.sender].field_0 > stor260[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = stor256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor260[msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[939 len 25]
                else:
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_256 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = 0
                    stor260[msg.sender].field_1024 = 0
                    stor260[msg.sender].field_1280 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor260[msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[875 len 25]
                ('bool', ('ext_call.return_data', 0, 32))
                stor261[msg.sender].field_256 = 0
                stor261[msg.sender].field_0 = 0
                emit WithdrawExecuted(stor260[msg.sender].field_0, 0, msg.sender);
            else:
                if (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / stor260[msg.sender].field_0 != stor256 - stor260[msg.sender].field_768:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                if stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                    revert with 0, 
                                32,
                                76,
                                0x645b77697468647261775d2052656d61696e696e67207374616b656465706f73697420616d6f756e74206d75737420626520686967686572207468616e20776974686472617720616d6f756e,
                                mem[880 len 20]
                if stor260[msg.sender].field_0 < stor260[msg.sender].field_0:
                    if stor260[msg.sender].field_0 > stor260[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = stor256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor260[msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[939 len 25]
                    if (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18:
                        if ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardsWithdrawn += (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsAddress, msg.sender, (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        62,
                                        0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f7572207265776172,
                                        mem[930 len 2]
                else:
                    stor260[msg.sender].field_0 = 0
                    stor260[msg.sender].field_256 = 0
                    stor260[msg.sender].field_512 = 0
                    stor260[msg.sender].field_768 = 0
                    stor260[msg.sender].field_1024 = 0
                    stor260[msg.sender].field_1280 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor260[msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    71,
                                    0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f757220696e697469616c206465706f7369,
                                    mem[875 len 25]
                    if (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18:
                        if ((stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18) + rewardsWithdrawn < rewardsWithdrawn:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardsWithdrawn += (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsAddress, msg.sender, (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        62,
                                        0x645b57697468647261775d20536f6d657468696e672077656e742077726f6e67207768696c65207472616e7366657272696e6720796f7572207265776172,
                                        mem[866 len 2]
                stor261[msg.sender].field_256 = 0
                stor261[msg.sender].field_0 = 0
                emit WithdrawExecuted(stor260[msg.sender].field_0, (stor256 * stor260[msg.sender].field_0) - (stor260[msg.sender].field_768 * stor260[msg.sender].field_0) / 10^18, msg.sender);
    stor201 = 1
}



}
