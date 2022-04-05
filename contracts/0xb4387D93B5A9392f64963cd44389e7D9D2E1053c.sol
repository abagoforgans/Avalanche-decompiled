contract main {




// =====================  Runtime code  =====================


const DECIMAL_PRECISION = 10^18

const NAME = 'LQTYStaking'


address owner;
mapping of uint256 stakes;
uint256 totalLQTYStaked;
uint256 F_ETH;
uint256 F_LUSD;
mapping of struct snapshots;
address lqtyTokenAddress;
address lusdTokenAddress;
address troveManagerAddress;
address borrowerOperationsAddress;
address activePoolAddress;

function totalLQTYStaked() {
    return totalLQTYStaked
}

function stakes(address arg1) {
    require calldata.size - 4 >= 32
    return stakes[arg1]
}

function lqtyToken() {
    return lqtyTokenAddress
}

function snapshots(address arg1) {
    require calldata.size - 4 >= 32
    return snapshots[arg1].field_0, snapshots[arg1].field_256
}

function troveManagerAddress() {
    return troveManagerAddress
}

function F_LUSD() {
    return F_LUSD
}

function owner() {
    return owner
}

function activePoolAddress() {
    return activePoolAddress
}

function borrowerOperationsAddress() {
    return borrowerOperationsAddress
}

function lusdToken() {
    return lusdTokenAddress
}

function F_ETH() {
    return F_ETH
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function getPendingETHGain(address arg1) {
    require calldata.size - 4 >= 32
    if snapshots[address(arg1)].field_0 > F_ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stakes[address(arg1)]:
        return 0
    if (F_ETH * stakes[address(arg1)]) - (snapshots[address(arg1)].field_0 * stakes[address(arg1)]) / stakes[address(arg1)] != F_ETH - snapshots[address(arg1)].field_0:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((F_ETH * stakes[address(arg1)]) - (snapshots[address(arg1)].field_0 * stakes[address(arg1)]) / 10^18)
}

function getPendingLUSDGain(address arg1) {
    require calldata.size - 4 >= 32
    if snapshots[address(arg1)].field_256 > F_LUSD:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stakes[address(arg1)]:
        return 0
    if (F_LUSD * stakes[address(arg1)]) - (snapshots[address(arg1)].field_256 * stakes[address(arg1)]) / stakes[address(arg1)] != F_LUSD - snapshots[address(arg1)].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((F_LUSD * stakes[address(arg1)]) - (snapshots[address(arg1)].field_256 * stakes[address(arg1)]) / 10^18)
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg1):
        revert with 0, 'Account code size cannot be zero'
    if not arg2:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg2):
        revert with 0, 'Account code size cannot be zero'
    if not arg3:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg3):
        revert with 0, 'Account code size cannot be zero'
    if not arg4:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg4):
        revert with 0, 'Account code size cannot be zero'
    if not arg5:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg5):
        revert with 0, 'Account code size cannot be zero'
    lqtyTokenAddress = arg1
    lusdTokenAddress = arg2
    troveManagerAddress = arg3
    borrowerOperationsAddress = arg4
    activePoolAddress = arg5
    emit LQTYTokenAddressSet(arg1);
    emit LQTYTokenAddressSet(arg2);
    emit TroveManagerAddressSet(arg3);
    emit BorrowerOperationsAddressSet(arg4);
    emit ActivePoolAddressSet(arg5);
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function increaseF_ETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if troveManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c4c5154595374616b696e673a2063616c6c6572206973206e6f742054726f7665,
                    mem[197 len 31]
    if not totalLQTYStaked:
        if F_ETH < F_ETH:
            revert with 0, 'SafeMath: addition overflow'
        emit F_ETHUpdated(F_ETH);
    else:
        if not arg1:
            if not totalLQTYStaked:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalLQTYStaked) + F_ETH < F_ETH:
                revert with 0, 'SafeMath: addition overflow'
            F_ETH += 0 / totalLQTYStaked
            emit F_ETHUpdated(((0 / totalLQTYStaked) + F_ETH));
        else:
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not totalLQTYStaked:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * arg1 / totalLQTYStaked) + F_ETH < F_ETH:
                revert with 0, 'SafeMath: addition overflow'
            F_ETH += 10^18 * arg1 / totalLQTYStaked
            emit F_ETHUpdated(((10^18 * arg1 / totalLQTYStaked) + F_ETH));
}

function increaseF_LUSD(uint256 arg1) {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654c5154595374616b696e673a2063616c6c6572206973206e6f7420426f72726f7765724f70,
                    mem[202 len 26]
    if not totalLQTYStaked:
        if F_LUSD < F_LUSD:
            revert with 0, 'SafeMath: addition overflow'
        emit F_LUSDUpdated(F_LUSD);
    else:
        if not arg1:
            if not totalLQTYStaked:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalLQTYStaked) + F_LUSD < F_LUSD:
                revert with 0, 'SafeMath: addition overflow'
            F_LUSD += 0 / totalLQTYStaked
            emit F_LUSDUpdated(((0 / totalLQTYStaked) + F_LUSD));
        else:
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not totalLQTYStaked:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * arg1 / totalLQTYStaked) + F_LUSD < F_LUSD:
                revert with 0, 'SafeMath: addition overflow'
            F_LUSD += 10^18 * arg1 / totalLQTYStaked
            emit F_LUSDUpdated(((10^18 * arg1 / totalLQTYStaked) + F_LUSD));
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4c5154595374616b696e673a20416d6f756e74206d757374206265206e6f6e2d7a6572,
                    mem[200 len 28]
    if not stakes[msg.sender]:
        snapshots[address(msg.sender)].field_0 = F_ETH
        snapshots[address(msg.sender)].field_256 = F_LUSD
        emit StakerSnapshotsUpdated(msg.sender, F_ETH, F_LUSD);
        if arg1 + stakes[msg.sender] < stakes[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        stakes[msg.sender] += arg1
        if arg1 + totalLQTYStaked < totalLQTYStaked:
            revert with 0, 'SafeMath: addition overflow'
        totalLQTYStaked += arg1
        emit TotalLQTYStakedUpdated((arg1 + totalLQTYStaked));
        require ext_code.size(lqtyTokenAddress)
        call lqtyTokenAddress.sendToLQTYStaking(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit StakeChanged((arg1 + stakes[msg.sender]), msg.sender);
        emit StakingGainsWithdrawn(address rg1, uint256 rg2, uint256 rg3):
                                   0,
                                   msg.sender,
        if stakes[msg.sender]:
            require ext_code.size(lusdTokenAddress)
            call lusdTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit EtherSent(msg.sender, 0);
            call msg.sender with:
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                mem[211 len 17]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                47,
                                0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                mem[ceil32(return_data.size) + 212 len 17]
            ('bool', 'ext_call.success')
    else:
        if snapshots[address(msg.sender)].field_0 > F_ETH:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakes[address(msg.sender)]:
            if snapshots[address(msg.sender)].field_256 > F_LUSD:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stakes[address(msg.sender)]:
                snapshots[address(msg.sender)].field_0 = F_ETH
                snapshots[address(msg.sender)].field_256 = F_LUSD
                emit StakerSnapshotsUpdated(msg.sender, F_ETH, F_LUSD);
                if arg1 + stakes[msg.sender] < stakes[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                stakes[msg.sender] += arg1
                if arg1 + totalLQTYStaked < totalLQTYStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalLQTYStaked += arg1
                emit TotalLQTYStakedUpdated((arg1 + totalLQTYStaked));
                require ext_code.size(lqtyTokenAddress)
                call lqtyTokenAddress.sendToLQTYStaking(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit StakeChanged((arg1 + stakes[msg.sender]), msg.sender);
                emit StakingGainsWithdrawn(address rg1, uint256 rg2, uint256 rg3):
                                           0,
                                           msg.sender,
                if stakes[msg.sender]:
                    require ext_code.size(lusdTokenAddress)
                    call lusdTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit EtherSent(msg.sender, 0);
                    call msg.sender with:
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        47,
                                        0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                        mem[467 len 17]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        47,
                                        0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                        mem[ceil32(return_data.size) + 468 len 17]
                    ('bool', 'ext_call.success')
            else:
                if (F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != F_LUSD - snapshots[address(msg.sender)].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                snapshots[address(msg.sender)].field_0 = F_ETH
                snapshots[address(msg.sender)].field_256 = F_LUSD
                emit StakerSnapshotsUpdated(msg.sender, F_ETH, F_LUSD);
                if arg1 + stakes[msg.sender] < stakes[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                stakes[msg.sender] += arg1
                if arg1 + totalLQTYStaked < totalLQTYStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalLQTYStaked += arg1
                emit TotalLQTYStakedUpdated((arg1 + totalLQTYStaked));
                require ext_code.size(lqtyTokenAddress)
                call lqtyTokenAddress.sendToLQTYStaking(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit StakeChanged((arg1 + stakes[msg.sender]), msg.sender);
                emit StakingGainsWithdrawn((F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18, 0, msg.sender);
                if stakes[msg.sender]:
                    require ext_code.size(lusdTokenAddress)
                    call lusdTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit EtherSent(msg.sender, 0);
                    call msg.sender with:
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        47,
                                        0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                        mem[467 len 17]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        47,
                                        0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                        mem[ceil32(return_data.size) + 468 len 17]
                    ('bool', 'ext_call.success')
        else:
            if (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != F_ETH - snapshots[address(msg.sender)].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if snapshots[address(msg.sender)].field_256 > F_LUSD:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stakes[address(msg.sender)]:
                snapshots[address(msg.sender)].field_0 = F_ETH
                snapshots[address(msg.sender)].field_256 = F_LUSD
                emit StakerSnapshotsUpdated(msg.sender, F_ETH, F_LUSD);
                if arg1 + stakes[msg.sender] < stakes[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                stakes[msg.sender] += arg1
                if arg1 + totalLQTYStaked < totalLQTYStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalLQTYStaked += arg1
                emit TotalLQTYStakedUpdated((arg1 + totalLQTYStaked));
                require ext_code.size(lqtyTokenAddress)
                call lqtyTokenAddress.sendToLQTYStaking(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit StakeChanged((arg1 + stakes[msg.sender]), msg.sender);
                emit StakingGainsWithdrawn(0, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18, msg.sender);
                if stakes[msg.sender]:
                    require ext_code.size(lusdTokenAddress)
                    call lusdTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit EtherSent(msg.sender, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18);
                    call msg.sender with:
                       value (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        47,
                                        0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                        mem[467 len 17]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        47,
                                        0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                        mem[ceil32(return_data.size) + 468 len 17]
                    ('bool', 'ext_call.success')
            else:
                if (F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != F_LUSD - snapshots[address(msg.sender)].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                snapshots[address(msg.sender)].field_0 = F_ETH
                snapshots[address(msg.sender)].field_256 = F_LUSD
                emit StakerSnapshotsUpdated(msg.sender, F_ETH, F_LUSD);
                if arg1 + stakes[msg.sender] < stakes[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                stakes[msg.sender] += arg1
                if arg1 + totalLQTYStaked < totalLQTYStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalLQTYStaked += arg1
                emit TotalLQTYStakedUpdated((arg1 + totalLQTYStaked));
                require ext_code.size(lqtyTokenAddress)
                call lqtyTokenAddress.sendToLQTYStaking(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit StakeChanged((arg1 + stakes[msg.sender]), msg.sender);
                emit StakingGainsWithdrawn((F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18, msg.sender);
                if stakes[msg.sender]:
                    require ext_code.size(lusdTokenAddress)
                    call lusdTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit EtherSent(msg.sender, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18);
                    call msg.sender with:
                       value (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        47,
                                        0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                        mem[467 len 17]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        47,
                                        0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                        mem[ceil32(return_data.size) + 468 len 17]
                    ('bool', 'ext_call.success')
}

function unstake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stakes[msg.sender] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6f4c5154595374616b696e673a2055736572206d75737420686176652061206e6f6e2d7a65726f207374616b,
                    mem[208 len 20]
    if snapshots[address(msg.sender)].field_0 > F_ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stakes[address(msg.sender)]:
        if snapshots[address(msg.sender)].field_256 > F_LUSD:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakes[address(msg.sender)]:
            snapshots[address(msg.sender)].field_0 = F_ETH
            snapshots[address(msg.sender)].field_256 = F_LUSD
            emit StakerSnapshotsUpdated(msg.sender, F_ETH, F_LUSD);
            if not arg1:
                emit StakingGainsWithdrawn(address rg1, uint256 rg2, uint256 rg3):
                                           0,
                                           msg.sender,
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit EtherSent(msg.sender, 0);
                call msg.sender with:
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[467 len 17]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[ceil32(return_data.size) + 468 len 17]
            else:
                if arg1 < stakes[msg.sender]:
                    if arg1 > stakes[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stakes[msg.sender] -= arg1
                    if arg1 > totalLQTYStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLQTYStaked -= arg1
                    emit TotalLQTYStakedUpdated((totalLQTYStaked - arg1));
                    require ext_code.size(lqtyTokenAddress)
                    call lqtyTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit StakeChanged((stakes[msg.sender] - arg1), msg.sender);
                else:
                    if stakes[msg.sender] > stakes[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stakes[msg.sender] = 0
                    if stakes[msg.sender] > totalLQTYStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLQTYStaked -= stakes[msg.sender]
                    emit TotalLQTYStakedUpdated((totalLQTYStaked - stakes[msg.sender]));
                    require ext_code.size(lqtyTokenAddress)
                    call lqtyTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stakes[msg.sender]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit StakeChanged(0, msg.sender);
                emit StakingGainsWithdrawn(address rg1, uint256 rg2, uint256 rg3):
                                           0,
                                           msg.sender,
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit EtherSent(msg.sender, 0);
                call msg.sender with:
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[595 len 17]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[ceil32(return_data.size) + 596 len 17]
        else:
            if (F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != F_LUSD - snapshots[address(msg.sender)].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            snapshots[address(msg.sender)].field_0 = F_ETH
            snapshots[address(msg.sender)].field_256 = F_LUSD
            emit StakerSnapshotsUpdated(msg.sender, F_ETH, F_LUSD);
            if not arg1:
                emit StakingGainsWithdrawn((F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18, 0, msg.sender);
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit EtherSent(msg.sender, 0);
                call msg.sender with:
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[467 len 17]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[ceil32(return_data.size) + 468 len 17]
            else:
                if arg1 < stakes[msg.sender]:
                    if arg1 > stakes[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stakes[msg.sender] -= arg1
                    if arg1 > totalLQTYStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLQTYStaked -= arg1
                    emit TotalLQTYStakedUpdated((totalLQTYStaked - arg1));
                    require ext_code.size(lqtyTokenAddress)
                    call lqtyTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit StakeChanged((stakes[msg.sender] - arg1), msg.sender);
                else:
                    if stakes[msg.sender] > stakes[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stakes[msg.sender] = 0
                    if stakes[msg.sender] > totalLQTYStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLQTYStaked -= stakes[msg.sender]
                    emit TotalLQTYStakedUpdated((totalLQTYStaked - stakes[msg.sender]));
                    require ext_code.size(lqtyTokenAddress)
                    call lqtyTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stakes[msg.sender]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit StakeChanged(0, msg.sender);
                emit StakingGainsWithdrawn((F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18, 0, msg.sender);
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit EtherSent(msg.sender, 0);
                call msg.sender with:
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[595 len 17]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[ceil32(return_data.size) + 596 len 17]
    else:
        if (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != F_ETH - snapshots[address(msg.sender)].field_0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if snapshots[address(msg.sender)].field_256 > F_LUSD:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakes[address(msg.sender)]:
            snapshots[address(msg.sender)].field_0 = F_ETH
            snapshots[address(msg.sender)].field_256 = F_LUSD
            emit StakerSnapshotsUpdated(msg.sender, F_ETH, F_LUSD);
            if not arg1:
                emit StakingGainsWithdrawn(0, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18, msg.sender);
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit EtherSent(msg.sender, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18);
                call msg.sender with:
                   value (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[467 len 17]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[ceil32(return_data.size) + 468 len 17]
            else:
                if arg1 < stakes[msg.sender]:
                    if arg1 > stakes[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stakes[msg.sender] -= arg1
                    if arg1 > totalLQTYStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLQTYStaked -= arg1
                    emit TotalLQTYStakedUpdated((totalLQTYStaked - arg1));
                    require ext_code.size(lqtyTokenAddress)
                    call lqtyTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit StakeChanged((stakes[msg.sender] - arg1), msg.sender);
                else:
                    if stakes[msg.sender] > stakes[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stakes[msg.sender] = 0
                    if stakes[msg.sender] > totalLQTYStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLQTYStaked -= stakes[msg.sender]
                    emit TotalLQTYStakedUpdated((totalLQTYStaked - stakes[msg.sender]));
                    require ext_code.size(lqtyTokenAddress)
                    call lqtyTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stakes[msg.sender]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit StakeChanged(0, msg.sender);
                emit StakingGainsWithdrawn(0, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18, msg.sender);
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit EtherSent(msg.sender, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18);
                call msg.sender with:
                   value (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[595 len 17]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[ceil32(return_data.size) + 596 len 17]
        else:
            if (F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != F_LUSD - snapshots[address(msg.sender)].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            snapshots[address(msg.sender)].field_0 = F_ETH
            snapshots[address(msg.sender)].field_256 = F_LUSD
            emit StakerSnapshotsUpdated(msg.sender, F_ETH, F_LUSD);
            if not arg1:
                emit StakingGainsWithdrawn((F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18, msg.sender);
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit EtherSent(msg.sender, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18);
                call msg.sender with:
                   value (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[467 len 17]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[ceil32(return_data.size) + 468 len 17]
            else:
                if arg1 < stakes[msg.sender]:
                    if arg1 > stakes[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stakes[msg.sender] -= arg1
                    if arg1 > totalLQTYStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLQTYStaked -= arg1
                    emit TotalLQTYStakedUpdated((totalLQTYStaked - arg1));
                    require ext_code.size(lqtyTokenAddress)
                    call lqtyTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit StakeChanged((stakes[msg.sender] - arg1), msg.sender);
                else:
                    if stakes[msg.sender] > stakes[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stakes[msg.sender] = 0
                    if stakes[msg.sender] > totalLQTYStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalLQTYStaked -= stakes[msg.sender]
                    emit TotalLQTYStakedUpdated((totalLQTYStaked - stakes[msg.sender]));
                    require ext_code.size(lqtyTokenAddress)
                    call lqtyTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stakes[msg.sender]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit StakeChanged(0, msg.sender);
                emit StakingGainsWithdrawn((F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18, msg.sender);
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (F_LUSD * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_256 * stakes[address(msg.sender)]) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit EtherSent(msg.sender, (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18);
                call msg.sender with:
                   value (F_ETH * stakes[address(msg.sender)]) - (snapshots[address(msg.sender)].field_0 * stakes[address(msg.sender)]) / 10^18 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[595 len 17]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x4d4c5154595374616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[ceil32(return_data.size) + 596 len 17]
    ('bool', 'ext_call.success')
}



}
