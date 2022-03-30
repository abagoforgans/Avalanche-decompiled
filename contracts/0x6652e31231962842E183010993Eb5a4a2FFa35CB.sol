contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address OSIRAddress;
address _burnPoolAddress;
uint256 teamTokens;
address stor4;
uint256 stor5;
address stor6;
address poolAddress;
uint256 stor7;
address teamAddress;
uint256 lockedLiquidityAmount;
uint256 timeTowithdrawTeamTokens;
uint256 timeToWithdrawPool;
uint256 incentivesTimeLocked;
bool stor13; offset 256
uint8 timelockActive;

function lockedLiquidityAmount() payable {
    return lockedLiquidityAmount
}

function pool() payable {
    return address(poolAddress)
}

function _burnPool() payable {
    return _burnPoolAddress
}

function TimelockActive() payable {
    return bool(timelockActive)
}

function team() payable {
    return teamAddress
}

function OSIR() payable {
    return OSIRAddress
}

function timeTowithdrawTeamTokens() payable {
    return timeTowithdrawTeamTokens
}

function teamTokens() payable {
    return teamTokens
}

function incentivesTimeLocked() payable {
    return incentivesTimeLocked
}

function timeToWithdrawPool() payable {
    return timeToWithdrawPool
}

function _fallback() payable {
    revert
}

function sendTokenToIncentivesPool() payable {
    if stor6 != msg.sender:
        revert with 0, 'You are not the owner'
    if block.timestamp < incentivesTimeLocked:
        revert with 0, 'Must be passed '
    timelockActive = 0
    stor13 = 0
    require ext_code.size(OSIRAddress)
    call OSIRAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor4, stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setOSIR(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        revert with 0, 'You are not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if OSIRAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe596f752063616e20736574207468652061646472657373206f6e6c79206f6e63,
                    mem[197 len 31]
    OSIRAddress = arg1
    stor0 = 1
}

function queueTokenToIncentivesPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor6 != msg.sender:
        revert with 0, 'You are not the owner'
    if block.timestamp < incentivesTimeLocked:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6554686572652063616e6e6f74206265206d756c7469706c652074696d656c6f636b656420496e63656e74697665,
                    mem[210 len 18]
    timelockActive = 0
    revert with 0, 'Timelock is still active'
}

function withdrawTeamTokens() payable {
    if stor6 != msg.sender:
        revert with 0, 'You are not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if block.timestamp < timeTowithdrawTeamTokens:
        revert with 0, 'Cannot withdraw yet'
    if 5 * 10^12 > teamTokens:
        revert with 0, 'Team Tokens have been claimed'
    teamTokens -= 5 * 10^12
    require ext_code.size(OSIRAddress)
    call OSIRAddress.0xa9059cbb with:
         gas gas_remaining wei
        args teamAddress, 5 * 10^12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + (240 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timeTowithdrawTeamTokens = block.timestamp + (240 * 24 * 3600)
    stor0 = 1
}

function withdrawPool() payable {
    if stor6 != msg.sender:
        revert with 0, 'You are not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(OSIRAddress)
    call OSIRAddress.pangolinPair() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    if block.timestamp < timeToWithdrawPool:
        revert with 0, 'Cannot withdraw yet'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args teamAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0 = 1
}



}
