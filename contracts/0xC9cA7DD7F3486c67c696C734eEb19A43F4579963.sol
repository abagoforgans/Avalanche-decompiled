contract main {




// =====================  Runtime code  =====================


uint8 currentStatus; offset 160
uint128 stor0; offset 160
address owner;
mapping of struct userTradingStats;
uint256 startBlock;
uint256 endBlock;

function endBlock() payable {
    return endBlock
}

function userTradingStats(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(userTradingStats[arg1].field_0), bool(userTradingStats[arg1].field_8)
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function currentStatus() payable {
    require currentStatus < 5
    return currentStatus
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

function register() payable {
    if userTradingStats[address(msg.sender)].field_0:
        revert with 0, 'HAS_REGISTERED'
    require currentStatus <= 4
    if currentStatus:
        require currentStatus <= 4
        if currentStatus != 1:
            revert with 0, 'NOT_IN_REGISTRATION OR OPEN'
    userTradingStats[address(msg.sender)].field_0 = 1
    emit UserRegister(msg.sender);
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

function updateCompetitionStatus(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 4
    if not arg1:
        revert with 0, 'IN_REGISTRATION'
    require arg1 <= 4
    if arg1 == 1:
        require currentStatus <= 4
        if currentStatus:
            revert with 0, 'NOT_IN_REGISTRATION'
    else:
        require arg1 <= 4
        if arg1 == 2:
            require currentStatus <= 4
            if currentStatus != 1:
                revert with 0, 'NOT_OPEN'
        else:
            require arg1 <= 4
            require currentStatus <= 4
            if arg1 != 3:
                if currentStatus != 3:
                    revert with 0, 'NOT_CLAIMING'
            else:
                if currentStatus != 2:
                    revert with 0, 'NOT_CLOSED'
    require arg1 <= 4
    stor0 = Mask(96, 0, arg1)
    require currentStatus < 5
    emit NewCompetitionStatus(currentStatus);
}



}
