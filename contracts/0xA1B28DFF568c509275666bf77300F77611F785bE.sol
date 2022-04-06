contract main {




// =====================  Runtime code  =====================


#
#  - stake()
#  - withdraw()
#
const lastRewardTimestamp = block.timestamp


uint256 stor0;
address owner;
address pendingOwner;
address startTokenAddress;
address factoryAddress;
address routerAddress;
address wethAddress;
address devAddress;
address pairAddress;
mapping of struct balanceOf;
mapping of uint8 stor10;
uint256 totalSupply;
uint256 rewardDuration;
uint256 rewardAllocation;
uint256 lastUpdateTimestamp;
uint256 rewardRate;
uint256 rewardPerTokenStored;
uint256 farmingStartTimestamp;
uint8 farmingStarted;
uint256 withdrawLimit;
uint256 sub_cb7e997c;
uint256 sub_90c423e7;

function lastUpdateTimestamp() {
    return lastUpdateTimestamp
}

function totalSupply() {
    return totalSupply
}

function devAddress() {
    return devAddress
}

function weth() {
    return wethAddress
}

function rewardAllocation() {
    return rewardAllocation
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function rewardRate() {
    return rewardRate
}

function sub_7ba808ec(?) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function accountInfos(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1].field_0, 
           balanceOf[arg1].field_256,
           balanceOf[arg1].field_512,
           balanceOf[arg1].field_768,
           balanceOf[arg1].field_1024
}

function owner() {
    return owner
}

function sub_90c423e7(?) {
    return sub_90c423e7
}

function farmingStarted() {
    return bool(farmingStarted)
}

function farmingStartTimestamp() {
    return farmingStartTimestamp
}

function pairAddress() {
    return pairAddress
}

function factory() {
    return factoryAddress
}

function sub_cb7e997c(?) {
    return sub_cb7e997c
}

function startToken() {
    return startTokenAddress
}

function rewardPerTokenStored() {
    return rewardPerTokenStored
}

function pendingOwner() {
    return pendingOwner
}

function rewardDuration() {
    return rewardDuration
}

function withdrawLimit() {
    return withdrawLimit
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function addDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor10[address(arg1)] = 1
}

function deleteDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor10[address(arg1)] = 0
}

function claimOwnership() {
    require msg.sender == pendingOwner
    owner = pendingOwner
    pendingOwner = 0
    emit LogOwnerShipTransferred(pendingOwner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pendingOwner = arg1
    emit LogOwnerShipTransferInitiated(owner, arg1);
}

function setBurnFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor10[msg.sender]:
            revert with 0, 'You are not dev.'
    sub_90c423e7 = arg1
}

function setRewardRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor10[msg.sender]:
            revert with 0, 'You are not dev.'
    rewardRate = arg1
}

function setWithdrawInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if not stor10[msg.sender]:
            revert with 0, 'You are not dev.'
    withdrawLimit = arg1
    sub_cb7e997c = arg2
}

function setFarmingStartTimestamp(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if not stor10[msg.sender]:
            revert with 0, 'You are not dev.'
    farmingStartTimestamp = arg1
    farmingStarted = uint8(arg2)
}

function burnedTokenAmount() {
    require ext_code.size(startTokenAddress)
    staticcall startTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args 57005
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function claimTaxDenominator() {
    if block.timestamp < farmingStartTimestamp + (168 * 24 * 3600):
        return 4
    if block.timestamp < farmingStartTimestamp + (336 * 24 * 3600):
        return 5
    if block.timestamp < farmingStartTimestamp + (720 * 24 * 3600):
        return 10
    if block.timestamp >= farmingStartTimestamp + (1080 * 24 * 3600):
        return 0
    return 20
}

function withdrawStart() {
    require msg.sender == owner
    require ext_code.size(startTokenAddress)
    staticcall startTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(startTokenAddress)
    call startTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args devAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function tokenPrice() {
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(startTokenAddress)
    staticcall startTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function rewardPerToken() {
    if 0 == totalSupply:
        return rewardPerTokenStored
    if lastUpdateTimestamp > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - lastUpdateTimestamp:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardPerTokenStored)
    if (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate) / block.timestamp - lastUpdateTimestamp != rewardRate:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate):
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardPerTokenStored)
    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored)
}

function rewardEarned(address arg1) {
    require calldata.size - 4 >= 32
    if 0 == totalSupply:
        if balanceOf[address(arg1)].field_1024 > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)].field_0:
            if balanceOf[address(arg1)].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return balanceOf[address(arg1)].field_768
        if (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != rewardPerTokenStored - balanceOf[address(arg1)].field_1024:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if balanceOf[address(arg1)].field_768 + ((rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (balanceOf[address(arg1)].field_768 + ((rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18))
    if lastUpdateTimestamp > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - lastUpdateTimestamp:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(arg1)].field_1024 > (0 / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)].field_0:
            if balanceOf[address(arg1)].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return balanceOf[address(arg1)].field_768
        if (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != (0 / totalSupply) + rewardPerTokenStored - balanceOf[address(arg1)].field_1024:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if balanceOf[address(arg1)].field_768 + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (balanceOf[address(arg1)].field_768 + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18))
    if (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate) / block.timestamp - lastUpdateTimestamp != rewardRate:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate):
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(arg1)].field_1024 > (0 / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)].field_0:
            if balanceOf[address(arg1)].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return balanceOf[address(arg1)].field_768
        if (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != (0 / totalSupply) + rewardPerTokenStored - balanceOf[address(arg1)].field_1024:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if balanceOf[address(arg1)].field_768 + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (balanceOf[address(arg1)].field_768 + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18))
    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if balanceOf[address(arg1)].field_1024 > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)].field_0:
        if balanceOf[address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return balanceOf[address(arg1)].field_768
    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored - balanceOf[address(arg1)].field_1024:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if balanceOf[address(arg1)].field_768 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (balanceOf[address(arg1)].field_768 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_1024 * balanceOf[address(arg1)].field_0) / 10^18))
}

function claim() {
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if farmingStartTimestamp > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65506c65617365207761697420756e74696c206661726d696e6720737461727465,
                    mem[197 len 31]
    if not farmingStarted:
        farmingStarted = 1
        lastUpdateTimestamp = block.timestamp
    if 0 == totalSupply:
        lastUpdateTimestamp = block.timestamp
        if msg.sender:
            if 0 == totalSupply:
                if balanceOf[address(msg.sender)].field_1024 > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)].field_0:
                    if balanceOf[address(msg.sender)].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if balanceOf[address(msg.sender)].field_768 + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)].field_768 += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18
            else:
                if lastUpdateTimestamp > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastUpdateTimestamp:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)].field_1024 > (0 / totalSupply) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)].field_0:
                        if balanceOf[address(msg.sender)].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if balanceOf[address(msg.sender)].field_768 + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)].field_768 += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18
                else:
                    if (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate) / block.timestamp - lastUpdateTimestamp != rewardRate:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate):
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)].field_1024 > (0 / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)].field_0:
                            if balanceOf[address(msg.sender)].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if balanceOf[address(msg.sender)].field_768 + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)].field_768 += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate) != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)].field_1024 > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)].field_0:
                            if balanceOf[address(msg.sender)].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored - balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if balanceOf[address(msg.sender)].field_768 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)].field_768 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18
            balanceOf[address(msg.sender)].field_1024 = rewardPerTokenStored
    else:
        if lastUpdateTimestamp > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTimestamp:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            rewardPerTokenStored += 0 / totalSupply
        else:
            if (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate) / block.timestamp - lastUpdateTimestamp != rewardRate:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate):
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
            else:
                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate) != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply
        lastUpdateTimestamp = block.timestamp
        if msg.sender:
            if 0 == totalSupply:
                if balanceOf[address(msg.sender)].field_1024 > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)].field_0:
                    if balanceOf[address(msg.sender)].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if balanceOf[address(msg.sender)].field_768 + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)].field_768 += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18
            else:
                if lastUpdateTimestamp > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastUpdateTimestamp:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)].field_1024 > (0 / totalSupply) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)].field_0:
                        if balanceOf[address(msg.sender)].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if balanceOf[address(msg.sender)].field_768 + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)].field_768 += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18
                else:
                    if (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate) / block.timestamp - lastUpdateTimestamp != rewardRate:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate):
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)].field_1024 > (0 / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)].field_0:
                            if balanceOf[address(msg.sender)].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if balanceOf[address(msg.sender)].field_768 + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)].field_768 += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTimestamp * rewardRate) != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)].field_1024 > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)].field_0:
                            if balanceOf[address(msg.sender)].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply) + rewardPerTokenStored - balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if balanceOf[address(msg.sender)].field_768 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)].field_768 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTimestamp * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_1024 * balanceOf[address(msg.sender)].field_0) / 10^18
            balanceOf[address(msg.sender)].field_1024 = rewardPerTokenStored
    if not balanceOf[msg.sender].field_768:
        revert with 0, 'There is no reward to claim'
    balanceOf[msg.sender].field_768 = 0
    if block.timestamp < farmingStartTimestamp + (168 * 24 * 3600):
        if balanceOf[msg.sender].field_770 > balanceOf[msg.sender].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(startTokenAddress)
        call startTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, balanceOf[msg.sender].field_768 - balanceOf[msg.sender].field_770
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if balanceOf[msg.sender].field_770:
            require ext_code.size(startTokenAddress)
            call startTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args 57005, balanceOf[msg.sender].field_770
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if block.timestamp < farmingStartTimestamp + (336 * 24 * 3600):
            if balanceOf[msg.sender].field_768 / 5 > balanceOf[msg.sender].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(startTokenAddress)
            call startTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, balanceOf[msg.sender].field_768 - (balanceOf[msg.sender].field_768 / 5)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if balanceOf[msg.sender].field_768 / 5:
                require ext_code.size(startTokenAddress)
                call startTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args 57005, balanceOf[msg.sender].field_768 / 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            if block.timestamp < farmingStartTimestamp + (720 * 24 * 3600):
                if balanceOf[msg.sender].field_768 / 10 > balanceOf[msg.sender].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(startTokenAddress)
                call startTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[msg.sender].field_768 - (balanceOf[msg.sender].field_768 / 10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if balanceOf[msg.sender].field_768 / 10:
                    require ext_code.size(startTokenAddress)
                    call startTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args 57005, balanceOf[msg.sender].field_768 / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if block.timestamp >= farmingStartTimestamp + (1080 * 24 * 3600):
                    if 0 > balanceOf[msg.sender].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(startTokenAddress)
                    call startTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[msg.sender].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if balanceOf[msg.sender].field_768 / 20 > balanceOf[msg.sender].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(startTokenAddress)
                    call startTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[msg.sender].field_768 - (balanceOf[msg.sender].field_768 / 20)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if balanceOf[msg.sender].field_768 / 20:
                        require ext_code.size(startTokenAddress)
                        call startTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args 57005, balanceOf[msg.sender].field_768 / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
    emit Claimed(balanceOf[msg.sender].field_768, msg.sender);
    stor0 = 1
}



}
