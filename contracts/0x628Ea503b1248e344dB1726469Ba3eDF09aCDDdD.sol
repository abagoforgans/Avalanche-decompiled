contract main {




// =====================  Runtime code  =====================


#
#  - recoverToken(address arg1, uint256 arg2)
#
const MAXIMUS = 0x964ddc3f274e425c6f257c046161f956d8fa2652


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
array of address stor101;
mapping of struct vaultInfoOf;
mapping of struct vaultUserInfoOf;
address minterAddress;
uint256 startTimestamp;
uint256 sub_4762a152;
uint256 totalAllocPoint;
array of address stor65121483548824993324859576973500511702880785110129058561322659104044632942535;

function minter() payable {
    return minterAddress
}

function vaultUserInfoOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return vaultUserInfoOf[address(arg1)][address(arg2)].field_0, 
           vaultUserInfoOf[address(arg1)][address(arg2)].field_256,
           vaultUserInfoOf[address(arg1)][address(arg2)].field_512
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_4762a152(?) payable {
    return sub_4762a152
}

function owner() payable {
    return owner
}

function vaultInfoOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return vaultInfoOf[address(arg1)].field_0, 
           vaultInfoOf[address(arg1)].field_256,
           vaultInfoOf[address(arg1)].field_512,
           vaultInfoOf[address(arg1)].field_768
}

function startTimestamp() payable {
    return startTimestamp
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function timeMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (arg2 - arg1)
}

function setMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if minterAddress:
        revert with 0, 'MaximusChef: setMinter only once'
    minterAddress = arg1
}

function tokenSupplyOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        startTimestamp = 452390 * 3600
        sub_4762a152 = 10^17
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            startTimestamp = 452390 * 3600
            sub_4762a152 = 10^17
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                startTimestamp = 452390 * 3600
                sub_4762a152 = 10^17
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    startTimestamp = 452390 * 3600
                    sub_4762a152 = 10^17
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        startTimestamp = 452390 * 3600
                        sub_4762a152 = 10^17
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        startTimestamp = 452390 * 3600
                        sub_4762a152 = 10^17
                        uint8(stor0.field_8) = 0
}

function updateRewardsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp > vaultInfoOf[address(arg1)].field_512:
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if vaultInfoOf[address(arg1)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - vaultInfoOf[address(arg1)].field_512:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[address(arg1)].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[address(arg1)].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.timestamp * sub_4762a152) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152) / block.timestamp - vaultInfoOf[address(arg1)].field_512 != sub_4762a152:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_4762a152) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[address(arg1)].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[address(arg1)].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / (block.timestamp * sub_4762a152) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152) != vaultInfoOf[address(arg1)].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[address(arg1)].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint / (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[address(arg1)].field_768 += 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]
        vaultInfoOf[address(arg1)].field_512 = block.timestamp
}

function notifyWithdrawn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not vaultInfoOf[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MaximusChef: caller is not on the vault'
    if block.timestamp <= vaultInfoOf[msg.sender].field_512:
        if not vaultUserInfoOf[msg.sender][address(arg1)].field_0:
            if vaultUserInfoOf[msg.sender][address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256 < vaultUserInfoOf[msg.sender][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            vaultUserInfoOf[msg.sender][address(arg1)].field_256 -= vaultUserInfoOf[msg.sender][address(arg1)].field_512
        else:
            if vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / vaultUserInfoOf[msg.sender][address(arg1)].field_0 != vaultInfoOf[msg.sender].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if vaultUserInfoOf[msg.sender][address(arg1)].field_512 > vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256 < vaultUserInfoOf[msg.sender][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            vaultUserInfoOf[msg.sender][address(arg1)].field_256 = (vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256
    else:
        require ext_code.size(msg.sender)
        staticcall msg.sender.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if vaultInfoOf[msg.sender].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - vaultInfoOf[msg.sender].field_512:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[msg.sender].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[msg.sender].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.timestamp * sub_4762a152) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152) / block.timestamp - vaultInfoOf[msg.sender].field_512 != sub_4762a152:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_4762a152) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / (block.timestamp * sub_4762a152) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152) != vaultInfoOf[msg.sender].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint / (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint / ext_call.return_data[0]
        vaultInfoOf[msg.sender].field_512 = block.timestamp
        if not vaultUserInfoOf[msg.sender][address(arg1)].field_0:
            if vaultUserInfoOf[msg.sender][address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256 < vaultUserInfoOf[msg.sender][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            vaultUserInfoOf[msg.sender][address(arg1)].field_256 -= vaultUserInfoOf[msg.sender][address(arg1)].field_512
        else:
            if vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / vaultUserInfoOf[msg.sender][address(arg1)].field_0 != vaultInfoOf[msg.sender].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if vaultUserInfoOf[msg.sender][address(arg1)].field_512 > vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256 < vaultUserInfoOf[msg.sender][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            vaultUserInfoOf[msg.sender][address(arg1)].field_256 = (vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256
    if arg2 > vaultUserInfoOf[msg.sender][address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow', 0
    vaultUserInfoOf[msg.sender][address(arg1)].field_0 -= arg2
    if not vaultUserInfoOf[msg.sender][address(arg1)].field_0 - arg2:
        vaultUserInfoOf[msg.sender][address(arg1)].field_512 = 0
    else:
        if (vaultUserInfoOf[msg.sender][address(arg1)].field_0 * vaultInfoOf[msg.sender].field_768) - (arg2 * vaultInfoOf[msg.sender].field_768) / vaultUserInfoOf[msg.sender][address(arg1)].field_0 - arg2 != vaultInfoOf[msg.sender].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        vaultUserInfoOf[msg.sender][address(arg1)].field_512 = (vaultUserInfoOf[msg.sender][address(arg1)].field_0 * vaultInfoOf[msg.sender].field_768) - (arg2 * vaultInfoOf[msg.sender].field_768) / 10^12
    emit NotifyWithdrawn(arg2, arg1, msg.sender);
}

function notifyDeposited(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not vaultInfoOf[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MaximusChef: caller is not on the vault'
    if block.timestamp <= vaultInfoOf[msg.sender].field_512:
        if not vaultUserInfoOf[msg.sender][address(arg1)].field_0:
            if vaultUserInfoOf[msg.sender][address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256 < vaultUserInfoOf[msg.sender][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            vaultUserInfoOf[msg.sender][address(arg1)].field_256 -= vaultUserInfoOf[msg.sender][address(arg1)].field_512
        else:
            if vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / vaultUserInfoOf[msg.sender][address(arg1)].field_0 != vaultInfoOf[msg.sender].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if vaultUserInfoOf[msg.sender][address(arg1)].field_512 > vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256 < vaultUserInfoOf[msg.sender][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            vaultUserInfoOf[msg.sender][address(arg1)].field_256 = (vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256
    else:
        require ext_code.size(msg.sender)
        staticcall msg.sender.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if vaultInfoOf[msg.sender].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - vaultInfoOf[msg.sender].field_512:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[msg.sender].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[msg.sender].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.timestamp * sub_4762a152) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152) / block.timestamp - vaultInfoOf[msg.sender].field_512 != sub_4762a152:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_4762a152) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / (block.timestamp * sub_4762a152) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152) != vaultInfoOf[msg.sender].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint / (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint / ext_call.return_data[0]
        vaultInfoOf[msg.sender].field_512 = block.timestamp
        if not vaultUserInfoOf[msg.sender][address(arg1)].field_0:
            if vaultUserInfoOf[msg.sender][address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256 < vaultUserInfoOf[msg.sender][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            vaultUserInfoOf[msg.sender][address(arg1)].field_256 -= vaultUserInfoOf[msg.sender][address(arg1)].field_512
        else:
            if vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / vaultUserInfoOf[msg.sender][address(arg1)].field_0 != vaultInfoOf[msg.sender].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if vaultUserInfoOf[msg.sender][address(arg1)].field_512 > vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256 < vaultUserInfoOf[msg.sender][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            vaultUserInfoOf[msg.sender][address(arg1)].field_256 = (vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256
    if arg2 + vaultUserInfoOf[msg.sender][address(arg1)].field_0 < vaultUserInfoOf[msg.sender][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    vaultUserInfoOf[msg.sender][address(arg1)].field_0 += arg2
    if not arg2 + vaultUserInfoOf[msg.sender][address(arg1)].field_0:
        vaultUserInfoOf[msg.sender][address(arg1)].field_512 = 0
    else:
        if (arg2 * vaultInfoOf[msg.sender].field_768) + (vaultUserInfoOf[msg.sender][address(arg1)].field_0 * vaultInfoOf[msg.sender].field_768) / arg2 + vaultUserInfoOf[msg.sender][address(arg1)].field_0 != vaultInfoOf[msg.sender].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        vaultUserInfoOf[msg.sender][address(arg1)].field_512 = (arg2 * vaultInfoOf[msg.sender].field_768) + (vaultUserInfoOf[msg.sender][address(arg1)].field_0 * vaultInfoOf[msg.sender].field_768) / 10^12
    emit NotifyDeposited(arg2, arg1, msg.sender);
}

function bulkUpdateRewards() payable {
    mem[64] = 96
    idx = 0
    while idx < stor101.length:
        mem[0] = 101
        if not stor101[idx]:
            idx = idx + 1
            continue 
        require idx < stor101.length
        mem[0] = stor101[idx]
        mem[32] = 102
        if not vaultInfoOf[stor101[idx]].field_0:
            idx = idx + 1
            continue 
        require idx < stor101.length
        mem[0] = stor101[idx]
        mem[32] = 102
        if block.timestamp <= vaultInfoOf[stor101[idx]].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(stor101[idx])
        staticcall stor101[idx].0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _100 = mem[_99]
        if not mem[_99]:
            vaultInfoOf[stor101[idx]].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _101 = mem[64]
        mem[64] = mem[64] + 64
        mem[_101] = 30
        mem[_101 + 32] = 'SafeMath: subtraction overflow'
        if vaultInfoOf[stor101[idx]].field_512 > block.timestamp:
            _102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _102 + 68] = mem[idx + _101 + 32]
                idx = idx + 32
                continue 
            mem[_102 + 98] = 0
            revert with memory
              from mem[64]
               len _102 + -mem[64] + 100
        if not block.timestamp - vaultInfoOf[stor101[idx]].field_512:
            _110 = mem[64]
            mem[64] = mem[64] + 64
            mem[_110] = 26
            mem[_110 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _114 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _114 + 68] = mem[idx + _110 + 32]
                    idx = idx + 32
                    continue 
                mem[_114 + 94] = 0
                revert with memory
                  from mem[64]
                   len _114 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_127] = 26
                mem[_127 + 32] = 'SafeMath: division by zero'
                if _100:
                    if (0 / _100) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[stor101[idx]].field_768 += 0 / _100
                    vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _139 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _139 + 68] = mem[idx + _127 + 32]
                    idx = idx + 32
                    continue 
                mem[_139 + 94] = 0
                revert with memory
                  from mem[64]
                   len _139 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            if _100:
                if (10^12 * 0 / totalAllocPoint / _100) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 10^12 * 0 / totalAllocPoint / _100
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _143 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _143 + 68] = mem[idx + _133 + 32]
                idx = idx + 32
                continue 
            mem[_143 + 94] = 0
            revert with memory
              from mem[64]
               len _143 + -mem[64] + 100
        if (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152) / block.timestamp - vaultInfoOf[stor101[idx]].field_512 != sub_4762a152:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152):
            _111 = mem[64]
            mem[64] = mem[64] + 64
            mem[_111] = 26
            mem[_111 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _115 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _115 + 68] = mem[idx + _111 + 32]
                    idx = idx + 32
                    continue 
                mem[_115 + 94] = 0
                revert with memory
                  from mem[64]
                   len _115 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 26
                mem[_131 + 32] = 'SafeMath: division by zero'
                if _100:
                    if (0 / _100) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[stor101[idx]].field_768 += 0 / _100
                    vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _142 + 68] = mem[idx + _131 + 32]
                    idx = idx + 32
                    continue 
                mem[_142 + 94] = 0
                revert with memory
                  from mem[64]
                   len _142 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 26
            mem[_137 + 32] = 'SafeMath: division by zero'
            if _100:
                if (10^12 * 0 / totalAllocPoint / _100) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 10^12 * 0 / totalAllocPoint / _100
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _146 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _146 + 68] = mem[idx + _137 + 32]
                idx = idx + 32
                continue 
            mem[_146 + 94] = 0
            revert with memory
              from mem[64]
               len _146 + -mem[64] + 100
        if (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152) != vaultInfoOf[stor101[idx]].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _112 = mem[64]
        mem[64] = mem[64] + 64
        mem[_112] = 26
        mem[_112 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _117 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _117 + 68] = mem[idx + _112 + 32]
                idx = idx + 32
                continue 
            mem[_117 + 94] = 0
            revert with memory
              from mem[64]
               len _117 + -mem[64] + 100
        if not (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint:
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 26
            mem[_135 + 32] = 'SafeMath: division by zero'
            if _100:
                if (0 / _100) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 0 / _100
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _145 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _145 + 68] = mem[idx + _135 + 32]
                idx = idx + 32
                continue 
            mem[_145 + 94] = 0
            revert with memory
              from mem[64]
               len _145 + -mem[64] + 100
        if 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _140 = mem[64]
        mem[64] = mem[64] + 64
        mem[_140] = 26
        mem[_140 + 32] = 'SafeMath: division by zero'
        if _100:
            if (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / _100) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                revert with 0, 'SafeMath: addition overflow'
            vaultInfoOf[stor101[idx]].field_768 += 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / _100
            vaultInfoOf[stor101[idx]].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _149 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _149 + 68] = mem[idx + _140 + 32]
            idx = idx + 32
            continue 
        mem[_149 + 94] = 0
        revert with memory
          from mem[64]
           len _149 + -mem[64] + 100
}

function sub_0a95d8ce(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor101.length:
        mem[0] = 101
        if not stor101[idx]:
            idx = idx + 1
            continue 
        require idx < stor101.length
        mem[0] = stor101[idx]
        mem[32] = 102
        if not vaultInfoOf[stor101[idx]].field_0:
            idx = idx + 1
            continue 
        require idx < stor101.length
        mem[0] = stor101[idx]
        mem[32] = 102
        if block.timestamp <= vaultInfoOf[stor101[idx]].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(stor101[idx])
        staticcall stor101[idx].0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _101 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _102 = mem[_101]
        if not mem[_101]:
            vaultInfoOf[stor101[idx]].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _103 = mem[64]
        mem[64] = mem[64] + 64
        mem[_103] = 30
        mem[_103 + 32] = 'SafeMath: subtraction overflow'
        if vaultInfoOf[stor101[idx]].field_512 > block.timestamp:
            _104 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _104 + 68] = mem[idx + _103 + 32]
                idx = idx + 32
                continue 
            mem[_104 + 98] = 0
            revert with memory
              from mem[64]
               len _104 + -mem[64] + 100
        if not block.timestamp - vaultInfoOf[stor101[idx]].field_512:
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 26
            mem[_112 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _116 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _116 + 68] = mem[idx + _112 + 32]
                    idx = idx + 32
                    continue 
                mem[_116 + 94] = 0
                revert with memory
                  from mem[64]
                   len _116 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_129] = 26
                mem[_129 + 32] = 'SafeMath: division by zero'
                if _102:
                    if (0 / _102) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[stor101[idx]].field_768 += 0 / _102
                    vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _141 + 68] = mem[idx + _129 + 32]
                    idx = idx + 32
                    continue 
                mem[_141 + 94] = 0
                revert with memory
                  from mem[64]
                   len _141 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 26
            mem[_135 + 32] = 'SafeMath: division by zero'
            if _102:
                if (10^12 * 0 / totalAllocPoint / _102) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 10^12 * 0 / totalAllocPoint / _102
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _145 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _145 + 68] = mem[idx + _135 + 32]
                idx = idx + 32
                continue 
            mem[_145 + 94] = 0
            revert with memory
              from mem[64]
               len _145 + -mem[64] + 100
        if (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152) / block.timestamp - vaultInfoOf[stor101[idx]].field_512 != sub_4762a152:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152):
            _113 = mem[64]
            mem[64] = mem[64] + 64
            mem[_113] = 26
            mem[_113 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _117 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _117 + 68] = mem[idx + _113 + 32]
                    idx = idx + 32
                    continue 
                mem[_117 + 94] = 0
                revert with memory
                  from mem[64]
                   len _117 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 26
                mem[_133 + 32] = 'SafeMath: division by zero'
                if _102:
                    if (0 / _102) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[stor101[idx]].field_768 += 0 / _102
                    vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _144 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _144 + 68] = mem[idx + _133 + 32]
                    idx = idx + 32
                    continue 
                mem[_144 + 94] = 0
                revert with memory
                  from mem[64]
                   len _144 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _139 = mem[64]
            mem[64] = mem[64] + 64
            mem[_139] = 26
            mem[_139 + 32] = 'SafeMath: division by zero'
            if _102:
                if (10^12 * 0 / totalAllocPoint / _102) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 10^12 * 0 / totalAllocPoint / _102
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _148 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _148 + 68] = mem[idx + _139 + 32]
                idx = idx + 32
                continue 
            mem[_148 + 94] = 0
            revert with memory
              from mem[64]
               len _148 + -mem[64] + 100
        if (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152) != vaultInfoOf[stor101[idx]].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _114 = mem[64]
        mem[64] = mem[64] + 64
        mem[_114] = 26
        mem[_114 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _119 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _119 + 68] = mem[idx + _114 + 32]
                idx = idx + 32
                continue 
            mem[_119 + 94] = 0
            revert with memory
              from mem[64]
               len _119 + -mem[64] + 100
        if not (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint:
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 26
            mem[_137 + 32] = 'SafeMath: division by zero'
            if _102:
                if (0 / _102) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 0 / _102
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _147 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _147 + 68] = mem[idx + _137 + 32]
                idx = idx + 32
                continue 
            mem[_147 + 94] = 0
            revert with memory
              from mem[64]
               len _147 + -mem[64] + 100
        if 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _142 = mem[64]
        mem[64] = mem[64] + 64
        mem[_142] = 26
        mem[_142 + 32] = 'SafeMath: division by zero'
        if _102:
            if (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / _102) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                revert with 0, 'SafeMath: addition overflow'
            vaultInfoOf[stor101[idx]].field_768 += 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / _102
            vaultInfoOf[stor101[idx]].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _151 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _151 + 68] = mem[idx + _142 + 32]
            idx = idx + 32
            continue 
        mem[_151 + 94] = 0
        revert with memory
          from mem[64]
           len _151 + -mem[64] + 100
    sub_4762a152 = arg1
}

function updateVault(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg1
    mem[32] = 102
    if not vaultInfoOf[address(arg1)].field_0:
        revert with 0, 'MaximusChef: vault must be set'
    idx = 0
    while idx < stor101.length:
        mem[0] = 101
        if not stor101[idx]:
            idx = idx + 1
            continue 
        require idx < stor101.length
        mem[0] = stor101[idx]
        mem[32] = 102
        if not vaultInfoOf[stor101[idx]].field_0:
            idx = idx + 1
            continue 
        require idx < stor101.length
        mem[0] = stor101[idx]
        mem[32] = 102
        if block.timestamp <= vaultInfoOf[stor101[idx]].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(stor101[idx])
        staticcall stor101[idx].0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _124 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _127 = mem[_124]
        if not mem[_124]:
            vaultInfoOf[stor101[idx]].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _128 = mem[64]
        mem[64] = mem[64] + 64
        mem[_128] = 30
        mem[_128 + 32] = 'SafeMath: subtraction overflow'
        if vaultInfoOf[stor101[idx]].field_512 > block.timestamp:
            _129 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _129 + 68] = mem[idx + _128 + 32]
                idx = idx + 32
                continue 
            mem[_129 + 98] = 0
            revert with memory
              from mem[64]
               len _129 + -mem[64] + 100
        if not block.timestamp - vaultInfoOf[stor101[idx]].field_512:
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 26
            mem[_137 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _141 + 68] = mem[idx + _137 + 32]
                    idx = idx + 32
                    continue 
                mem[_141 + 94] = 0
                revert with memory
                  from mem[64]
                   len _141 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _154 = mem[64]
                mem[64] = mem[64] + 64
                mem[_154] = 26
                mem[_154 + 32] = 'SafeMath: division by zero'
                if _127:
                    if (0 / _127) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[stor101[idx]].field_768 += 0 / _127
                    vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _166 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _166 + 68] = mem[idx + _154 + 32]
                    idx = idx + 32
                    continue 
                mem[_166 + 94] = 0
                revert with memory
                  from mem[64]
                   len _166 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _160 = mem[64]
            mem[64] = mem[64] + 64
            mem[_160] = 26
            mem[_160 + 32] = 'SafeMath: division by zero'
            if _127:
                if (10^12 * 0 / totalAllocPoint / _127) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 10^12 * 0 / totalAllocPoint / _127
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _170 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _170 + 68] = mem[idx + _160 + 32]
                idx = idx + 32
                continue 
            mem[_170 + 94] = 0
            revert with memory
              from mem[64]
               len _170 + -mem[64] + 100
        if (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152) / block.timestamp - vaultInfoOf[stor101[idx]].field_512 != sub_4762a152:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152):
            _138 = mem[64]
            mem[64] = mem[64] + 64
            mem[_138] = 26
            mem[_138 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _142 + 68] = mem[idx + _138 + 32]
                    idx = idx + 32
                    continue 
                mem[_142 + 94] = 0
                revert with memory
                  from mem[64]
                   len _142 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _158 = mem[64]
                mem[64] = mem[64] + 64
                mem[_158] = 26
                mem[_158 + 32] = 'SafeMath: division by zero'
                if _127:
                    if (0 / _127) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[stor101[idx]].field_768 += 0 / _127
                    vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _169 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _169 + 68] = mem[idx + _158 + 32]
                    idx = idx + 32
                    continue 
                mem[_169 + 94] = 0
                revert with memory
                  from mem[64]
                   len _169 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _164 = mem[64]
            mem[64] = mem[64] + 64
            mem[_164] = 26
            mem[_164 + 32] = 'SafeMath: division by zero'
            if _127:
                if (10^12 * 0 / totalAllocPoint / _127) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 10^12 * 0 / totalAllocPoint / _127
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _173 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _173 + 68] = mem[idx + _164 + 32]
                idx = idx + 32
                continue 
            mem[_173 + 94] = 0
            revert with memory
              from mem[64]
               len _173 + -mem[64] + 100
        if (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152) != vaultInfoOf[stor101[idx]].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _139 = mem[64]
        mem[64] = mem[64] + 64
        mem[_139] = 26
        mem[_139 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _144 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _144 + 68] = mem[idx + _139 + 32]
                idx = idx + 32
                continue 
            mem[_144 + 94] = 0
            revert with memory
              from mem[64]
               len _144 + -mem[64] + 100
        if not (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint:
            _162 = mem[64]
            mem[64] = mem[64] + 64
            mem[_162] = 26
            mem[_162 + 32] = 'SafeMath: division by zero'
            if _127:
                if (0 / _127) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 0 / _127
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _172 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _172 + 68] = mem[idx + _162 + 32]
                idx = idx + 32
                continue 
            mem[_172 + 94] = 0
            revert with memory
              from mem[64]
               len _172 + -mem[64] + 100
        if 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _167 = mem[64]
        mem[64] = mem[64] + 64
        mem[_167] = 26
        mem[_167 + 32] = 'SafeMath: division by zero'
        if _127:
            if (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / _127) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                revert with 0, 'SafeMath: addition overflow'
            vaultInfoOf[stor101[idx]].field_768 += 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / _127
            vaultInfoOf[stor101[idx]].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _176 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _176 + 68] = mem[idx + _167 + 32]
            idx = idx + 32
            continue 
        mem[_176 + 94] = 0
        revert with memory
          from mem[64]
           len _176 + -mem[64] + 100
    if vaultInfoOf[address(arg1)].field_256 != arg2:
        if vaultInfoOf[address(arg1)].field_256 > totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint = arg2 + totalAllocPoint - vaultInfoOf[address(arg1)].field_256
    vaultInfoOf[address(arg1)].field_256 = arg2
}

function addVault(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg1
    mem[32] = 102
    if vaultInfoOf[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MaximusChef: vault is already set'
    idx = 0
    while idx < stor101.length:
        mem[0] = 101
        if not stor101[idx]:
            idx = idx + 1
            continue 
        require idx < stor101.length
        mem[0] = stor101[idx]
        mem[32] = 102
        if not vaultInfoOf[stor101[idx]].field_0:
            idx = idx + 1
            continue 
        require idx < stor101.length
        mem[0] = stor101[idx]
        mem[32] = 102
        if block.timestamp <= vaultInfoOf[stor101[idx]].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(stor101[idx])
        staticcall stor101[idx].0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _136 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _137 = mem[_136]
        if not mem[_136]:
            vaultInfoOf[stor101[idx]].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _138 = mem[64]
        mem[64] = mem[64] + 64
        mem[_138] = 30
        mem[_138 + 32] = 'SafeMath: subtraction overflow'
        if vaultInfoOf[stor101[idx]].field_512 > block.timestamp:
            _139 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _139 + 68] = mem[idx + _138 + 32]
                idx = idx + 32
                continue 
            mem[_139 + 98] = 0
            revert with memory
              from mem[64]
               len _139 + -mem[64] + 100
        if not block.timestamp - vaultInfoOf[stor101[idx]].field_512:
            _147 = mem[64]
            mem[64] = mem[64] + 64
            mem[_147] = 26
            mem[_147 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _151 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _151 + 68] = mem[idx + _147 + 32]
                    idx = idx + 32
                    continue 
                mem[_151 + 94] = 0
                revert with memory
                  from mem[64]
                   len _151 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_164] = 26
                mem[_164 + 32] = 'SafeMath: division by zero'
                if _137:
                    if (0 / _137) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[stor101[idx]].field_768 += 0 / _137
                    vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _176 + 68] = mem[idx + _164 + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 94] = 0
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _170 = mem[64]
            mem[64] = mem[64] + 64
            mem[_170] = 26
            mem[_170 + 32] = 'SafeMath: division by zero'
            if _137:
                if (10^12 * 0 / totalAllocPoint / _137) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 10^12 * 0 / totalAllocPoint / _137
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _180 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _180 + 68] = mem[idx + _170 + 32]
                idx = idx + 32
                continue 
            mem[_180 + 94] = 0
            revert with memory
              from mem[64]
               len _180 + -mem[64] + 100
        if (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152) / block.timestamp - vaultInfoOf[stor101[idx]].field_512 != sub_4762a152:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152):
            _148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_148] = 26
            mem[_148 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _152 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _152 + 68] = mem[idx + _148 + 32]
                    idx = idx + 32
                    continue 
                mem[_152 + 94] = 0
                revert with memory
                  from mem[64]
                   len _152 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_168] = 26
                mem[_168 + 32] = 'SafeMath: division by zero'
                if _137:
                    if (0 / _137) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[stor101[idx]].field_768 += 0 / _137
                    vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _179 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _179 + 68] = mem[idx + _168 + 32]
                    idx = idx + 32
                    continue 
                mem[_179 + 94] = 0
                revert with memory
                  from mem[64]
                   len _179 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 26
            mem[_174 + 32] = 'SafeMath: division by zero'
            if _137:
                if (10^12 * 0 / totalAllocPoint / _137) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 10^12 * 0 / totalAllocPoint / _137
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _183 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _183 + 68] = mem[idx + _174 + 32]
                idx = idx + 32
                continue 
            mem[_183 + 94] = 0
            revert with memory
              from mem[64]
               len _183 + -mem[64] + 100
        if (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / (block.timestamp * sub_4762a152) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152) != vaultInfoOf[stor101[idx]].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _149 = mem[64]
        mem[64] = mem[64] + 64
        mem[_149] = 26
        mem[_149 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _154 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _154 + 68] = mem[idx + _149 + 32]
                idx = idx + 32
                continue 
            mem[_154 + 94] = 0
            revert with memory
              from mem[64]
               len _154 + -mem[64] + 100
        if not (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint:
            _172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_172] = 26
            mem[_172 + 32] = 'SafeMath: division by zero'
            if _137:
                if (0 / _137) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                vaultInfoOf[stor101[idx]].field_768 += 0 / _137
                vaultInfoOf[stor101[idx]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _182 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _182 + 68] = mem[idx + _172 + 32]
                idx = idx + 32
                continue 
            mem[_182 + 94] = 0
            revert with memory
              from mem[64]
               len _182 + -mem[64] + 100
        if 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _177 = mem[64]
        mem[64] = mem[64] + 64
        mem[_177] = 26
        mem[_177 + 32] = 'SafeMath: division by zero'
        if _137:
            if (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / _137) + vaultInfoOf[stor101[idx]].field_768 < vaultInfoOf[stor101[idx]].field_768:
                revert with 0, 'SafeMath: addition overflow'
            vaultInfoOf[stor101[idx]].field_768 += 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) - (vaultInfoOf[stor101[idx]].field_512 * sub_4762a152 * vaultInfoOf[stor101[idx]].field_256) / totalAllocPoint / _137
            vaultInfoOf[stor101[idx]].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _186 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _186 + 68] = mem[idx + _177 + 32]
            idx = idx + 32
            continue 
        mem[_186 + 94] = 0
        revert with memory
          from mem[64]
           len _186 + -mem[64] + 100
    if arg3 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg3
    vaultInfoOf[address(arg1)].field_0 = arg2
    vaultInfoOf[address(arg1)].field_256 = arg3
    if block.timestamp > startTimestamp:
        vaultInfoOf[address(arg1)].field_512 = block.timestamp
    else:
        vaultInfoOf[address(arg1)].field_512 = startTimestamp
    vaultInfoOf[address(arg1)].field_768 = 0
    stor101.length++
    stor8FF9[stor101.length] = arg1
}

function sub_305212ea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not vaultInfoOf[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MaximusChef: caller is not on the vault'
    if block.timestamp <= vaultInfoOf[msg.sender].field_512:
        if not vaultUserInfoOf[msg.sender][address(arg1)].field_0:
            if vaultUserInfoOf[msg.sender][address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256 < vaultUserInfoOf[msg.sender][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            vaultUserInfoOf[msg.sender][address(arg1)].field_256 = 0
            if not vaultUserInfoOf[msg.sender][address(arg1)].field_0:
                vaultUserInfoOf[msg.sender][address(arg1)].field_512 = 0
            else:
                if vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / vaultUserInfoOf[msg.sender][address(arg1)].field_0 != vaultInfoOf[msg.sender].field_768:
                    revert with 0, 'SafeMath: multiplication overflow'
                vaultUserInfoOf[msg.sender][address(arg1)].field_512 = vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12
            require ext_code.size(minterAddress)
            call minterAddress.0xa0712d68 with:
                 gas gas_remaining wei
                args (-vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(minterAddress)
            call minterAddress.0x4033e09a with:
                 gas gas_remaining wei
                args address(arg1), -vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x8916b783: (-vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256), address(arg1), msg.sender
            return (-vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256)
        if vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / vaultUserInfoOf[msg.sender][address(arg1)].field_0 != vaultInfoOf[msg.sender].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    else:
        require ext_code.size(msg.sender)
        staticcall msg.sender.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if vaultInfoOf[msg.sender].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - vaultInfoOf[msg.sender].field_512:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[msg.sender].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    vaultInfoOf[msg.sender].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.timestamp * sub_4762a152) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152) / block.timestamp - vaultInfoOf[msg.sender].field_512 != sub_4762a152:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_4762a152) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / (block.timestamp * sub_4762a152) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152) != vaultInfoOf[msg.sender].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint / (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[msg.sender].field_768 < vaultInfoOf[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        vaultInfoOf[msg.sender].field_768 += 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[msg.sender].field_256) - (vaultInfoOf[msg.sender].field_512 * sub_4762a152 * vaultInfoOf[msg.sender].field_256) / totalAllocPoint / ext_call.return_data[0]
        vaultInfoOf[msg.sender].field_512 = block.timestamp
        if not vaultUserInfoOf[msg.sender][address(arg1)].field_0:
            if vaultUserInfoOf[msg.sender][address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256 < vaultUserInfoOf[msg.sender][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            vaultUserInfoOf[msg.sender][address(arg1)].field_256 = 0
            if not vaultUserInfoOf[msg.sender][address(arg1)].field_0:
                vaultUserInfoOf[msg.sender][address(arg1)].field_512 = 0
            else:
                if vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / vaultUserInfoOf[msg.sender][address(arg1)].field_0 != vaultInfoOf[msg.sender].field_768:
                    revert with 0, 'SafeMath: multiplication overflow'
                vaultUserInfoOf[msg.sender][address(arg1)].field_512 = vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12
            require ext_code.size(minterAddress)
            call minterAddress.0xa0712d68 with:
                 gas gas_remaining wei
                args (-vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(minterAddress)
            call minterAddress.0x4033e09a with:
                 gas gas_remaining wei
                args address(arg1), -vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x8916b783: (-vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256), address(arg1), msg.sender
            return (-vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256)
        if vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / vaultUserInfoOf[msg.sender][address(arg1)].field_0 != vaultInfoOf[msg.sender].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
    ('eq', ('div', ('mul', ('field', 768, ('stor', ('map', 'msg.sender', ('name', 'vaultInfoOf', 102)))), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'vaultUserInfoOf', 103)))))), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'vaultUserInfoOf', 103)))))), ('field', 768, ('stor', ('map', 'msg.sender', ('name', 'vaultInfoOf', 102)))))
    if vaultUserInfoOf[msg.sender][address(arg1)].field_512 > vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256 < vaultUserInfoOf[msg.sender][address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    vaultUserInfoOf[msg.sender][address(arg1)].field_256 = 0
    if not vaultUserInfoOf[msg.sender][address(arg1)].field_0:
        vaultUserInfoOf[msg.sender][address(arg1)].field_512 = 0
    else:
        if vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / vaultUserInfoOf[msg.sender][address(arg1)].field_0 != vaultInfoOf[msg.sender].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        vaultUserInfoOf[msg.sender][address(arg1)].field_512 = vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12
    require ext_code.size(minterAddress)
    call minterAddress.0xa0712d68 with:
         gas gas_remaining wei
        args ((vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(minterAddress)
    call minterAddress.0x4033e09a with:
         gas gas_remaining wei
        args address(arg1), (vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8916b783: ((vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256), address(arg1), msg.sender
    return ((vaultInfoOf[msg.sender].field_768 * vaultUserInfoOf[msg.sender][address(arg1)].field_0 / 10^12) - vaultUserInfoOf[msg.sender][address(arg1)].field_512 + vaultUserInfoOf[msg.sender][address(arg1)].field_256)
}

function sub_4fabe169(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= vaultInfoOf[address(arg1)].field_512:
        if not vaultUserInfoOf[address(arg1)][address(arg2)].field_0:
            if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
        if vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0 / vaultUserInfoOf[address(arg1)][address(arg2)].field_0 != vaultInfoOf[address(arg1)].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0 / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return ((vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0 / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
    if ext_call.return_data[0] <= 0:
        if not vaultUserInfoOf[address(arg1)][address(arg2)].field_0:
            if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
        if vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0 / vaultUserInfoOf[address(arg1)][address(arg2)].field_0 != vaultInfoOf[address(arg1)].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0 / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return ((vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0 / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
    if vaultInfoOf[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.timestamp - vaultInfoOf[address(arg1)].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not vaultUserInfoOf[address(arg1)][address(arg2)].field_0:
                if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / vaultUserInfoOf[address(arg1)][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > (0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ((0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not vaultUserInfoOf[address(arg1)][address(arg2)].field_0:
            if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / vaultUserInfoOf[address(arg1)][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
    if (block.timestamp * sub_4762a152) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152) / block.timestamp - vaultInfoOf[address(arg1)].field_512 != sub_4762a152:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.timestamp * sub_4762a152) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not vaultUserInfoOf[address(arg1)][address(arg2)].field_0:
                if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / vaultUserInfoOf[address(arg1)][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > (0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ((0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not vaultUserInfoOf[address(arg1)][address(arg2)].field_0:
            if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / vaultUserInfoOf[address(arg1)][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
    if (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / (block.timestamp * sub_4762a152) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152) != vaultInfoOf[address(arg1)].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero', 0
    if not (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not vaultUserInfoOf[address(arg1)][address(arg2)].field_0:
            if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
        if (0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / vaultUserInfoOf[address(arg1)][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > (0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ((0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
    if 10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint / (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768 < vaultInfoOf[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not vaultUserInfoOf[address(arg1)][address(arg2)].field_0:
        if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if -vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
    if (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / vaultUserInfoOf[address(arg1)][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]) + vaultInfoOf[address(arg1)].field_768:
        revert with 0, 'SafeMath: multiplication overflow'
    if vaultUserInfoOf[address(arg1)][address(arg2)].field_512 > (10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ((10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256 < vaultUserInfoOf[address(arg1)][address(arg2)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^12 * (block.timestamp * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) - (vaultInfoOf[address(arg1)].field_512 * sub_4762a152 * vaultInfoOf[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0] * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) + (vaultInfoOf[address(arg1)].field_768 * vaultUserInfoOf[address(arg1)][address(arg2)].field_0) / 10^12) - vaultUserInfoOf[address(arg1)][address(arg2)].field_512 + vaultUserInfoOf[address(arg1)][address(arg2)].field_256)
}



}
