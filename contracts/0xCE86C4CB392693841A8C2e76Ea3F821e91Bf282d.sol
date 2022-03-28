contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address OSIRAddress;
address _burnPoolAddress;
uint256 tokensBought;
uint8 stor4;
uint8 stor4; offset 8
uint8 stor4; offset 16
uint8 stor4; offset 24
uint8 stor4; offset 32
uint8 stor4; offset 40
uint16 stor4; offset 8
uint256 stor4; offset 8
uint256 teamTokens;
address stor6;
uint256 stor7;
address stor8;
address poolAddress;
uint256 stor9;
uint256 avaxSent;
uint256 lockedLiquidityAmount;
uint256 timeTowithdrawTeamTokens;
uint256 timeToWithdrawPool;
uint256 incentivesTimeLocked;
bool stor15; offset 256
uint8 stor15;
uint256 refundTime;
mapping of uint256 userAvaxSpenttInPresale;

function presaleStarted() {
    return bool(uint8(stor4.field_32))
}

function lockedLiquidityAmount() {
    return lockedLiquidityAmount
}

function pool() {
    return address(poolAddress)
}

function _burnPool() {
    return _burnPoolAddress
}

function teamClaimed() {
    return bool(uint8(stor4.field_8))
}

function moonMissionStarted() {
    return bool(uint8(stor4.field_16))
}

function isStopped() {
    return bool(uint8(stor4.field_0))
}

function userAvaxSpenttInPresale(address arg1) {
    require calldata.size - 4 >= 32
    return userAvaxSpenttInPresale[address(arg1)]
}

function tokensBought() {
    return tokensBought
}

function TimelockActive() {
    return bool(uint8(stor15.field_0))
}

function OSIR() {
    return OSIRAddress
}

function isRefundEnabled() {
    return bool(uint8(stor4.field_24))
}

function refundTime() {
    return refundTime
}

function timeTowithdrawTeamTokens() {
    return timeTowithdrawTeamTokens
}

function teamTokens() {
    return teamTokens
}

function avaxSent() {
    return avaxSent
}

function incentivesTimeLocked() {
    return incentivesTimeLocked
}

function timeToWithdrawPool() {
    return timeToWithdrawPool
}

function _fallback() payable {
    revert
}

function startPresale() {
    if stor8 != msg.sender:
        revert with 0, 'eYou are not the owner'
    uint8(stor4.field_32) = 1
}

function pausePresale() {
    if stor8 != msg.sender:
        revert with 0, 'eYou are not the owner'
    uint8(stor4.field_32) = 0
}

function SUPER_DUPER_EMERGENCY_ALLOW_REFUNDS_DO_NOT_FUCKING_CALL_IT_FOR_FUN() {
    if stor8 != msg.sender:
        revert with 0, 'eYou are not the owner'
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    uint8(stor4.field_0) = 1
    Mask(248, 0, stor4.field_8) = uint16(stor4.field_8)
    uint8(stor4.field_24) = 1
    stor0 = 1
}

function sendTokenToIncentivesPool() {
    if stor8 != msg.sender:
        revert with 0, 'eYou are not the owner'
    if block.timestamp < incentivesTimeLocked:
        revert with 0, 'Must be passed '
    uint8(stor15.field_0) = 0
    stor15.field_256 % 1 = 0
    require ext_code.size(OSIRAddress)
    call OSIRAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor6, stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function queueTokenToIncentivesPool(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor8 != msg.sender:
        revert with 0, 'eYou are not the owner'
    if block.timestamp < incentivesTimeLocked:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x5854686572652063616e6e6f74206265206d756c7469706c652074696d656c6f636b656420496e63656e74697665,
                    mem[210 len 18]
    uint8(stor15.field_0) = 0
    revert with 0, 'Timelock is still active'
}

function setOSIR(address arg1) {
    require calldata.size - 4 >= 32
    if stor8 != msg.sender:
        revert with 0, 'eYou are not the owner'
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if OSIRAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x58596f752063616e20736574207468652061646472657373206f6e6c79206f6e63,
                    mem[197 len 31]
    OSIRAddress = arg1
    stor0 = 1
}

function getRefund() {
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require tx.origin == msg.sender
    require not uint8(stor4.field_40)
    if not uint8(stor4.field_24):
        if block.timestamp < refundTime:
            revert with 0, 'Cannot refund'
    userAvaxSpenttInPresale[msg.sender] = 0
    call msg.sender with:
       value userAvaxSpenttInPresale[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function withdrawTeamTokens() {
    if stor8 != msg.sender:
        revert with 0, 'eYou are not the owner'
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require uint8(stor4.field_8)
    if block.timestamp < timeTowithdrawTeamTokens:
        revert with 0, 'Cannot withdraw yet'
    if 5 * 10^12 > teamTokens:
        revert with 0, 'Team Tokens have been claimed'
    teamTokens -= 5 * 10^12
    require ext_code.size(OSIRAddress)
    call OSIRAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xf8904ab5e0f38bbd0cbae2ff5935c0e693dd7012, 5 * 10^12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + (240 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timeTowithdrawTeamTokens = block.timestamp + (240 * 24 * 3600)
    stor0 = 1
}

function withdrawPool() {
    if stor8 != msg.sender:
        revert with 0, 'eYou are not the owner'
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require ext_code.size(OSIRAddress)
    call OSIRAddress.pangolinPair() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    require uint8(stor4.field_8)
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
        args 0xf8904ab5e0f38bbd0cbae2ff5935c0e693dd7012, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0 = 1
}

function buyTokens() payable {
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require tx.origin == msg.sender
    if bool(uint8(stor4.field_32)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7450726573616c65206973207061757365642c20646f206e6f742073656e6420415641,
                    mem[199 len 29]
    if not OSIRAddress:
        revert with 0, 'Main contract address not set'
    if uint8(stor4.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x50726573616c652073746f7070656420627920636f6e74726163742c20646f206e6f742073656e642041564100,
                    mem[209 len 19]
    if msg.value < 5 * 10^18:
        revert with 0, 'You cannot send less than 5 AVAX'
    if msg.value > 200 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x596f752063616e6e6f742073656e64206d6f7265207468616e203230302041564100,
                    mem[198 len 30]
    if avaxSent >= 20000 * 10^18:
        revert with 0, 'Hard cap reached'
    if avaxSent + msg.value < msg.value:
        revert with 0, 'SafeMath: addition overflow'
    if avaxSent + msg.value > 20000 * 10^18:
        revert with 0, 'Hardcap will be reached'
    if msg.value + userAvaxSpenttInPresale[msg.sender] < userAvaxSpenttInPresale[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + userAvaxSpenttInPresale[msg.sender] > 200 * 10^18:
        revert with 0, 'You cannot buy more'
    if not msg.value:
        require ext_code.size(OSIRAddress)
        staticcall OSIRAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[261 len 31]
        if msg.value + userAvaxSpenttInPresale[msg.sender] < userAvaxSpenttInPresale[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        userAvaxSpenttInPresale[msg.sender] += msg.value
        if tokensBought < tokensBought:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value + avaxSent < avaxSent:
            revert with 0, 'SafeMath: addition overflow'
        avaxSent += msg.value
        require ext_code.size(OSIRAddress)
        call OSIRAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if 17 * msg.value / msg.value != 17:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x58536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(OSIRAddress)
        staticcall OSIRAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 17 * msg.value / 10^9:
            revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[261 len 31]
        if msg.value + userAvaxSpenttInPresale[msg.sender] < userAvaxSpenttInPresale[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        userAvaxSpenttInPresale[msg.sender] += msg.value
        if (17 * msg.value / 10^9) + tokensBought < tokensBought:
            revert with 0, 'SafeMath: addition overflow'
        tokensBought += 17 * msg.value / 10^9
        if msg.value + avaxSent < avaxSent:
            revert with 0, 'SafeMath: addition overflow'
        avaxSent += msg.value
        require ext_code.size(OSIRAddress)
        call OSIRAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 17 * msg.value / 10^9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0 = 1
}

function allocateAndAddLiquidity() {
    if stor8 != msg.sender:
        revert with 0, 'eYou are not the owner'
    require not uint8(stor4.field_8)
    if not eth.balance(this.address):
        if not eth.balance(this.address):
            uint8(stor4.field_8) = 1
            call 0xf8904ab5e0f38bbd0cbae2ff5935c0e693dd7012 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0xd69e70cedb06634130ed51a7b1942b7a924f7f6e with:
                 gas 2300 wei
        else:
            if 10 * eth.balance(this.address) / eth.balance(this.address) != 10:
                revert with 0, 32, 33, 0x58536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            uint8(stor4.field_8) = 1
            call 0xf8904ab5e0f38bbd0cbae2ff5935c0e693dd7012 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0xd69e70cedb06634130ed51a7b1942b7a924f7f6e with:
               value 10 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
    else:
        if 15 * eth.balance(this.address) / eth.balance(this.address) != 15:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x58536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not eth.balance(this.address):
            uint8(stor4.field_8) = 1
            call 0xf8904ab5e0f38bbd0cbae2ff5935c0e693dd7012 with:
               value 15 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0xd69e70cedb06634130ed51a7b1942b7a924f7f6e with:
                 gas 2300 wei
        else:
            if 10 * eth.balance(this.address) / eth.balance(this.address) != 10:
                revert with 0, 32, 33, 0x58536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            uint8(stor4.field_8) = 1
            call 0xf8904ab5e0f38bbd0cbae2ff5935c0e693dd7012 with:
               value 15 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0xd69e70cedb06634130ed51a7b1942b7a924f7f6e with:
               value 10 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
    if not eth.balance(this.address):
        require ext_code.size(OSIRAddress)
        staticcall OSIRAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if teamTokens > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^14 > ext_call.return_data[0] - teamTokens:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(OSIRAddress)
        call OSIRAddress.unPauseTransferForever() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(OSIRAddress)
        call OSIRAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args OSIRAddress, 0, 0, eth.balance(this.address), this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] + -teamTokens - 10^14:
            require ext_code.size(OSIRAddress)
            call OSIRAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args _burnPoolAddress, ext_call.return_data[0] + -teamTokens - 10^14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if 14 * eth.balance(this.address) / eth.balance(this.address) != 14:
            revert with 0, 32, 33, 0x58536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(OSIRAddress)
        staticcall OSIRAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 14 * eth.balance(this.address) / 10^9 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if teamTokens > ext_call.return_data[0] - (14 * eth.balance(this.address) / 10^9):
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^14 > ext_call.return_data[0] - (14 * eth.balance(this.address) / 10^9) - teamTokens:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(OSIRAddress)
        call OSIRAddress.unPauseTransferForever() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(OSIRAddress)
        call OSIRAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 14 * eth.balance(this.address) / 10^9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args OSIRAddress, 14 * eth.balance(this.address) / 10^9, 14 * eth.balance(this.address) / 10^9, eth.balance(this.address), this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] + -(14 * eth.balance(this.address) / 10^9) + -teamTokens - 10^14:
            require ext_code.size(OSIRAddress)
            call OSIRAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args _burnPoolAddress, ext_call.return_data[0] + -(14 * eth.balance(this.address) / 10^9) + -teamTokens - 10^14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    uint8(stor4.field_40) = 1
    if True and not uint8(stor4.field_0):
        uint8(stor4.field_0) = 1
}



}
